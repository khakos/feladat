<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\File;
use Illuminate\Support\Facades\DB;
use Exception;

class FileUpload extends Controller
{
  public function createForm(){
    return view('file-upload');
  }
  public function fileUpload(Request $req){
        $req->validate([
        'file' => 'required|mimes:xml|max:2048'
        ]);
        $fileModel = new File;
        if($req->file()) {
            $fileName = time().'_'.$req->file->getClientOriginalName();
            $filePath = $req->file('file')->storeAs('uploads', $fileName, 'public');
            $fileModel->name = time().'_'.$req->file->getClientOriginalName();
            $fileModel->file_path = '/storage/' . $filePath;
            $fileModel->save();

            // open file
            $affectedRow = 0;
            $affectedName = array();
            $errorName = array();
            
            // Load xml file else check connection
            $xml = simplexml_load_file('../storage/app/public/' . $filePath)
                or die("Error: Cannot create object");
             
            // Assign values
            foreach ($xml->children() as $row) {
                $teljesnev = $row->teljesnev;
                $email = $row->emailcim;
                $adoazonositojel = $row->adoazonositojel;
                $azonosito = $row->azonosito;
                $egyeb_id = $row->egyebid;
                $belepes = $row->belepes;
                $kilepes = $row->kilepes;
                 
                $insert_person_str = "";
                $error_name_str = "";

                // insert into persons table
                try {
                    /* Write Your Code Here */                  
                    $result = DB::insert("INSERT INTO `persons`(`teljesnev`, `email`, `adoazonositojel`, `azonosito`, `egyeb_id`, `belepes`, `kilepes`) 
                    VALUES (?,?,?,?,?,?,?);", [$teljesnev, $email, $adoazonositojel, $azonosito, $egyeb_id, $belepes, $kilepes]);
                                          
                  } catch (Exception $e) {
                      //return "SQL Hiba: ".$e->getMessage();                  

                    DB::insert("INSERT INTO `logs`(`datum`, `esemeny`) VALUES 
                      (?,?);", [date("Y-m-d H:i:s"), "Sikertelen XML import: ".$teljesnev]);
  
                    array_push($errorName, $teljesnev);

                  }

                // Log                 
                if (! empty($result)) {

                    // insert into logs table
                    DB::insert("INSERT INTO `logs`(`datum`, `esemeny`) VALUES 
                    (?,?);", [date("Y-m-d H:i:s"), "Sikeres XML import: ".$teljesnev]);

                    array_push($affectedName, $teljesnev);
                    $affectedRow ++;
                } else {
                    // insert into logs table
                 /*
                    DB::insert("INSERT INTO `logs`(`datum`, `esemeny`) VALUES 
                    (?,?);", [date("Y-m-d H:i:s"), "Sikertelen XML import: ".$teljesnev]);
                    */
                    // array_push($errorName, $teljesnev);
                }
            }
            
            // Display the screeen the inserted names
            // Sikeres
            for($i=0;$i < sizeof($affectedName);$i++){
                $insert_person_str .= $affectedName[$i].", ";
            }
            if(strlen(trim($insert_person_str)) > 0){
                $insert_person_str = " Sikeres felvitel: ".$insert_person_str;
            }
            $insert_person_str = substr($insert_person_str,0,-2);

            // Sikertelen
            for($i=0;$i < sizeof($errorName);$i++){
                $error_name_str .= $errorName[$i].", ";
            }
            if(strlen(trim($error_name_str)) > 0){
                $error_name_str = " Sikertelen felvitel: ".$error_name_str;
            }
            $error_name_str = substr($error_name_str,0,-2);

            return back()
            ->with('success','XML file feltöltve.  '.$insert_person_str.$error_name_str)
            ->with('file', $fileName);
     
            
     
     
        }
   }
}