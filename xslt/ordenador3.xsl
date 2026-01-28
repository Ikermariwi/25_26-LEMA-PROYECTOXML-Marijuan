<?xml version="1.0" encoding="UTF-8"?>
<<<<<<< HEAD

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:variable name="XMLordenador" select="document('../dtd/ordenador.xml')" />
    
    <xsl:template match="/">
        
        <html>
            
=======
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:variable name="XMLordenador" select="document('../dtd/ordenador.xml')" />
    <xsl:template match="/">
        <html>
>>>>>>> ba102e9deb834b179bedfe2fe9bce3ecd0c91710
            <head>
                <title>Catálogo Ordenadores</title>
                <link rel="stylesheet" href="../estilos/css.css" />
            </head>
<<<<<<< HEAD
            
            <body>
                
=======
            <body>
>>>>>>> ba102e9deb834b179bedfe2fe9bce3ecd0c91710
                <header>
                    <h1>Catálogo de Componentes</h1>
                    <p>Lista agrupada por categorías</p>
                </header>
<<<<<<< HEAD
                
                <nav class="menu">
                    <ul>
                        <li><a href="../index.html">Inicio</a></li>
                        <li><a href="../xslt/ordenador_0.xml">Catalogo 1</a></li>
                        <li><a href="#">Catalogo 2</a></li>
                        <li><a href="../contacto/contacto.html">Contacto</a></li>
                    </ul>
                </nav>
                
                <!-- ================= PROCESADORES ================= -->
                <section class="categoria">
                    <header><h2>Procesadores</h2></header>
=======

                <nav class="menu">
                    <ul>
                        <li>
                            <a href="../index.html">Inicio</a>
                        </li>
                        <li>
                            <a href="../xslt/ordenador_0.xml">Catalogo 1</a>
                        </li>
                        <li>
                            <a href="#">Catalogo 2</a>
                        </li>
                        <li>
                            <a href="../contacto/contacto.html">Contacto</a>
                        </li>
                    </ul>
                </nav>

                <!-- Procesadores-->
                <section class="categoria">
                    <header>
                        <h2>Procesadores</h2>
                    </header>
>>>>>>> ba102e9deb834b179bedfe2fe9bce3ecd0c91710
                    <ul>
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/procesador">
                            <li class="producto">
                                <article>
                                    <h3>
<<<<<<< HEAD
                                        <xsl:number level="any"
                                            count="procesador | tarjetagrafica | placaBase | memoriaRam | memoriaAlmacenamiento | fuentedeAlimentacion | chasis | refrigerador"
                                            format="1. " />
                                        <xsl:value-of select="texto"/>
                                    </h3>
                                    <figure>
                                        <img src="../imagenes/procesadores/{img}" alt="{texto}" width="120"/>
                                        <figcaption><xsl:value-of select="@marca"/></figcaption>
                                    </figure>
                                    <p>Precio: <strong><xsl:value-of select="precio"/>€</strong></p>
                                    <p>Precio sin IVA: <xsl:value-of select="format-number(number(precio) div 1.21,'#0.00')"/>€</p>
                                    <p>Precio con IVA: <xsl:value-of select="format-number(number(precio) * 1.21,'#0.00')"/>€</p>
                                    <p>Descuento 10%: <xsl:value-of select="format-number(number(precio) * 0.9,'#0.00')"/>€</p>
                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>
                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'"><p class="gama">Gama alta</p></xsl:when>
                                        <xsl:when test="@gama='media'"><p class="gama">Gama media</p></xsl:when>
                                        <xsl:otherwise><p class="gama">Gama baja</p></xsl:otherwise>
                                    </xsl:choose>
