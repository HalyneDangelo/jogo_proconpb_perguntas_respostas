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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gabarito`
--

LOCK TABLES `gabarito` WRITE;
/*!40000 ALTER TABLE `gabarito` DISABLE KEYS */;
INSERT INTO `gabarito` VALUES (1,'Produto durável – é aquele que não desaparece com o uso. Por exemplo, um eletrodoméstico, um
carro, uma casa, etc.','Produto não-durável – é aquele que não acaba, logo após o uso, a exemplo de: alimentos, sabonete,
pasta de dentes, etc.','Serviço é qualquer atividade fornecida, sem a necessidade de existir qualquer tipo remuneração.','Para existir uma relação de consumo, basta existir o fornecedor.','a'),
(2,'Garantia Legal e Garantia contratual;','Garantia Legal, Garantia Contratual e Garantia Estendida.','Apenas a Garantia Contratual.','Apenas a Garantia Legal.','a'),
(3,'Pode Maria desistir da compra pagando apenas o reembolso postal.','Maria não pode desistir da compra, visto que fez a escolha do produto por e espontânea vontade,
tendo que arcar com o ato impensado.','Pode Maria desistir em até sete dias sem o pagamento inclusive do reembolso postal.','Pode Maria desistir em até sete dias pagando apenas o reembolso.','c'),
(4,'Venda Cumulativa;','Venda Promocional;','Venda Casada;','Contrato de Adesão.','c'),
(5,'8.078/1990','11.652/2016','2191/2017','18511/2016','a'),
(6,'O consumidor não tem o direito de exigir o cumprimento de qualquer anúncio.','Se o que foi prometido no anúncio não for cumprido, o consumidor tem direito de cancelar o contrato e receber a devolução da quantia paga.','As publicidades enganosas e abusivas não são proibidas pelo Código de Defesa do Consumidor.','Só existe a publicidade enganosa no CDC.','b'),
(7,'SIM, no prazo de 30 (trinta) dias;','NÃO, sendo o veículo usado, não tem garantia;','SIM, no prazo de 03 (três) meses;','SIM, no prazo de 01 (um) ano.','c'),
(8,'Depende de quanto tempo faz que efetuou a compra;','Tem 07 (sete) dias para fazer uso de seu direito;','Não, pois adquiriu o produto na loja e só poderia devolver se tivesse vício;','Sim, pois é o arrependimento é direito do consumidor.','c'),
(9,'Ninguém, pois o produto não tem identificação.','O Estado, pois deixou o produto circular.','O comerciante, pois vendeu um produto sem identificação.','Deve se fazer uma investigação pela policia até identificar o responsável.','c'),
(10,'Procurar a loja que vendeu o computador.','Buscar a assistência técnica autorizada;','Reclamar no Procon;','Verificar no termo de garantia quem é o fabricante e reclamar junto á este.','b'),
(11,'Consumidor, fornecedor e produto ou serviço.','Fornecedor e consumidor.','Apenas que tenha a figura do consumidor.','Dinheiro, consumidor e fornecedor.','a'),
(12,'Fingir que não viu que o produto está fora da data da validade.','Realizar a compra porque poucos dias não faz mal para saúde.','Informar ao gerente, e solicitar o recebimento de dois produtos do mesmo mas em perfeitas condições de uso, de forma gratuita.','Chamar a polícia.','c'),
(13,'Direito de Arrependimento.','Direito de se desculpar.','Direito de resistência.','Direito de realizar a troca quando não gostar do produto mais.','a'),
(14,'Casaco','Barco','Sorvete','Carteira','c'),
(15,'15 dias;','10 dias;','90 dias;','30 dias.','c'),
(16,'Em letras pequenas, para não prejudicar a embalagem;','Com o mínimo de informações, já que o importante está no produto, não na embalagem;','Pode informar qualquer coisa, pois ao utilizar o produto o consumidor não terá condições de verificar se este cumpre o que informa;','Informações claras, precisas e de fácil visualização sobre suas características. ','d'),
(17,'1984','1990','1992','1980','b'),
(18,'Sim, pois o procon tem competência para ajuda-lo.','Sim, se Lucas procurar o procon no prazo de 30 dias.','Não, porque a relação entre Lucas e o seu patrão, não é relação de consumo, é relação de trabalho.','Não, porque não existiram bens e serviços na relação entre Lucas e o seu patrão.','c'),
(19,'Não pode fazer nada porque o valor do celular é de R$: 200,00.','Pode exigir que a empresa cumpra a oferta, vendendo o celular por R$: 20,00.','Pode fazer um acordo com a empresa para vender o celular pela metade do preço.','Joana precisará aguardar outros consumidores para que a empresa venda o celular pelo valor do panfleto.','b'),
(20,'Ninguém, pois não é preciso fornecer esse tipo de informação.','A consumidora, que possui alergia a qualquer tipo de comida.','Ao comerciante, uma vez que não disponibilizou os ingredientes de forma clara para a consumidora, pois se soubesse que continha o ingrediente X, não teria comido a sobremesa.','Deve se fazer uma investigação pela policia até identificar o responsável.','c');
/*!40000 ALTER TABLE `gabarito` ENABLE KEYS */;
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
