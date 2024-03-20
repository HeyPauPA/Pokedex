<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">

<html lang="en">
    <head>
        <title>Title</title>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />

        <!-- Bootstrap CSS v5.2.1 -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />
    </head>

    <body class="shadow" style="background-image: url(/img/fondo.png); background-size:cover;">
        <div class="container">
            <!-- CABECERA -->
            <header>
                <div class="position-relative">
                    
                    <img src="img/header.jpeg" class="img-fluid w-100 " alt="" />

                    <div class="card-img-overlay pt-4 bg-black bg-opacity-50">
                        <div class="ps-5 pe-5">
                            <h1 class="text-center text-white text-opacity-50 bg-black bg-opacity-50">
                                <strong>POKÉDEX</strong>
                            </h1>
                            <p class="text-white text-center" style=" font-size: 22px;">
                                Los Pokémon son criaturas de todo tipo de formas y tamaños que viven bien en un medio salvaje
                                o junto a los seres humanos. Los dueños de los Pokémon (denominados "Entrenadores") los crían
                                y los cuidan. Durante sus aventuras, los Pokémon crecen y adquieren más experiencia, e incluso,
                                en ocasiones, evolucionan para Convertirse en Pokémon más fuertes. En la actualidad, hay más de
                                700 criaturas que habitan el universo Pokémon.
                            </p>
                        </div>
                    </div>
                </div>
            </header>

            <!--CUERPO-->
            <main class="bg-black bg-opacity-50">
                <!--TIPOS-->
                <div>
                    <div class=" justify-content-center">
                        <h2 class="text-center text-white text-opacity-50">
                            <strong>TYPES</strong>
                        </h2>
    
                        <div class="row">
						<xsl:for-each select="pokedex/types/type">
                            <div class="col-4 pt-2">
                                <div class="card bg-dark border-white border-2 rounded-3 ">
                                    <div class="card-body">
                                        <img src="img{.}_types" class="img-fluid rounded-top" alt="" />
                                        <p class="card-text">xsl:valueof </p>
                                    </div>
                                </div>   
                            </div>
						</xsl:for-each>
                           
                        </div>
                    </div>
                </div>

                <!--POKEMONS-->
                <div>
                    <div class="mt-5 pb-5 justify-content-center" id="pokemons">
                        <h2 class="text-center text-white text-opacity-50">
                            <strong>POKEMON</strong>
                        </h2>
                        <div class="mt-4 gap-3 d-flex justify-content-center row row-cols-3">
                            <div class="card col border-2 border-white bg-dark rounded-3">
                                <div class="card-body d-flex align-items-center justify-content-start gap-4">
                                    <div>
                                        <img class="card-img" src="img/001.png" alt="Bulbasaur"/>
                                    </div>
                                    <div>
                                        <h4 class="card-title text-white mb-1">Bulbasaur</h4>
                                        <ul class="list-unstyled text-white mb-1">
                                            <li>HP:</li>
                                            <li>ATK:</li>
                                            <li>DEF:</li>
                                            <li>SPD:</li>
                                            <li>SATK:</li>
                                        </ul>
                                        <ul class="list-inline m-0">
                                            <li class="list-inline-item"><img src="img/grass_type.png" alt="grass type" class="rounded-1" /></li>
                                            <li class="list-inline-item"><img src="img/poison_type.png" alt="poison type" class="rounded-1" /></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <footer class="container">
                <!-- PIE DE PAGINA -->
                <div class="row pt-2 pb-2 bg-dark-subtle opacity-75">
                    <div class="col-11">
                        <h4 class="text-center text-black pt-2">
                            EL MUNDO POKEMON EN AZARQUIEL - S1DAM - S1ASIR
                        </h4>
                    </div>
                    <div class="col-1">
                        <img src="img/Pokeball.png" alt=""/>
                    </div>
                </div>
            </footer>
        </div>
        <!-- Bootstrap JavaScript Libraries -->
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>