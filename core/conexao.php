<?php

class ConexaoDb
{

    private static $SQL = "mysql:host=localhost;dbname=gincana";
    private static $USER = "root";
    private static $PWD = "D3vpr0c0n@";

    private static $conexao = null;

    public function __construct()
    {
    }

    public static function getInstanceConexao()
    {
        if (empty(self::$conexao)) {
            try {
                self::$conexao = new PDO(self::$SQL, self::$USER, self::$PWD);
                self::$conexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            } catch (PDOexception $e) {
                echo $e->getmessage();
            }
        }
        return self::$conexao;
    }
}