=======
                                        <xsl:value-of select="texto" />
                                    </h3>
                                    <figure>
                                        <img src="../imagenes/procesadores/{img}" alt="{texto}"
                                            width="120" />
                                        <figcaption>
                                            <xsl:value-of select="@marca" />
                                        </figcaption>
                                    </figure>
                                    <p>Precio: <strong><xsl:value-of select="precio" />€</strong></p>
                                    <p>Precio sin IVA: <xsl:value-of
                                            select="format-number(number(precio) div 1.21, '#0.00')" />€</p>

                                    <p>Precio con IVA: <xsl:value-of
                                            select="format-number(number(precio) * 1.21, '#0.00')" />€</p>

                                    <p>Descuento 10%: <xsl:value-of
                                            select="format-number(number(precio) * 0.9, '#0.00')" />€</p>

                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>

                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'">
                                            <p class="gama">Gama alta</p>
                                        </xsl:when>
                                        <xsl:when test="@gama='media'">
                                            <p class="gama">Gama media</p>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <p class="gama">Gama baja</p>
                                        </xsl:otherwise>
                                    </xsl:choose>

>>>>>>> ba102e9deb834b179bedfe2fe9bce3ecd0c91710
                                    <a href="{info}">Más información</a>
                                </article>
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>
<<<<<<< HEAD
                
                <!-- TARJETAS GRÁFICAS-->
                <section class="categoria">
                    <header><h2>Tarjetas Gráficas</h2></header>
=======

                <!-- Tarjetas Gráficas-->
                <section class="categoria">
                    <header>
                        <h2>Tarjetas Gráficas</h2>
                    </header>
>>>>>>> ba102e9deb834b179bedfe2fe9bce3ecd0c91710
                    <ul>
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/tarjetagrafica">
                            <li class="producto">
                                <article>
                                    <h3>
<<<<<<< HEAD
                                        <xsl:number level="any"
                                            count="procesador | tarjetagrafica | placaBase | memoriaRam | memoriaAlmacenamiento | fuentedeAlimentacion | chasis | refrigerador"
                                            format="1. " />
                                        <xsl:value-of select="texto"/>
                                    </h3>
                                    <figure>
                                        <img src="../imagenes/grafica/{img}" alt="{texto}" width="120"/>
                                        <figcaption><xsl:value-of select="@marca"/></figcaption>
                                    </figure>
                                    <p>Precio: <strong><xsl:value-of select="precio"/>€</strong></p>
                                    <p>Precio sin IVA: <xsl:value-of select="format-number(number(precio) div 1.21,'#0.00')"/>€</p>
                                    <p>Precio con IVA: <xsl:value-of select="format-number(number(precio) * 1.21,'#0.00')"/>€</p>
                                    <p>Descuento 10%: <xsl:value-of select="format-number(number(precio) * 0.9,'#0.00')"/>€</p>
                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>
                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'"><p class="gama">Gama alta</p></xsl:when>
                                        <xsl:when test="@gama='media'"><p class="gama">Gama media</p></xsl:when>
                                        <xsl:otherwise><p class="gama">Gama baja</p></xsl:otherwise>
                                    </xsl:choose>
=======
                                        <xsl:value-of select="texto" />
                                    </h3>
                                    <figure>
                                        <img src="../imagenes/grafica/{img}" alt="{texto}"
                                            width="120" />
                                        <figcaption>
                                            <xsl:value-of select="@marca" />
                                        </figcaption>
                                    </figure>
                                    <p>Precio: <strong><xsl:value-of select="precio" />€</strong></p>
                                    <p>Precio sin IVA: <xsl:value-of
                                            select="format-number(number(precio) div 1.21, '#0.00')" />€</p>

                                    <p>Precio con IVA: <xsl:value-of
                                            select="format-number(number(precio) * 1.21, '#0.00')" />€</p>

                                    <p>Descuento 10%: <xsl:value-of
                                            select="format-number(number(precio) * 0.9, '#0.00')" />€</p>

                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>

                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'">
                                            <p class="gama">Gama alta</p>
                                        </xsl:when>
                                        <xsl:when test="@gama='media'">
                                            <p class="gama">Gama media</p>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <p class="gama">Gama baja</p>
                                        </xsl:otherwise>
                                    </xsl:choose>

