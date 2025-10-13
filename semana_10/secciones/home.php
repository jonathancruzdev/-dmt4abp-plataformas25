    <?php
        $carreras = [
            "images/cine.jpg",
            "images/grafico.jpg",
            "images/web.jpg",
            "images/juegos.jpg",
            "images/sistemas.jpg"

        ];

    ?>
    <main>
        <div class="card-container">
            <?php
                for($i=0; $i<4; $i++){
                    $imgUrl = $carreras[$i];
                    echo("<div class='info-card'>
                                <div class='card-image-placeholder analyst'>
                                    <img src='$imgUrl' alt='>
                                </div>
                            <div class='card-content'>
                            
                                <button class='register-button'>Ver más</button>
                            </div>
                            </div>");
                }

            ?>
            
     
        </div>
    </main>