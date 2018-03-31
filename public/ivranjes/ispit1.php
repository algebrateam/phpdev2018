<?Php
include 'data.php';
print_r($data);

function date_trans($datum){
    $tmp = explode('-', $datum);
    print_r($tmp);
    return $tmp[2].'.'.$tmp[1].'.'.$tmp[0];
}
//return $datum;



   
        echo '<table';
foreach ($data as $key =>$value) {

    echo 'tr'
    .'<td>'.$value[Ime].'</td'
    .'<td>'.$value[Prezime].'</td'
            .'<td>'
            .'<select>';
    if ($value('plaćeno')=='Da')
    {
        echo '<option value="Da" Selected>Da</option>'
        .'<option value="Ne" Selected>Ne</option>';
        
    }else{
          
}
echo '<table>';

}