>>>>>>> ba102e9deb834b179bedfe2fe9bce3ecd0c91710
                                    <a href="{info}">Más información</a>
                                </article>
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>
<<<<<<< HEAD
                
                <!-- PLACAS BASE-->
                <section class="categoria">
                    <header><h2>Placas Base</h2></header>
=======

                <!-- Placas Base-->
                <section class="categoria">
                    <header>
                        <h2>Placas Base</h2>
                    </header>
>>>>>>> ba102e9deb834b179bedfe2fe9bce3ecd0c91710
                    <ul>
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/placaBase">
                            <li class="producto">
                                <article>
                                    <h3>
<<<<<<< HEAD
                                        <xsl:number level="any"
                                            count="procesador | tarjetagrafica | placaBase | memoriaRam | memoriaAlmacenamiento | fuentedeAlimentacion | chasis | refrigerador"
                                            format="1. " />
                                        <xsl:value-of select="texto"/>
                                    </h3>
                                    <figure>
                                        <img src="../imagenes/placabase/{img}" alt="{texto}" width="120"/>
                                        <figcaption><xsl:value-of select="@marca"/></figcaption>
                                    </figure>
                                    <p>Precio: <strong><xsl:value-of select="precio"/>€</strong></p>
                                    <p>Precio sin IVA: <xsl:value-of select="format-number(number(precio) div 1.21,'#0.00')"/>€</p>
                                    <p>Precio con IVA: <xsl:value-of select="format-number(number(precio) * 1.21,'#0.00')"/>€</p>
                                    <p>Descuento 10%: <xsl:value-of select="format-number(number(precio) * 0.9,'#0.00')"/>€</p>
                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>
                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'"><p class="gama">Gama alta</p></xsl:when>
                                        <xsl:when test="@gama='media'"><p class="gama">Gama media</p></xsl:when>
                                        <xsl:otherwise><p class="gama">Gama baja</p></xsl:otherwise>
                                    </xsl:choose>
=======
                                        <xsl:value-of select="texto" />
                                    </h3>
                                    <figure>
                                        <img src="../imagenes/placabase/{img}" alt="{texto}"
                                            width="120" />
                                        <figcaption>
                                            <xsl:value-of select="@marca" />
                                        </figcaption>
                                    </figure>
                                    <p>Precio: <strong><xsl:value-of select="precio" />€</strong></p>
                                    <p>Precio sin IVA: <xsl:value-of
                                            select="format-number(number(precio) div 1.21, '#0.00')" />€</p>

                                    <p>Precio con IVA: <xsl:value-of
                                            select="format-number(number(precio) * 1.21, '#0.00')" />€</p>

                                    <p>Descuento 10%: <xsl:value-of
                                            select="format-number(number(precio) * 0.9, '#0.00')" />€</p>

                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>

                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'">
                                            <p class="gama">Gama alta</p>
                                        </xsl:when>
                                        <xsl:when test="@gama='media'">
                                            <p class="gama">Gama media</p>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <p class="gama">Gama baja</p>
                                        </xsl:otherwise>
                                    </xsl:choose>

>>>>>>> ba102e9deb834b179bedfe2fe9bce3ecd0c91710
                                    <a href="{info}">Más información</a>
                                </article>
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>
<<<<<<< HEAD
                
                <!-- MEMORIA RAM-->
                <section class="categoria">
                    <header><h2>Memoria RAM</h2></header>
=======

                <!-- Memoria RAM-->
                <section class="categoria">
                    <header>
                        <h2>Memoria RAM</h2>
                    </header>
>>>>>>> ba102e9deb834b179bedfe2fe9bce3ecd0c91710
                    <ul>
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/memoriaRam">
                            <li class="producto">
                                <article>
                                    <h3>
