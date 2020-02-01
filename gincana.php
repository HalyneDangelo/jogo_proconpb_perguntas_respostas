<?php
require_once ('core/query.php');

$addPerguntas = '<li><a class="btn btn-info btn-xs" href="adicionar-pergunta.php">Adicionar Perguntas</a></li>';
$addEquipe = '<a class="btn btn-info btn-xs" href="adicionar-equipe.php">Adicionar Equipe</a></li>';

require_once ('view/partlals/header.php');
?>
<link rel="stylesheet" href="jogo.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<div class="page-header">
  <h1>APURAÇÃO 9ª GINCANA</h1>
</div>
<div class="panel panel-default">
  <div class="panel-heading">
  <h3 class="center">Tarefas Realizadas <small>Quadro de Notas</small></h3>
  </div>
  <div class="panel-body">
  <table class="table table-striped table-hover">
  <thead>
      <tr class="alert alert-sucess">
          <th class="row-name">Escolas Participantes</th>
          <th>Peça Teatral</th>
          <th>Paródia</th>
          <th>Slogan e Logomarca</th>
          <th>Teste Tira Teima</th>
          <th>Apresentação de Revista em Quadrinhos</th>
          <th>Pontuação</th>
          <th>Vencedor</th>
      </tr>
  </thead>
  <tbody>
      <tr>
          <td><span class="label active">></span>&nbsp;PAULO FREIRE</td>
            <td> 
              <input type="text" id="coluna_1" class="soma_coluna" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_2" class="soma_coluna" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_3" class="soma_coluna" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_4" class="soma_coluna" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_5" class="soma_coluna" name="qualquer">
            </td>
            <td> 
              <input type="text" id="id-campo-input-resultado" class="resultado" name="resultado">
            </td>
            <td>
            <b>5 LUGAR</b>
            </td>
      </tr>
      <tr>
          <td><span class="label danger ">></span>&nbsp;Mª FÁIMA SOUTO</td>
            <td> 
              <input type="text" id="coluna_1" class="soma_coluna1" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_2" class="soma_coluna1" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_3" class="soma_coluna1" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_4" class="soma_coluna1" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_5" class="soma_coluna1" name="qualquer">
            </td>
            <td> 
              <input type="text" id="id-campo-input-resultado1" class="resultado" name="resultado">
            </td>
            <td>
              <b>4 LUGAR</b>
            </td>
      </tr>
      <tr>
          <td><span class="label warning">></span>&nbsp;HENRIQUE DIAS</td>
            <td> 
              <input type="text" id="coluna_1" class="soma_coluna2" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_2" class="soma_coluna2" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_3" class="soma_coluna2" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_4" class="soma_coluna2" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_5" class="soma_coluna2" name="qualquer">
            </td>
            <td> 
              <input type="text" id="id-campo-input-resultado2" class="resultado" name="resultado">
            </td>
            <td>
              <b>VENCEDORA</b>
            </td>
      </tr>
      <tr>
          <td><span class="label sucess">></span>&nbsp;CELESTIN MALZAC</td>
            <td> 
              <input type="text" id="coluna_1" class="soma_coluna3" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_2" class="soma_coluna3" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_3" class="soma_coluna3" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_4" class="soma_coluna3" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_5" class="soma_coluna3" name="qualquer">
            </td>
            <td> 
              <input type="text" id="id-campo-input-resultado3" class="resultado" name="resultado">
            </td>
            <td>
              <b>2 LUGAR</b>
            </td>
      </tr>
      <tr>
          <td><span class="label blue">></span>&nbsp;JOSÉ VIEIRA</td>
            <td> 
              <input type="text" id="coluna_1" class="soma_coluna4" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_2" class="soma_coluna4" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_3" class="soma_coluna4" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_4" class="soma_coluna4" name="qualquer">
            </td>
            <td> 
              <input type="text" id="coluna_5" class="soma_coluna4" name="qualquer">
            </td>
            <td> 
              <input type="text" id="id-campo-input-resultado4" class="resultado" name="resultado">
            </td>
            <td>
              <b>3 LUGAR</b>
            </td>
      </tr>
  </tbody>
</table>
<div class="panel-footer"> <h5 class=""> Procon PB - O consumidor em primeiro lugar.</h5></div>
</div>
</div>

<script type="application/javascript">

$('.soma_coluna').on('keyup', function () {
    let total = 0.0;

    $('.soma_coluna').each(function() {
        let valor = $(this).val() ? parseFloat($(this).val()) : 0.0;

        total += valor;
    });

    $('#id-campo-input-resultado').val(total);
});

$('.soma_coluna1').on('keyup', function () {
    let total = 0.0;

    $('.soma_coluna1').each(function() {
        let valor = $(this).val() ? parseFloat($(this).val()) : 0.0;

        total += valor;
    });

    $('#id-campo-input-resultado1').val(total);
});

$('.soma_coluna2').on('keyup', function () {
    let total = 0.0;

    $('.soma_coluna2').each(function() {
        let valor = $(this).val() ? parseFloat($(this).val()) : 0.0;

        total += valor;
    });

    $('#id-campo-input-resultado2').val(total);
});

$('.soma_coluna3').on('keyup', function () {
    let total = 0.0;

    $('.soma_coluna3').each(function() {
        let valor = $(this).val() ? parseFloat($(this).val()) : 0.0;

        total += valor;
    });

    $('#id-campo-input-resultado3').val(total);
});

$('.soma_coluna4').on('keyup', function () {
    let total = 0.0;

    $('.soma_coluna4').each(function() {
        let valor = $(this).val() ? parseFloat($(this).val()) : 0.0;

        total += valor;
    });

    $('#id-campo-input-resultado4').val(total);
});

</script>

<?php include_once 'app/view/partlals/footer.php' ?>
    