<?php
class Tops extends Database{
    public function create_tops(){
        $t = 1; // type
        $p = 1; // period
        $interval = "";
        $comp = 0;
        for($t = 1; $t <= 3; $t++){ // Schimbarea tipului de actiune in interogarea SQL     
            for($p = 1; $p <= 3; $p++){ // Schimbarea intervalului de timp in interogarea SQL
                switch ($p) {
                    case 1: $interval = "7 DAY"; break;
                    case 2: $interval = "1 MONTH"; break;
                    case 3: $interval = "1 YEAR"; break;
                }
                $sql = "SELECT prod, value, time, 
                        SUM(value) AS value 
                        FROM actions 
                        WHERE type = '$t'
                        AND time >= (NOW() - INTERVAL $interval)
                        GROUP BY prod
                        ORDER BY value DESC, prod
                        LIMIT 10";
                $result = $this->connect()->query($sql);
                if($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()){
                        $produs = $row['prod'];
                        $value  = $row['value'];
                        // * Cautarea produsului intr-un top similar
                        $sql_q = "SELECT * FROM tops WHERE period = '$p' 
                                  AND type = '$t' AND prod = '$produs'";              
                        $result_q = $this->connect()->query($sql_q);
                        // * Daca se gaseste un top similar, se compara valoarea
                        if($result_q->num_rows > 0){
                            while($row_q = $result_q->fetch_assoc()){
                                $value_4_comp = $row_q['value'];
                                $id = $row_q['id'];
                            }
                            if($value == $value_4_comp){
                                $comp = 1;
                            }elseif($value > $value_4_comp){
                                $comp = 2;
                            }elseif($value < $value_4_comp){
                                $comp = 3; }
                            // * Se actualizeaza topul
                            $sql_u = "UPDATE tops SET value = '$value', comp = '$comp'
                                      WHERE id = '$id'";
                            $result_u = $this->connect()->query($sql_u);
                            if(!$result_u) {
                                echo "Topul nu a actualizat.";
                            }
                        }else{ 
                            // * Daca nu exista un top similar se creaza unul                         
                            $sql_i = "INSERT INTO tops(type, period, value, comp, prod)
                                    VALUES ('$t', '$p', '$value', '$comp', '$produs')";
                            $result_i = $this->connect()->query($sql_i);
                            if(!$result_i) {
                                echo "Topul nu a fost adaugat.";
                            }
                        }
                    }
                }else{
                    echo "Nu exista date in tabelul de actiuni";
                }      
            }
        }
    }

    public function show_top($type, $period){
        $i = 0;
        $c = 0;
        if($type == 'vanzari'){
            $type = 1; // 1 = vanzari, 2 = vizite, 3 = like-uri
        }elseif($type == 'vizite'){
            $type = 2; // 1 = vanzari, 2 = vizite, 3 = like-uri
        }elseif($type == 'like'){
            $type = 3; // 1 = vanzari, 2 = vizite, 3 = like-uri
        }

        if($period == 'saptamanal'){
            $period = 1; // 1 = saptamanal, 2 = lunar, 3 = anual
        }elseif($period == 'lunar'){
            $period = 2; // 1 = saptamanal, 2 = lunar, 3 = anual
        }elseif($period == 'anual'){
            $period = 3; // 1 = saptamanal, 2 = lunar, 3 = anual
        }

        $sql1 = "SELECT * FROM tops WHERE period = '$period' AND type = '$type'
                 ORDER BY value DESC";             
        $result1 = $this->connect()->query($sql1);
        $num_rows = $result1->num_rows;
        if($num_rows > 0){
            while($row = $result1->fetch_assoc()){
                $i++;
                $comp = $row['comp'];
                switch ($comp) {
                    case 1: $c = "in stagnare"; break;
                    case 2: $c = "in crestere"; break;
                    case 3: $c = "in scadere"; break;
                }
                echo $i . '. Produsul: #' . $row['prod'] . ' - ' . $c . '<br>';
            }
        }else{
            echo "Nu exista date in top";
        }
    }
}


$object = new Tops();
//$object->create_tops();

// param 1 = vanzari, vizite, like
// param 2 = saptamanal, lunar, anual
$object->show_top('vanzari', 'saptamanal');

?>