<<<<<<< HEAD
                                        <xsl:number level="any"
                                            count="procesador | tarjetagrafica | placaBase | memoriaRam | memoriaAlmacenamiento | fuentedeAlimentacion | chasis | refrigerador"
                                            format="1. " />
                                        <xsl:value-of select="texto"/>
                                    </h3>
                                    <figure>
                                        <img src="../imagenes/ram/{img}" alt="{texto}" width="120"/>
                                        <figcaption><xsl:value-of select="@marca"/></figcaption>
                                    </figure>
                                    <p>Precio: <strong><xsl:value-of select="precio"/>€</strong></p>
                                    <p>Precio sin IVA: <xsl:value-of select="format-number(number(precio) div 1.21,'#0.00')"/>€</p>
                                    <p>Precio con IVA: <xsl:value-of select="format-number(number(precio) * 1.21,'#0.00')"/>€</p>
                                    <p>Descuento 10%: <xsl:value-of select="format-number(number(precio) * 0.9,'#0.00')"/>€</p>
                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>
                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'"><p class="gama">Gama alta</p></xsl:when>
                                        <xsl:when test="@gama='media'"><p class="gama">Gama media</p></xsl:when>
                                        <xsl:otherwise><p class="gama">Gama baja</p></xsl:otherwise>
                                    </xsl:choose>
=======
                                        <xsl:value-of select="texto" />
                                    </h3>
                                    <figure>
                                        <img src="../imagenes/ram/{img}" alt="{texto}" width="120" />
                                        <figcaption>
                                            <xsl:value-of select="@marca" />
                                        </figcaption>
                                    </figure>
                                    <p>Precio: <strong><xsl:value-of select="precio" />€</strong></p>
                                    <p>Precio sin IVA: <xsl:value-of
                                            select="format-number(number(precio) div 1.21, '#0.00')" />€</p>

                                    <p>Precio con IVA: <xsl:value-of
                                            select="format-number(number(precio) * 1.21, '#0.00')" />€</p>

                                    <p>Descuento 10%: <xsl:value-of
                                            select="format-number(number(precio) * 0.9, '#0.00')" />€</p>

                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>

                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'">
                                            <p class="gama">Gama alta</p>
                                        </xsl:when>
                                        <xsl:when test="@gama='media'">
                                            <p class="gama">Gama media</p>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <p class="gama">Gama baja</p>
                                        </xsl:otherwise>
                                    </xsl:choose>

>>>>>>> ba102e9deb834b179bedfe2fe9bce3ecd0c91710
                                    <a href="{info}">Más información</a>
                                </article>
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>
<<<<<<< HEAD
                
                <!-- ALMACENAMIENTO-->
                <section class="categoria">
                    <header><h2>Memoria Almacenamiento</h2></header>
                    <ul>
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/memoriaAlmacenamiento">
                            <li class="producto">
                                <article>
                                    <h3>
                                        <xsl:number level="any"
                                            count="procesador | tarjetagrafica | placaBase | memoriaRam | memoriaAlmacenamiento | fuentedeAlimentacion | chasis | refrigerador"
                                            format="1. " />
                                        <xsl:value-of select="texto"/>
                                    </h3>
                                    <figure>
                                        <img src="../imagenes/memoria/{img}" alt="{texto}" width="120"/>
                                        <figcaption><xsl:value-of select="@marca"/></figcaption>
                                    </figure>
                                    <p>Precio: <strong><xsl:value-of select="precio"/>€</strong></p>
                                    <p>Precio sin IVA: <xsl:value-of select="format-number(number(precio) div 1.21,'#0.00')"/>€</p>
                                    <p>Precio con IVA: <xsl:value-of select="format-number(number(precio) * 1.21,'#0.00')"/>€</p>
                                    <p>Descuento 10%: <xsl:value-of select="format-number(number(precio) * 0.9,'#0.00')"/>€</p>
                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>
                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'"><p class="gama">Gama alta</p></xsl:when>
                                        <xsl:when test="@gama='media'"><p class="gama">Gama media</p></xsl:when>
                                        <xsl:otherwise><p class="gama">Gama baja</p></xsl:otherwise>
                                    </xsl:choose>
