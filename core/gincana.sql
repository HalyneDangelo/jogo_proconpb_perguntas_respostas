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
-- Table structure for table `equipe`
--

DROP TABLE IF EXISTS `equipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipe` (
  `id_equipe` int(11) NOT NULL AUTO_INCREMENT,
  `nome_equipe` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id_equipe`),
  UNIQUE KEY `nome_equipe_UNIQUE` (`nome_equipe`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipe`
--

LOCK TABLES `equipe` WRITE;
/*!40000 ALTER TABLE `equipe` DISABLE KEYS */;
INSERT INTO `equipe` VALUES (1,'Equipe Laranja'),(2,'Equipe Amarela'),(3,'Equipe Verde'),(4,'Equipe Vermelha'),(5,'Equipe Azul');
/*!40000 ALTER TABLE `equipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gabarito`
--

DROP TABLE IF EXISTS `gabarito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gabarito` (
  `id_gabarito` int(11) NOT NULL AUTO_INCREMENT,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `correta` char(1) NOT NULL,
  PRIMARY KEY (`id_gabarito`),
  CONSTRAINT `fk_gabarito_1` FOREIGN KEY (`id_gabarito`) REFERENCES `perguntas` (`id_pergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gabarito`
--

LOCK TABLES `gabarito` WRITE;
/*!40000 ALTER TABLE `gabarito` DISABLE KEYS */;
INSERT INTO `gabarito` VALUES (1,'Produto durÃ¡vel - Ã© aquele que nÃ£o desaparece com o uso. Por exemplo, um eletrodomÃ©stico, um carro, uma casa, etc.','Produto nÃ£o-durÃ¡vel - Ã© aquele que nÃ£o acaba, logo apÃ³s o uso, a exemplo de: alimentos, sabonete,
pasta de dentes, etc.','ServiÃ§o Ã© qualquer atividade fornecida, sem a necessidade de existir qualquer tipo remuneraÃ§Ã£o.','Para existir uma relaÃ§Ã£o de consumo, basta existir o fornecedor.','a'),
(2,'Garantia Legal e Garantia contratual;','Garantia Legal, Garantia Contratual e Garantia Estendida.','Apenas a Garantia Contratual.','Apenas a Garantia Legal.','a'),
(3,'Pode Maria desistir da compra pagando apenas o reembolso postal.','Maria nÃ£o pode desistir da compra, visto que fez a escolha do produto por e espontÃ¢nea vontade,
tendo que arcar com o ato impensado.','Pode Maria desistir em atÃ© sete dias, a contar do recebimento do produto, sem o pagamento inclusive do reembolso postal.','Pode Maria desistir em atÃ© sete dias pagando apenas o reembolso.','c'),
(4,'Venda Cumulativa;','Venda Promocional;','Venda Casada;','Contrato de AdesÃ£o.','c'),
(5,'8.078/1990','11.652/2016','2191/2017','18511/2016','a'),
(6,'O consumidor nÃ£o tem o direito de exigir o cumprimento de qualquer anÃºncio.','Se o que foi prometido no anÃºncio nÃ£o for cumprido, o consumidor tem direito de cancelar o contrato e receber a devoluÃ§Ã£o da quantia paga corrigida monetariamente atÃ© a data do reembolso.','As publicidades enganosas e abusivas nÃ£o sÃ£o proibidas pelo CÃ³digo de Defesa do Consumidor.','SÃ³ existe a publicidade enganosa no CDC.','b'),
(7,'SIM, no prazo de 30 (trinta) dias;','NAO, sendo o veÃ­culo usado, nÃ£o tem garantia;','SIM, no prazo de 03 (trÃªs) meses;','SIM, no prazo de 01 (um) ano.','c'),
(8,'Depende de quanto tempo faz que efetuou a compra;','Tem 07 (sete) dias para fazer uso de seu direito;','NÃ£o, pois adquiriu o produto na loja fÃ­sica e sÃ³ poderia devolver se tivesse vÃ­cio;','Sim, pois Ã© o arrependimento Ã© direito do consumidor.','c'),
(9,'NinguÃ©m, pois o produto nÃ£o tem identificaÃ§Ã£o.','O Estado, pois deixou o produto circular.','O comerciante, pois vendeu um produto sem identificaÃ§Ã£o.','Deve se fazer uma investigaÃ§Ã£o pela polÃ­cia atÃ© identificar o responsÃ¡vel.','c'),
(10,'Guilherme, pois jÃ¡ Ã© maior de idade.','Mariana, pois o produto estÃ¡ em seu nome.','NinguÃ©m, pois a assistÃªncia tÃ©cnica pode se negar a fazer o reparo do produto sem justificativa.','Nenhuma das respostas estÃ£o corretas.','b'),
(11,'Consumidor, fornecedor e produto ou serviÃ§o.','Fornecedor e consumidor.','Apenas que tenha a figura do consumidor.','Dinheiro, consumidor e fornecedor.','a'),
(12,'Fingir que nÃ£o viu que o produto estÃ¡ fora da data da validade.','Realizar a compra porque poucos dias nÃ£o faz mal para saÃºde.','Informar ao gerente, e solicitar o recebimento de dois produtos do mesmo mas em perfeitas condiÃ§Ãµes de uso, de forma gratuita.','Chamar a polÃ­cia.','c'),
(13,'Direito de Arrependimento.','Direito de se desculpar.','Direito de resistÃªncia.','Direito de realizar a troca quando nÃ£o gostar do produto mais.','a'),
(14,'Casaco','Barco','Sorvete','Carteira','c'),
(15,'15 dias;','10 dias;','90 dias;','30 dias.','c'),
(16,'Em letras pequenas, para nÃ£o prejudicar a embalagem;','Com o mÃ­nimo de informaÃ§Ãµes, jÃ¡ que o importante estÃ¡ no produto, nÃ£o na embalagem;','Pode informar qualquer coisa, pois ao utilizar o produto o consumidor nÃ£o terÃ¡ condiÃ§Ãµes de verificar se este cumpre o que informa;','InformaÃ§Ãµes claras, precisas e de fÃ¡cil visualizaÃ§Ã£o sobre suas caracterÃ­sticas. ','d'),
(17,'1984','1990','1992','1980','b'),
(18,'Sim, pois o PROCON tem competÃªncia para ajudÃ¡-lo.','Sim, se Lucas procurar o PROCON no prazo de 30 dias.','NÃ£o, porque a relaÃ§Ã£o entre Lucas e o seu patrÃ£o, nÃ£o Ã© relaÃ§Ã£o de consumo, Ã© relaÃ§Ã£o de trabalho.','NÃ£o, porque nÃ£o existiram bens e serviÃ§os na relaÃ§Ã£o entre Lucas e o seu patrÃ£o.','c'),
(19,'NÃ£o pode fazer nada porque o valor do celular Ã© de R$: 200,00.','Pode exigir que a empresa cumpra a oferta, vendendo o celular por R$: 20,00.','Pode fazer um acordo com a empresa para vender o celular pela metade do preÃ§o.','Joana precisarÃ¡ aguardar outros consumidores para que a empresa venda o celular pelo valor do panfleto.','b'),
(20,'NinguÃ©m, pois nÃ£o Ã© preciso fornecer esse tipo de informaÃ§Ã£o.','A consumidora, que possui alergia a qualquer tipo de comida.','O comerciante, uma vez que nÃ£o disponibilizou os ingredientes de forma clara para a consumidora, pois se soubesse que continha o ingrediente X, nÃ£o teria comido a sobremesa.','Deve se fazer uma investigaÃ§Ã£o pela polÃ­cia atÃ© identificar o responsÃ¡vel.','c');

/*!40000 ALTER TABLE `gabarito` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perguntas`
--

LOCK TABLES `perguntas` WRITE;
/*!40000 ALTER TABLE `perguntas` DISABLE KEYS */;
INSERT INTO `perguntas` VALUES (1,'Sabemos que produto Ã© toda mercadoria colocada Ã  venda no comÃ©rcio. Logo, identifique qual das alternativas abaixo Ã© correta:'),
(2,'Quais os tipos de garantia previstas no CDC?'),
(3,'Maria visita o site "Minha Casa" e se sente atraÃ­da para compra de um DVD. TrÃªs dias apÃ³s a solicitaÃ§Ã£o o produto chega a sua casa. Maria pensa melhor e vÃª que aquele preÃ§o nÃ£o vai caber no seu orÃ§amento. Pergunta-se:'),
(4,'Maria Chulapa foi a padaria comprar pÃ£o, chegando lÃ¡ Sr. Quinca, dono da pararia condicionou a venda do pÃ£o apenas se ele tambÃ©m levasse o leite que estava numa promoÃ§Ã£o. Qual Ã© o nome da prÃ¡tica que condiciona o fornecimento de um produto ou serviÃ§o ao fornecimento de outro produto ou serviÃ§o?'),
(5,'Qual o nÃºmero da Lei que criou o CÃ³digo de ProteÃ§Ã£o e Defesa do Consumidor -CDC?'),
(6,'Acerca da proteÃ§Ã£o contra publicidade enganosa e abusiva, analise as assertivas abaixo e resposta qual delas esta correta:'),
(7,'O veÃ­culo usado, sendo vendido por uma concessionÃ¡ria, tem garantia? Em caso afirmativo, qual o prazo?'),
(8,'No Natal Renata comprou uma camiseta lilÃ¡s, em uma loja fÃ­sica, para presentear seu namorado, porÃ©m ao chegar em casa arrependeu-se por ter escolhido a cor lilÃ¡s. Pergunta-se: Renata pode desistir de uma compra realizada na loja simplesmente por causa da cor?'),
(9,'Filomena comprou um estojo de maquiagem na Loja FIK LINDA, nÃ£o sendo identificado o fabricante ou produtor, e ao chegar em casa e utilizar o produto teve um forte processo alÃ©rgico. Pergunta-se, quem Ã© o responsÃ¡vel pelo produto?'),
(10,'Mariana comprou em seu nome um notebook de presente de aniversÃ¡rio para seu filho Guilherme que fez 19 anos. Um mÃªs apÃ³s a compra, o produto apresentou vÃ­cio e Guilherme ao levar para assistÃªncia tÃ©cnica teve o conserto negado sem justificativa. Nessa situaÃ§Ã£o, quem poderÃ¡ acionar o PROCON para solucionar essa demanda?'),
(11,'Quais os elementos para que uma relaÃ§Ã£o de consumo seja formada?'),
(12,'Matheus foi ao supermercado fazer a feira da semana, quando verificou que um produto estava fora da data de validade, como ele deverÃ¡ agir?'),
(13,'Qual o nome do "Direito" que possibilita que o consumidor que realizou a compra pela internet ou fora do estabelecimento comercial, devolva o produto para o fornecedor.'),
(14,'SÃ£o exemplos de produtos nÃ£o durÃ¡veis?'),
(15,'Se o produto for durÃ¡vel o prazo para reclamar dos vÃ­cios aparentes Ã© de:'),
(16,'Como deve ser as informaÃ§Ãµes dos produtos expostos a comercializaÃ§Ã£o:'),
(17,'Qual o ano que foi criado o CÃ³digo de Defesa do Consumidor?'),
(18,'Lucas trabalha em uma empresa que fornece comida, o seu patrÃ£o nÃ£o gostando mais do trabalho de Lucas, resolve demiti-lo. Lucas pode procurar o PROCON para ajudÃ¡-lo?'),
(19,'Maricota estava andando pelo centro da cidade, quando foi surpreendida por uma moÃ§a que entregava panfletos que diziam: CELULARES NO VALOR DE R$:20,00. Muito feliz, se direcionou atÃ© a loja, onde um vendedor afirmou que os panfletos estavam errados, e que o celular custava realmente R$: 200,00. O que Maricota pode fazer diante esta situaÃ§Ã£o?'),
(20,'Rebeca ao comer uma sobremesa do restaurante "GULA PARAIBA", teve uma forte reaÃ§Ã£o alÃ©rgica, pois nÃ£o foi avisada e nÃ£o havia no cardÃ¡pio quais ingredientes que foram utilizados na confecÃ§Ã£o da sobremesa. Quem deverÃ¡ ser responsabilizado pela falta de informaÃ§Ã£o a consumidora?');

/*!40000 ALTER TABLE `perguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respostas`
--

DROP TABLE IF EXISTS `respostas`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `respostas` (
  `resposta` char(1) NOT NULL,
  `equipe_id_equipe` int(11) NOT NULL,
  `perguntas_id_pergunta` int(11) NOT NULL,
  `ponto` int(11) NOT NULL,
  KEY `fk_respostas_1_idx` (`equipe_id_equipe`),
  KEY `fk_respostas_2_idx` (`perguntas_id_pergunta`),
  CONSTRAINT `fk_respostas_1` FOREIGN KEY (`equipe_id_equipe`) REFERENCES `equipe` (`id_equipe`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_respostas_2` FOREIGN KEY (`perguntas_id_pergunta`) REFERENCES `perguntas` (`id_pergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respostas`
--

-- LOCK TABLES `respostas` WRITE;
/*!40000 ALTER TABLE `respostas` DISABLE KEYS */;
-- INSERT INTO `respostas` VALUES ('b',1,1,0),('c',3,1,1),('b',1,2,1);
/*!40000 ALTER TABLE `respostas` ENABLE KEYS */;
-- UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-29 18:37:46
