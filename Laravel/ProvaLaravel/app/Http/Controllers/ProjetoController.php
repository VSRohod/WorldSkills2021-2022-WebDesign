<?php

namespace App\Http\Controllers;

// use illuminate\Http\Request;

class ProjetoController extends Controller{
    public function ListarArray($request){
        $series = [
            'Stranger Things',
            'Lost',
            'Hawkeye'
        ];

        $html = "<ul>";
            foreach ($series as $serie){
                $html .= "<li>$serie</li>";
            }
            $html .= "</ul>";
        return $html;
    }
}