=======

                <!-- Memoria Almacenamiento-->
                <section class="categoria">
                    <header>
                        <h2>Memoria Almacenamiento</h2>
                    </header>
                    <ul>
                        <xsl:for-each
                            select="$XMLordenador//ordenador/componentes/memoriaAlmacenamiento">
                            <li class="producto">
                                <article>
                                    <h3>
                                        <xsl:value-of select="texto" />
                                    </h3>
                                    <figure>
                                        <img src="../imagenes/memoria/{img}" alt="{texto}"
                                            width="120" />
                                        <figcaption>
                                            <xsl:value-of select="@marca" />
                                        </figcaption>
                                    </figure>
                                    <p>Precio: <strong><xsl:value-of select="precio" />€</strong></p>
                                    <p>Precio sin IVA: <xsl:value-of
                                            select="format-number(number(precio) div 1.21, '#0.00')" />€</p>

                                    <p>Precio con IVA: <xsl:value-of
                                            select="format-number(number(precio) * 1.21, '#0.00')" />€</p>

                                    <p>Descuento 10%: <xsl:value-of
                                            select="format-number(number(precio) * 0.9, '#0.00')" />€</p>

                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>

                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'">
                                            <p class="gama">Gama alta</p>
                                        </xsl:when>
                                        <xsl:when test="@gama='media'">
                                            <p class="gama">Gama media</p>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <p class="gama">Gama baja</p>
                                        </xsl:otherwise>
                                    </xsl:choose>

>>>>>>> ba102e9deb834b179bedfe2fe9bce3ecd0c91710
                                    <a href="{info}">Más información</a>
                                </article>
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>
<<<<<<< HEAD
                
                <!-- FUENTES-->
                <section class="categoria">
                    <header><h2>Fuentes de Alimentación</h2></header>
                    <ul>
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/fuentedeAlimentacion">
                            <li class="producto">
                                <article>
                                    <h3>
                                        <xsl:number level="any"
                                            count="procesador | tarjetagrafica | placaBase | memoriaRam | memoriaAlmacenamiento | fuentedeAlimentacion | chasis | refrigerador"
                                            format="1. " />
                                        <xsl:value-of select="texto"/>
                                    </h3>
                                    <figure>
                                        <img src="../imagenes/fuentedealimentacion/{img}" alt="{texto}" width="120"/>
                                        <figcaption><xsl:value-of select="@marca"/></figcaption>
                                    </figure>
                                    <p>Precio: <strong><xsl:value-of select="precio"/>€</strong></p>
                                    <p>Precio sin IVA: <xsl:value-of select="format-number(number(precio) div 1.21,'#0.00')"/>€</p>
                                    <p>Precio con IVA: <xsl:value-of select="format-number(number(precio) * 1.21,'#0.00')"/>€</p>
                                    <p>Descuento 10%: <xsl:value-of select="format-number(number(precio) * 0.9,'#0.00')"/>€</p>
                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>
                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'"><p class="gama">Gama alta</p></xsl:when>
                                        <xsl:when test="@gama='media'"><p class="gama">Gama media</p></xsl:when>
                                        <xsl:otherwise><p class="gama">Gama baja</p></xsl:otherwise>
                                    </xsl:choose>
=======

                <!-- Fuente de Alimentación-->
                <section class="categoria">
                    <header>
                        <h2>Fuentes de Alimentación</h2>
                    </header>
                    <ul>
                        <xsl:for-each
                            select="$XMLordenador//ordenador/componentes/fuentedeAlimentacion">
                            <li class="producto">
                                <article>
                                    <h3>
                                        <xsl:value-of select="texto" />
                                    </h3>
                                    <figure>
                                        <img src="../imagenes/fuentedealimentacion/{img}"
                                            alt="{texto}" width="120" />
                                        <figcaption>
                                            <xsl:value-of select="@marca" />
                                        </figcaption>
                                    </figure>
                                    <p>Precio: <strong><xsl:value-of select="precio" />€</strong></p>
                                    <p>Precio sin IVA: <xsl:value-of
                                            select="format-number(number(precio) div 1.21, '#0.00')" />€</p>

                                    <p>Precio con IVA: <xsl:value-of
                                            select="format-number(number(precio) * 1.21, '#0.00')" />€</p>

                                    <p>Descuento 10%: <xsl:value-of
                                            select="format-number(number(precio) * 0.9, '#0.00')" />€</p>

                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>

                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'">
                                            <p class="gama">Gama alta</p>
                                        </xsl:when>
                                        <xsl:when test="@gama='media'">
                                            <p class="gama">Gama media</p>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <p class="gama">Gama baja</p>
                                        </xsl:otherwise>
                                    </xsl:choose>

