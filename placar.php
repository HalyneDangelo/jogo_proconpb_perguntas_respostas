<?php require_once ('core/query.php'); ?>

<div class="well">
  <!-- <fieldset> -->
  <h1>Placar</h1>
  <div class="pontos">
  <table class="table table-condensed">
      <?php  $rows = Query::selectionPontoEquipe();
            foreach ($rows as  $row) { ?>
            <tr>
                <td><h4 class="btn btn-danger" type="button">
                <?= $row['nome_equipe'] ?><span class="badge"> <?= $row['pontos'] ?></span></h4></td>
            </tr>
       <?php }
        ?>
        </table>
  </div>
  <!-- </fieldset> -->
</div>
