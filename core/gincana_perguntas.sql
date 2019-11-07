CREATE DATABASE  IF NOT EXISTS `gincana` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gincana`;
-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: gincana
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `perguntas`
--

DROP TABLE IF EXISTS `perguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perguntas` (
  `id_pergunta` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` text NOT NULL,
  PRIMARY KEY (`id_pergunta`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perguntas`
--

LOCK TABLES `perguntas` WRITE;
/*!40000 ALTER TABLE `perguntas` DISABLE KEYS */;
INSERT INTO `perguntas` VALUES (1,'Sabemos que produto é toda mercadoria colocada à venda no comércio. Logo, identifique qual das alternativas abaixo é correta:'),
(2,'Quais os tipos de garantia previstas no CDC?'),
(3,'Maria visita o site “Minha Casa” e se sente atraída para compra de um DVD. Três dias após a solicitação o produto chega a sua casa. Maria pensa melhor e vê que aquele preço não vai caber no seu orçamento. Pergunta-se:'),
(4,'Maria Chulapa foi a padaria comprar pão, chegando lá Sr. Quinca, dono da pararia condicionou a venda do pão apenas se ele também levasse o leite que estava numa promoção. Qual é o nome da prática que condiciona o fornecimento de um produto ou serviço ao fornecimento de outro produto ou serviço?'),
(5,'Qual o número da Lei que criou o Código de Proteção e Defesa do Consumidor -CDC?'),
(6,'Acerca da proteção contra publicidade enganosa e abusiva, analise as assertivas abaixo e resposta qual delas esta correta:'),
(7,'O veículo usado, sendo vendido por uma concessionária, tem garantia? Em caso afirmativo, qual o prazo?'),
(8,'No Natal Renata comprou uma camiseta lilás para presentear seu namorado, porém ao chegar em casa arrependeu-se por ter escolhida a cor lilás. Pergunta-se: Renata pode desistir de uma compra realizada na loja simplesmente por causa da cor?'),
(9,'Filomena comprou um estojo de maquiagem na Loja FIK LINDA, não sendo identificado o fabricante ou produtor, e ao chegar em casa e utilizar o produto teve um forte processo alérgico. Pergunta-se, quem é o responsável pelo produto?'),
(10,'A Escola “você pode” é a vencedora da 9a Gincana Paraibana de Educação para o Consumo e como prêmio recebe um computador do PROCON/PB. Após vinte dias de instalado o computador apresenta um problema. Como deve a escola proceder para solucionar o problema:'),
(11,'Quais os elementos para que uma relação de consumo seja formanda?'),
(12,'Matheus foi ao supermercado fazer a feira da semana, quando verificou que um produto estava fora da data de validade, como ele deverá agir?'),
(13,'Qual o nome do “Direito” que possibilita que o consumidor que realizou a compra pela internet ou fora do estabelecimento comercial, devolva o produto para o fornecedor.'),
(14,'São exemplos de produtos não duráveis?'),
(15,'Se o produto for durável o prazo para reclamar dos vícios aparentes é de:'),
(16,'Como deve ser as informações dos produtos expostos a comercialização:'),
(17,'Qual o ano que foi criado o Código de Defesa do Consumidor?'),
(18,'João Pedro trabalha em uma empresa que fornece comida, o seu patrão não gostando mais do trabalho de Lucas, resolve demiti-lo. Lucas pode procurar o PROCON para ajudá-lo?'),
(19,'Maricota estava andando pelo centro da cidade, quando foi surpreendida por uma moça que entregava panfletos que diziam: CELULARES NO VALOR DE R$:20,00. Muito feliz, se direcionou até a loja, onde um vendedor afirmou que os panfletos estavam errados, e que o celular custava realmente R$: 200,00. O que Maricota pode fazer diante esta situação?'),
(20,'Rebeca ao comer uma sobremesa do restaurante “GULA PARAIBA”, teve uma forte reação alérgica, pois não foi avisada de um ingrediente que estava na sobremesa, quem deverá ser responsabilizado pela falta de informação a consumidora?');
/*!40000 ALTER TABLE `perguntas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-29 18:35:26