>>>>>>> ba102e9deb834b179bedfe2fe9bce3ecd0c91710
                                    <a href="{info}">Más información</a>
                                </article>
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>
<<<<<<< HEAD
                
                <!-- CHASIS-->
                <section class="categoria">
                    <header><h2>Chasis</h2></header>
=======

                <!-- Chasis-->
                <section class="categoria">
                    <header>
                        <h2>Chasis</h2>
                    </header>
>>>>>>> ba102e9deb834b179bedfe2fe9bce3ecd0c91710
                    <ul>
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/chasis">
                            <li class="producto">
                                <article>
                                    <h3>
<<<<<<< HEAD
                                        <xsl:number level="any"
                                            count="procesador | tarjetagrafica | placaBase | memoriaRam | memoriaAlmacenamiento | fuentedeAlimentacion | chasis | refrigerador"
                                            format="1. " />
                                        <xsl:value-of select="texto"/>
                                    </h3>
                                    <figure>
                                        <img src="../imagenes/chasis/{img}" alt="{texto}" width="120"/>
                                        <figcaption><xsl:value-of select="@marca"/></figcaption>
                                    </figure>
                                    <p>Precio: <strong><xsl:value-of select="precio"/>€</strong></p>
                                    <p>Precio sin IVA: <xsl:value-of select="format-number(number(precio) div 1.21,'#0.00')"/>€</p>
                                    <p>Precio con IVA: <xsl:value-of select="format-number(number(precio) * 1.21,'#0.00')"/>€</p>
                                    <p>Descuento 10%: <xsl:value-of select="format-number(number(precio) * 0.9,'#0.00')"/>€</p>
                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>
                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'"><p class="gama">Gama alta</p></xsl:when>
                                        <xsl:when test="@gama='media'"><p class="gama">Gama media</p></xsl:when>
                                        <xsl:otherwise><p class="gama">Gama baja</p></xsl:otherwise>
                                    </xsl:choose>
=======
                                        <xsl:value-of select="texto" />
                                    </h3>
                                    <figure>
                                        <img src="../imagenes/chasis/{img}" alt="{texto}"
                                            width="120" />
                                        <figcaption>
                                            <xsl:value-of select="@marca" />
                                        </figcaption>
                                    </figure>
                                    <p>Precio: <strong><xsl:value-of select="precio" />€</strong></p>
                                    <p>Precio sin IVA: <xsl:value-of
                                            select="format-number(number(precio) div 1.21, '#0.00')" />€</p>

                                    <p>Precio con IVA: <xsl:value-of
                                            select="format-number(number(precio) * 1.21, '#0.00')" />€</p>

                                    <p>Descuento 10%: <xsl:value-of
                                            select="format-number(number(precio) * 0.9, '#0.00')" />€</p>

                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>

                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'">
                                            <p class="gama">Gama alta</p>
                                        </xsl:when>
                                        <xsl:when test="@gama='media'">
                                            <p class="gama">Gama media</p>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <p class="gama">Gama baja</p>
                                        </xsl:otherwise>
                                    </xsl:choose>

>>>>>>> ba102e9deb834b179bedfe2fe9bce3ecd0c91710
                                    <a href="{info}">Más información</a>
                                </article>
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>
<<<<<<< HEAD
                
                <!-- REFRIGERADORES-->
                <section class="categoria">
                    <header><h2>Refrigeradores</h2></header>
