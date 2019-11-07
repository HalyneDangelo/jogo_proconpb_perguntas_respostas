<?php $addPerguntas = '<li><a class="btn btn-info btn-xs" href="adicionar-pergunta.php">Adicionar Perguntas</a></li>'; ?>
<?php $addEquipe = '<a class="btn btn-info btn-xs" href="adicionar-equipe.php">Adicionar Equipe</a></li>';?>
<?php require_once ('core/query.php'); ?>
<?php require_once ('view/partlals/header.php') ?>
    <div  id="form-question"> </div>
    <div id="lateral">
      <!-- <img style="margin: 14px -53px; width: 604px; height: 316px;" src="assets/img/logo-gincana-2019.jpg"  alt="" /> -->
      <div id="pontos"></div>
      <?php  $rows = Query::selectionEquipe();
        foreach ($rows as  $row) {?>
        <input type="submit" class="laterala equipe<?= $row['id_equipe'] ?>" name="equipe"  onclick="selectionEquipe(<?= $row['id_equipe'] ?>);"  value="<?= $row['nome_equipe'] ?>" />      
      <?php } ?>

    </div>

    <div class="flex-container">
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                  <input name="question" type="submit" class="w1" id="1" value="1" onclick="selectionQuestion(1);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" enabled="disabled" class="err" value="1"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input name="question" type="submit" class="w2" id="2" value="2" onclick="selectionQuestion(2);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" class="err" value="2"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input name="question" type="submit" class="w3" id="3" value="3" onclick="selectionQuestion(3);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" class="err" value="3"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input name="question" type="submit" class="w4" id="4" value="4" onclick="selectionQuestion(4);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" class="err" value="4"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input type="submit" class="w5" id="5" value="5" onclick="selectionQuestion(5);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" class="err" value="5"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input type="submit" class="w6" id="6" value="6" onclick="selectionQuestion(6);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" class="err" value="6"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input type="submit" class="w7" id="7" value="7" onclick="selectionQuestion(7);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" class="err" value="7"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input type="submit" class="w8" id="8" value="8" onclick="selectionQuestion(8);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" class="err" value="8"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input type="submit" class="w9" id="9" value="9" onclick="selectionQuestion(9);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" class="err" value="9"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input type="submit" class="w10" id="10" value="10" onclick="selectionQuestion(10);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" class="err" value="10"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input type="submit" class="w11" id="11" value="11" onclick="selectionQuestion(11);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" class="err" value="11"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input type="submit" class="w12" id="12" value="12" onclick="selectionQuestion(12);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" class="err" value="12"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input type="submit" class="w13" id="13" value="13" onclick="selectionQuestion(13);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                  <input type="submit" class="err" value="13"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input type="submit" class="w14" id="14" value="14" onclick="selectionQuestion(14);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                  <input type="submit" class="err" value="14"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input type="submit" class="w15" id="15" value="15" onclick="selectionQuestion(15);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" class="err" value="15"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input type="submit" class="w16" id="16" value="16" onclick="selectionQuestion(16);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" class="err" value="16"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input type="submit" class="w17" id="17" value="17" onclick="selectionQuestion(17);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" class="err" value="17"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input type="submit" class="w18" id="18" value="18" onclick="selectionQuestion(18);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" class="err" value="18"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input type="submit" class="w19" id="19" value="19" onclick="selectionQuestion(19);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" class="err" value="19"/>
                </div>
            </div>
        </div>
        <div class="flip-container" onclick="this.classList.toggle('hover');">
            <div class="flex-item flipper">
                <div class="front">
                    <!-- Conteúdo da frente -->
                    <input type="submit" class="w20" id="20" value="20" onclick="selectionQuestion(20);"/>
                </div>
                <div class="back">
                    <!-- Conteúdo do verso -->
                    <input type="submit" class="err" value="20"/>
                </div>
            </div>
        </div>
    </div>

<?php require_once ('view/partlals/footer.php') ?>
