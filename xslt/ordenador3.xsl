<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!-- Declara una variable XSLT que referencia un XML externo-->
    <xsl:variable name="XMLordenador" select="document('../dtd/ordenador.xml')" />
    
    <!-- Define la plantilla que se aplica al nodo raíz / del XML -->
    <xsl:template match="/">

        <html>
            
            <head>
                <title>Catálogo Ordenadores</title>
                <link rel="stylesheet" href="../estilos/css.css" />
            </head>
            
            <body>
                <!-- Cabecera-->
                <header>
                    <h1>Catálogo de Componentes</h1>
                    <p>Lista agrupada por categorías</p>
                </header>
                
                <!-- Navegador -->
                <nav class="menu">
                    <ul>
                        <li><a href="../index.html">Inicio</a></li>
                        <li><a href="../xslt/ordenador_0.xml">Catalogo 1</a></li>
                        <li><a href="#">Catalogo 2</a></li>
                        <li><a href="../contacto/contacto.html">Contacto</a></li>
                    </ul>
                </nav>
                
                <p class="total">
                    Total de productos:
                    <xsl:value-of select="count($XMLordenador//componentes/*)" />
                </p>
                
                <!-- PROCESADORES -->
                <section class="categoria">
                    <header><h2>Procesadores</h2></header>
                    <ul>
                        <!-- Recorre cada procesador -->
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/procesador">
                            <li class="producto">
                                <article>
                                    <h3>

                                        <!-- Muestra el texto descriptivo -->
                                        <xsl:value-of select="texto"/>
                                    </h3>

                                    <!-- Imagen del producto -->
                                    <figure>
                                        <img src="../imagenes/procesadores/{img}" alt="{texto}" width="120"/>
                                        <figcaption><xsl:value-of select="@marca"/></figcaption>
                                    </figure>

                                    <!-- Precio original -->
                                    <p>Precio:
                                        <strong><xsl:value-of select="precio"/>€</strong>
                                    </p>

                                    <!-- Precio sin IVA -->
                                    <p>Precio sin IVA:
                                        <xsl:value-of select="format-number(number(precio) div 1.21,'#0')"/>€
                                    </p>

                                    <!-- Precio con IVA -->
                                    <p>Precio con IVA:
                                        <xsl:value-of select="format-number(number(precio) * 1.21,'#0')"/>€
                                    </p>

                                    <!-- Precio con descuento del 10% -->
                                    <p>Descuento 10%:
                                        <xsl:value-of select="format-number(number(precio) * 0.9,'#0')"/>€
                                    </p>

                                    <!-- Aviso si el precio supera 200€ -->
                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>

                                    <!-- Muestra la gama -->
                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'"><p class="gama">Gama alta</p></xsl:when>
                                        <xsl:when test="@gama='media'"><p class="gama">Gama media</p></xsl:when>
                                        <xsl:otherwise><p class="gama">Gama baja</p></xsl:otherwise>
                                    </xsl:choose>

                                    <!-- Enlace -->
                                    <a href="{info}">Más información</a>
                                </article>
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>

                <!-- TARJETAS GRÁFICAS -->
                <section class="categoria">
                    <header><h2>Tarjetas Gráficas</h2></header>
                    <ul>
                        <!-- Recorre cada tarjeta gráfica -->
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/tarjetagrafica">
                            <li class="producto">
                                <article>
                                    <h3>
                                        <!-- Añade numeracion automatica -->
                                        <xsl:number level="any"
                                            count="procesador | tarjetagrafica | placaBase | memoriaRam | memoriaAlmacenamiento | fuentedeAlimentacion | chasis | refrigerador"
                                            format="1. " />

                                        <!-- Muestra el texto descriptivo -->
                                        <xsl:value-of select="texto"/>
                                    </h3>

                                    <!-- Imagen del producto -->
                                    <figure>
                                        <img src="../imagenes/grafica/{img}" alt="{texto}" width="120"/>
                                        <figcaption><xsl:value-of select="@marca"/></figcaption>
                                    </figure>

                                    <!-- Precio original -->
                                    <p>Precio:
                                        <strong><xsl:value-of select="precio"/>€</strong>
                                    </p>

                                    <!-- Precio sin IVA -->
                                    <p>Precio sin IVA:
                                        <xsl:value-of select="format-number(number(precio) div 1.21,'#0')"/>€
                                    </p>

                                    <!-- Precio con IVA -->
                                    <p>Precio con IVA:
                                        <xsl:value-of select="format-number(number(precio) * 1.21,'#0')"/>€
                                    </p>

                                    <!-- Precio con descuento del 10% -->
                                    <p>Descuento 10%:
                                        <xsl:value-of select="format-number(number(precio) * 0.9,'#0')"/>€
                                    </p>

                                    <!-- Aviso si el precio supera 200€ -->
                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>

                                    <!-- Muestra la gama -->
                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'"><p class="gama">Gama alta</p></xsl:when>
                                        <xsl:when test="@gama='media'"><p class="gama">Gama media</p></xsl:when>
                                        <xsl:otherwise><p class="gama">Gama baja</p></xsl:otherwise>
                                    </xsl:choose>

                                    <!-- Enlace -->
                                    <a href="{info}">Más información</a>
                                </article>
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>

                <!-- PLACAS BASE -->
                <section class="categoria">
                    <header><h2>Placas Base</h2></header>
                    <ul>
                        <!-- Recorre cada placa base -->
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/placaBase">
                            <li class="producto">
                                <article>
                                    <h3>
                                        <!-- Añade numeracion automatica -->
                                        <xsl:number level="any"
                                            count="procesador | tarjetagrafica | placaBase | memoriaRam | memoriaAlmacenamiento | fuentedeAlimentacion | chasis | refrigerador"
                                            format="1. " />

                                        <!-- Muestra el texto descriptivo -->
                                        <xsl:value-of select="texto"/>
                                    </h3>

                                    <!-- Imagen del producto -->
                                    <figure>
                                        <img src="../imagenes/placabase/{img}" alt="{texto}" width="120"/>
                                        <figcaption><xsl:value-of select="@marca"/></figcaption>
                                    </figure>

                                    <!-- Precio original -->
                                    <p>Precio:
                                        <strong><xsl:value-of select="precio"/>€</strong>
                                    </p>

                                    <!-- Precio sin IVA -->
                                    <p>Precio sin IVA:
                                        <xsl:value-of select="format-number(number(precio) div 1.21,'#0')"/>€
                                    </p>

                                    <!-- Precio con IVA -->
                                    <p>Precio con IVA:
                                        <xsl:value-of select="format-number(number(precio) * 1.21,'#0')"/>€
                                    </p>

                                    <!-- Precio con descuento del 10% -->
                                    <p>Descuento 10%:
                                        <xsl:value-of select="format-number(number(precio) * 0.9,'#0')"/>€
                                    </p>

                                    <!-- Aviso si el precio supera 200€ -->
                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>

                                    <!-- Muestra la gama -->
                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'"><p class="gama">Gama alta</p></xsl:when>
                                        <xsl:when test="@gama='media'"><p class="gama">Gama media</p></xsl:when>
                                        <xsl:otherwise><p class="gama">Gama baja</p></xsl:otherwise>
                                    </xsl:choose>

                                    <!-- Enlace -->
                                    <a href="{info}">Más información</a>
                                </article>
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>

                <!-- MEMORIA RAM -->
                <section class="categoria">
                    <header><h2>Memoria RAM</h2></header>
                    <ul>
                        <!-- Recorre cada memoria RAM -->
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/memoriaRam">
                            <li class="producto">
                                <article>
                                    <h3>
                                        <!-- Añade numeracion automatica -->
                                        <xsl:number level="any"
                                            count="procesador | tarjetagrafica | placaBase | memoriaRam | memoriaAlmacenamiento | fuentedeAlimentacion | chasis | refrigerador"
                                            format="1. " />

                                        <!-- Muestra el texto descriptivo -->
                                        <xsl:value-of select="texto"/>
                                    </h3>

                                    <!-- Imagen del producto -->
                                    <figure>
                                        <img src="../imagenes/ram/{img}" alt="{texto}" width="120"/>
                                        <figcaption><xsl:value-of select="@marca"/></figcaption>
                                    </figure>

                                    <!-- Precio original -->
                                    <p>Precio:
                                        <strong><xsl:value-of select="precio"/>€</strong>
                                    </p>

                                    <!-- Precio sin IVA -->
                                    <p>Precio sin IVA:
                                        <xsl:value-of select="format-number(number(precio) div 1.21,'#0')"/>€
                                    </p>

                                    <!-- Precio con IVA -->
                                    <p>Precio con IVA:
                                        <xsl:value-of select="format-number(number(precio) * 1.21,'#0')"/>€
                                    </p>

                                    <!-- Precio con descuento del 10% -->
                                    <p>Descuento 10%:
                                        <xsl:value-of select="format-number(number(precio) * 0.9,'#0')"/>€
                                    </p>

                                    <!-- Aviso si el precio supera 200€ -->
                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>

                                    <!-- Muestra la gama -->
                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'"><p class="gama">Gama alta</p></xsl:when>
                                        <xsl:when test="@gama='media'"><p class="gama">Gama media</p></xsl:when>
                                        <xsl:otherwise><p class="gama">Gama baja</p></xsl:otherwise>
                                    </xsl:choose>

                                    <!-- Enlace -->
                                    <a href="{info}">Más información</a>
                                </article>
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>

                <!-- MEMORIA DE ALMACENAMIENTO -->
                <section class="categoria">
                    <header><h2>Memoria Almacenamiento</h2></header>
                    <ul>
                        <!-- Recorre cada memoria de almacenamiento -->
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/memoriaAlmacenamiento">
                            <li class="producto">
                                <article>
                                    <h3>
                                        <!-- Añade numeracion automatica -->
                                        <xsl:number level="any"
                                            count="procesador | tarjetagrafica | placaBase | memoriaRam | memoriaAlmacenamiento | fuentedeAlimentacion | chasis | refrigerador"
                                            format="1. " />

                                        <!-- Muestra el texto descriptivo -->
                                        <xsl:value-of select="texto"/>
                                    </h3>

                                    <!-- Imagen del producto -->
                                    <figure>
                                        <img src="../imagenes/memoria/{img}" alt="{texto}" width="120"/>
                                        <figcaption><xsl:value-of select="@marca"/></figcaption>
                                    </figure>

                                    <!-- Precio original -->
                                    <p>Precio:
                                        <strong><xsl:value-of select="precio"/>€</strong>
                                    </p>

                                    <!-- Precio sin IVA -->
                                    <p>Precio sin IVA:
                                        <xsl:value-of select="format-number(number(precio) div 1.21,'#0')"/>€
                                    </p>

                                    <!-- Precio con IVA -->
                                    <p>Precio con IVA:
                                        <xsl:value-of select="format-number(number(precio) * 1.21,'#0')"/>€
                                    </p>

                                    <!-- Precio con descuento del 10% -->
                                    <p>Descuento 10%:
                                        <xsl:value-of select="format-number(number(precio) * 0.9,'#0')"/>€
                                    </p>

                                    <!-- Aviso si el precio supera 200€ -->
                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>

                                    <!-- Muestra la gama -->
                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'"><p class="gama">Gama alta</p></xsl:when>
                                        <xsl:when test="@gama='media'"><p class="gama">Gama media</p></xsl:when>
                                        <xsl:otherwise><p class="gama">Gama baja</p></xsl:otherwise>
                                    </xsl:choose>

                                    <!-- Enlace -->
                                    <a href="{info}">Más información</a>
                                </article>
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>

                <!-- FUENTES DE ALIMENTACIÓN -->
                <section class="categoria">
                    <header><h2>Fuentes de Alimentación</h2></header>
                    <ul>
                        <!-- Recorre cada fuente de alimentación -->
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/fuentedeAlimentacion">
                            <li class="producto">
                                <article>
                                    <h3>
                                        <!-- Añade numeracion automatica -->
                                        <xsl:number level="any"
                                            count="procesador | tarjetagrafica | placaBase | memoriaRam | memoriaAlmacenamiento | fuentedeAlimentacion | chasis | refrigerador"
                                            format="1. " />

                                        <!-- Muestra el texto descriptivo -->
                                        <xsl:value-of select="texto"/>
                                    </h3>

                                    <!-- Imagen del producto -->
                                    <figure>
                                        <img src="../imagenes/fuentedealimentacion/{img}" alt="{texto}" width="120"/>
                                        <figcaption><xsl:value-of select="@marca"/></figcaption>
                                    </figure>

                                    <!-- Precio original -->
                                    <p>Precio:
                                        <strong><xsl:value-of select="precio"/>€</strong>
                                    </p>

                                    <!-- Precio sin IVA -->
                                    <p>Precio sin IVA:
                                        <xsl:value-of select="format-number(number(precio) div 1.21,'#0')"/>€
                                    </p>

                                    <!-- Precio con IVA -->
                                    <p>Precio con IVA:
                                        <xsl:value-of select="format-number(number(precio) * 1.21,'#0')"/>€
                                    </p>

                                    <!-- Precio con descuento del 10% -->
                                    <p>Descuento 10%:
                                        <xsl:value-of select="format-number(number(precio) * 0.9,'#0')"/>€
                                    </p>

                                    <!-- Aviso si el precio supera 200€ -->
                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>

                                    <!-- Muestra la gama -->
                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'"><p class="gama">Gama alta</p></xsl:when>
                                        <xsl:when test="@gama='media'"><p class="gama">Gama media</p></xsl:when>
                                        <xsl:otherwise><p class="gama">Gama baja</p></xsl:otherwise>
                                    </xsl:choose>

                                    <!-- Enlace -->
                                    <a href="{info}">Más información</a>
                                </article>
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>

                <!-- CHASIS -->
                <section class="categoria">
                    <header><h2>Chasis</h2></header>
                    <ul>
                        <!-- Recorre cada chasis -->
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/chasis">
                            <li class="producto">
                                <article>
                                    <h3>
                                        <!-- Añade numeracion automatica -->
                                        <xsl:number level="any"
                                            count="procesador | tarjetagrafica | placaBase | memoriaRam | memoriaAlmacenamiento | fuentedeAlimentacion | chasis | refrigerador"
                                            format="1. " />

                                        <!-- Muestra el texto descriptivo -->
                                        <xsl:value-of select="texto"/>
                                    </h3>

                                    <!-- Imagen del producto -->
                                    <figure>
                                        <img src="../imagenes/chasis/{img}" alt="{texto}" width="120"/>
                                        <figcaption><xsl:value-of select="@marca"/></figcaption>
                                    </figure>

                                    <!-- Precio original -->
                                    <p>Precio:
                                        <strong><xsl:value-of select="precio"/>€</strong>
                                    </p>

                                    <!-- Precio sin IVA -->
                                    <p>Precio sin IVA:
                                        <xsl:value-of select="format-number(number(precio) div 1.21,'#0')"/>€
                                    </p>

                                    <!-- Precio con IVA -->
                                    <p>Precio con IVA:
                                        <xsl:value-of select="format-number(number(precio) * 1.21,'#0')"/>€
                                    </p>

                                    <!-- Precio con descuento del 10% -->
                                    <p>Descuento 10%:
                                        <xsl:value-of select="format-number(number(precio) * 0.9,'#0')"/>€
                                    </p>

                                    <!-- Aviso si el precio supera 200€ -->
                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>

                                    <!-- Muestra la gama -->
                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'"><p class="gama">Gama alta</p></xsl:when>
                                        <xsl:when test="@gama='media'"><p class="gama">Gama media</p></xsl:when>
                                        <xsl:otherwise><p class="gama">Gama baja</p></xsl:otherwise>
                                    </xsl:choose>

                                    <!-- Enlace -->
                                    <a href="{info}">Más información</a>
                                </article>
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>

                <!-- REFRIGERADORES -->
                <section class="categoria">
                    <header><h2>Refrigeradores</h2></header>
                    <ul>
                        <!-- Recorre cada refrigerador -->
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/refrigerador">
                            <li class="producto">
                                <article>
                                    <h3>
                                        <!-- Añade numeracion automatica -->
                                        <xsl:number level="any"
                                            count="procesador | tarjetagrafica | placaBase | memoriaRam | memoriaAlmacenamiento | fuentedeAlimentacion | chasis | refrigerador"
                                            format="1. " />

                                        <!-- Muestra el texto descriptivo -->
                                        <xsl:value-of select="texto"/>
                                    </h3>

                                    <!-- Imagen del producto -->
                                    <figure>
                                        <img src="../imagenes/refrigerador/{img}" alt="{texto}" width="120"/>
                                        <figcaption><xsl:value-of select="@marca"/></figcaption>
                                    </figure>

                                    <!-- Precio original -->
                                    <p>Precio:
                                        <strong><xsl:value-of select="precio"/>€</strong>
                                    </p>

                                    <!-- Precio sin IVA -->
                                    <p>Precio sin IVA:
                                        <xsl:value-of select="format-number(number(precio) div 1.21,'#0')"/>€
                                    </p>

                                    <!-- Precio con IVA -->
                                    <p>Precio con IVA:
                                        <xsl:value-of select="format-number(number(precio) * 1.21,'#0')"/>€
                                    </p>

                                    <!-- Precio con descuento del 10% -->
                                    <p>Descuento 10%:
                                        <xsl:value-of select="format-number(number(precio) * 0.9,'#0')"/>€
                                    </p>

                                    <!-- Aviso si el precio supera 200€ -->
                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>

                                    <!-- Muestra la gama -->
                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'"><p class="gama">Gama alta</p></xsl:when>
                                        <xsl:when test="@gama='media'"><p class="gama">Gama media</p></xsl:when>
                                        <xsl:otherwise><p class="gama">Gama baja</p></xsl:otherwise>
                                    </xsl:choose>

                                    <!-- Enlace -->
                                    <a href="{info}">Más información</a>
                                </article>
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>

            </body>

            <!-- Script flechita para subir-->
            <button onclick="subirArriba()" id="botonSubir" title="Volver arriba">↑</button>
            <script src="../script/script.js"></script>
            
            <footer>
                <p>© 2026 PCTrend</p>
            </footer>
            
        </html>
        
    </xsl:template>
    
</xsl:stylesheet>