=======

                <!-- Refrigeradores-->
                <section class="categoria">
                    <header>
                        <h2>Refrigeradores</h2>
                    </header>
>>>>>>> ba102e9deb834b179bedfe2fe9bce3ecd0c91710
                    <ul>
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/refrigerador">
                            <li class="producto">
                                <article>
                                    <h3>
<<<<<<< HEAD
                                        <xsl:number level="any"
                                            count="procesador | tarjetagrafica | placaBase | memoriaRam | memoriaAlmacenamiento | fuentedeAlimentacion | chasis | refrigerador"
                                            format="1. " />
                                        <xsl:value-of select="texto"/>
                                    </h3>
                                    <figure>
                                        <img src="../imagenes/refrigerador/{img}" alt="{texto}" width="120"/>
                                        <figcaption><xsl:value-of select="@marca"/></figcaption>
                                    </figure>
                                    <p>Precio: <strong><xsl:value-of select="precio"/>€</strong></p>
                                    <p>Precio sin IVA: <xsl:value-of select="format-number(number(precio) div 1.21,'#0.00')"/>€</p>
                                    <p>Precio con IVA: <xsl:value-of select="format-number(number(precio) * 1.21,'#0.00')"/>€</p>
                                    <p>Descuento 10%: <xsl:value-of select="format-number(number(precio) * 0.9,'#0.00')"/>€</p>
                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>
                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'"><p class="gama">Gama alta</p></xsl:when>
                                        <xsl:when test="@gama='media'"><p class="gama">Gama media</p></xsl:when>
                                        <xsl:otherwise><p class="gama">Gama baja</p></xsl:otherwise>
                                    </xsl:choose>
=======
                                        <xsl:value-of select="texto" />
                                    </h3>
                                    <figure>
                                        <img src="../imagenes/refrigerador/{img}" alt="{texto}"
                                            width="120" />
                                        <figcaption>
                                            <xsl:value-of select="@marca" />
                                        </figcaption>
                                    </figure>
                                    <p>Precio: <strong><xsl:value-of select="precio" />€</strong></p>
                                    <p>Precio sin IVA: <xsl:value-of
                                            select="format-number(number(precio) div 1.21, '#0.00')" />€</p>

                                    <p>Precio con IVA: <xsl:value-of
                                            select="format-number(number(precio) * 1.21, '#0.00')" />€</p>

                                    <p>Descuento 10%: <xsl:value-of
                                            select="format-number(number(precio) * 0.9, '#0.00')" />€</p>

                                    <xsl:if test="number(precio) &gt; 200">
                                        <p class="oferta">¡Este producto supera los 200€!</p>
                                    </xsl:if>

                                    <xsl:choose>
                                        <xsl:when test="@gama='alta'">
                                            <p class="gama">Gama alta</p>
                                        </xsl:when>
                                        <xsl:when test="@gama='media'">
                                            <p class="gama">Gama media</p>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <p class="gama">Gama baja</p>
                                        </xsl:otherwise>
                                    </xsl:choose>

>>>>>>> ba102e9deb834b179bedfe2fe9bce3ecd0c91710
                                    <a href="{info}">Más información</a>
                                </article>
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>
<<<<<<< HEAD
                
            </body>
            
            <button onclick="subirArriba()" id="botonSubir" title="Volver arriba">↑</button>
            <script src="../script/script.js"></script>
            
            <footer>
                <p>© 2026 PCTrend</p>
            </footer>
            
        </html>
        
    </xsl:template>
    
</xsl:stylesheet>
=======

            </body>

            <button onclick="subirArriba()" id="botonSubir" title="Volver arriba">↑</button>
            <script src="../script/script.js"></script>
            <footer>
                <p>© 2026 PCTrend</p>
            </footer>
        </html>
    </xsl:template>
</xsl:stylesheet>
>>>>>>> ba102e9deb834b179bedfe2fe9bce3ecd0c91710
