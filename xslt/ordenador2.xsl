<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:variable name="XMLordenador" select="document('../dtd/ordenador.xml')" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Configurador de Ordenadores</title>
                <link rel="stylesheet" href="../estilos/catalogo.css" />
            </head>

            <body>
                <!-- HEADER -->
                <header>
                    <h1>Configurador de Ordenadores</h1>
                    <p>Catálogo de componentes</p>
                </header>

                <!-- NAV -->
                <nav class="menu">
                    <ul>
                        <li>
                            <a href="../index.html">Inicio</a>
                        </li>
                        <li>
                            <a href="ordenador_0.xml">Catalogo 1</a>
                        </li>
                        <li>
                            <a href="ordenador_1.xml">Catalogo 2</a>
                        </li>
                        <li>
                            <a href="../contacto/contacto.html">Contacto</a>
                        </li>
                    </ul>
                </nav>

                <!-- ========================= -->
                <!-- PROCESADORES -->
                <!-- ========================= -->
                <section>
                    <h2>Procesadores</h2>
                    <div class="grid">
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/procesador">
                            <xsl:variable name="precioOriginal" select="number(precio)" />
                            <xsl:variable
                                name="precioDescuento10" select="$precioOriginal * 0.9" />

                            <article
                                class="card">
                                <img src="../imagenes/procesadores/{img}" alt="{texto}" />
                                <div class="card-content">
                                    <h3>
                                        <xsl:value-of select="texto" />
                                    </h3>
                                    <ul>
                                        <li>
                                            <strong>Marca: </strong>
                                            <xsl:value-of select="@marca" />
                                        </li>
                                        <li>
                                            <strong>Gama: </strong>
                                            <xsl:value-of select="@gama" />
                                        </li>
                                        <li>
                                            <strong>Socket: </strong>
                                            <xsl:value-of select="@socket" />
                                        </li>
                                        <li>
                                            <strong>Disipador: </strong>
                                            <xsl:value-of select="@disipador" />
                                        </li>
                                    </ul>
                                    <p class="precio">
                                        <xsl:value-of
                                            select="format-number($precioDescuento10, '#0.00')" /> € </p>
                                    <a href="{info}" target="_blank">Más información</a>
                                </div>
                            </article>
                        </xsl:for-each>
                    </div>
                </section>

                <!-- TARJETAS GRÁFICAS -->
                <section>
                    <h2>Tarjetas Gráficas</h2>
                    <div class="grid">
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/tarjetagrafica">
                            <xsl:variable name="precioOriginal" select="number(precio)" />
                            <xsl:variable
                                name="precioDescuento10" select="$precioOriginal * 0.9" />

                            <article
                                class="card">
                                <img src="../imagenes/grafica/{img}" alt="{texto}" />
                                <div class="card-content">
                                    <h3>
                                        <xsl:value-of select="texto" />
                                    </h3>
                                    <ul>
                                        <li>
                                            <strong>Marca: </strong>
                                            <xsl:value-of select="@marca" />
                                        </li>
                                        <li>
                                            <strong>Gama: </strong>
                                            <xsl:value-of select="@gama" />
                                        </li>
                                        <li>
                                            <strong>PCI: </strong>
                                            <xsl:value-of select="@PCI" />
                                        </li>
                                        <li>
                                            <strong>VRAM: </strong>
                                            <xsl:value-of select="@VRAM" />
                                        </li>
                                        <li>
                                            <strong>Ventiladores: </strong>
                                            <xsl:value-of select="@vent" />
                                        </li>
                                    </ul>
                                    <p class="precio">
                                        <xsl:value-of
                                            select="format-number($precioDescuento10, '#0.00')" /> € </p>
                                    <a href="{info}" target="_blank">Más información</a>
                                </div>
                            </article>
                        </xsl:for-each>
                    </div>
                </section>

                <!-- PLACA BASE -->
                <section>
                    <h2>Placas Base</h2>
                    <div class="grid">
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/placaBase">
                            <xsl:variable name="precioOriginal" select="number(precio)" />
                            <xsl:variable
                                name="precioDescuento10" select="$precioOriginal * 0.9" />

                            <article
                                class="card">
                                <img src="../imagenes/placabase/{img}" alt="{texto}" />
                                <div class="card-content">
                                    <h3>
                                        <xsl:value-of select="texto" />
                                    </h3>
                                    <ul>
                                        <li>
                                            <strong>Marca: </strong>
                                            <xsl:value-of select="@marca" />
                                        </li>
                                        <li>
                                            <strong>Ram Maxima: </strong>
                                            <xsl:value-of select="@ram_max" />
                                        </li>
                                        <li>
                                            <strong>Chipset: </strong>
                                            <xsl:value-of select="@chipset" />
                                        </li>
                                        <li>
                                            <strong>Wifi: </strong>
                                            <xsl:value-of select="@wifi" />
                                        </li>
                                        <li>
                                            <strong>Bluetooth: </strong>
                                            <xsl:value-of select="@bluetooth" />
                                        </li>
                                    </ul>
                                    <p class="precio">
                                        <xsl:value-of
                                            select="format-number($precioDescuento10, '#0.00')" /> € </p>
                                    <a href="{info}" target="_blank">Más información</a>
                                </div>
                            </article>
                        </xsl:for-each>
                    </div>
                </section>

                <!-- MEMORIA RAM -->
                <section>
                    <h2>Memorias RAM</h2>
                    <div class="grid">
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/memoriaRam">
                            <xsl:variable name="precioOriginal" select="number(precio)" />
                            <xsl:variable
                                name="precioDescuento10" select="$precioOriginal * 0.9" />

                            <article
                                class="card">
                                <img src="../imagenes/ram/{img}" alt="{texto}" />
                                <div class="card-content">
                                    <h3>
                                        <xsl:value-of select="texto" />
                                    </h3>
                                    <ul>
                                        <li>
                                            <strong>Marca: </strong>
                                            <xsl:value-of select="@marca" />
                                        </li>
                                        <li>
                                            <strong>Capacidad: </strong>
                                            <xsl:value-of select="@capacidad" />
                                        </li>
                                        <li>
                                            <strong>Tipo: </strong>
                                            <xsl:value-of select="@tipo" />
                                        </li>
                                        <li>
                                            <strong>Velocidad: </strong>
                                            <xsl:value-of select="@velocidad" />
                                        </li>
                                    </ul>
                                    <p class="precio">
                                        <xsl:value-of
                                            select="format-number($precioDescuento10, '#0.00')" /> € </p>
                                    <a href="{info}" target="_blank">Más información</a>
                                </div>
                            </article>
                        </xsl:for-each>
                    </div>
                </section>

                <!-- MEMORIA PRINCIPAL -->
                <section>
                    <h2>Memorias Principales</h2>
                    <div class="grid">
                        <xsl:for-each
                            select="$XMLordenador//ordenador/componentes/memoriaPrinciapal">
                            <xsl:variable name="precioOriginal" select="number(precio)" />
                            <xsl:variable
                                name="precioDescuento10" select="$precioOriginal * 0.9" />

                            <article
                                class="card">
                                <img src="../imagenes/memoria/{img}" alt="{texto}" />
                                <div class="card-content">
                                    <h3>
                                        <xsl:value-of select="texto" />
                                    </h3>
                                    <ul>
                                        <li>
                                            <strong>Tipo: </strong>
                                            <xsl:value-of select="@tipo" />
                                        </li>
                                        <li>
                                            <strong>Interfaz: </strong>
                                            <xsl:value-of select="@interfaz" />
                                        </li>
                                        <li>
                                            <strong>Capacidad: </strong>
                                            <xsl:value-of select="@capacidad" />
                                        </li>
                                        <li>
                                            <strong>Velocidad: </strong>
                                            <xsl:value-of select="@velocidad" />
                                        </li>
                                    </ul>
                                    <p class="precio">
                                        <xsl:value-of
                                            select="format-number($precioDescuento10, '#0.00')" /> € </p>
                                    <a href="{info}" target="_blank">Más información</a>
                                </div>
                            </article>
                        </xsl:for-each>
                    </div>
                </section>

                <!-- FUENTE DE ALIMENTACIÓN -->
                <section>
                    <h2>Fuentes de Alimentación</h2>
                    <div class="grid">
                        <xsl:for-each
                            select="$XMLordenador//ordenador/componentes/fuentedeAlimentacion">
                            <xsl:variable name="precioOriginal" select="number(precio)" />
                            <xsl:variable
                                name="precioDescuento10" select="$precioOriginal * 0.9" />

                            <article
                                class="card">
                                <img src="../imagenes/fuentedealimentacion/{img}" alt="{texto}" />
                                <div class="card-content">
                                    <h3>
                                        <xsl:value-of select="texto" />
                                    </h3>
                                    <ul>
                                        <li>
                                            <strong>Marca: </strong>
                                            <xsl:value-of select="@marca" />
                                        </li>
                                        <li>
                                            <strong>Potencia: </strong>
                                            <xsl:value-of select="@potencia" />
                                        </li>
                                        <li>
                                            <strong>Certificación: </strong>
                                            <xsl:value-of select="@certificacion" />
                                        </li>
                                        <li>
                                            <strong>Modular: </strong>
                                            <xsl:value-of select="@modular" />
                                        </li>
                                    </ul>
                                    <p class="precio">
                                        <xsl:value-of
                                            select="format-number($precioDescuento10, '#0.00')" /> € </p>
                                    <a href="{info}" target="_blank">Más información</a>
                                </div>
                            </article>
                        </xsl:for-each>
                    </div>
                </section>

                <!-- CHASIS -->
                <section>
                    <h2>Chasis</h2>
                    <div class="grid">
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/chasis">
                            <xsl:variable name="precioOriginal" select="number(precio)" />
                            <xsl:variable
                                name="precioDescuento10" select="$precioOriginal * 0.9" />

                            <article
                                class="card">
                                <img src="../imagenes/chasis/{img}" alt="{texto}" />
                                <div class="card-content">
                                    <h3>
                                        <xsl:value-of select="texto" />
                                    </h3>
                                    <ul>
                                        <li>
                                            <strong>Marca: </strong>
                                            <xsl:value-of select="@marca" />
                                        </li>
                                        <li>
                                            <strong>Formato: </strong>
                                            <xsl:value-of select="@formato" />
                                        </li>
                                        <li>
                                            <strong>Material: </strong>
                                            <xsl:value-of select="@material" />
                                        </li>
                                        <li>
                                            <strong>Ventiladores: </strong>
                                            <xsl:value-of select="@ventiladoresIncluidos" />
                                        </li>
                                    </ul>
                                    <p class="precio">
                                        <xsl:value-of
                                            select="format-number($precioDescuento10, '#0.00')" /> € </p>
                                    <a href="{info}" target="_blank">Más información</a>
                                </div>
                            </article>
                        </xsl:for-each>
                    </div>
                </section>

                <!-- REFRIGERADOR -->
                <section>
                    <h2>Refrigeradores</h2>
                    <div class="grid">
                        <xsl:for-each select="$XMLordenador//ordenador/componentes/refrigerador">
                            <xsl:variable name="precioOriginal" select="number(precio)" />
                            <xsl:variable
                                name="precioDescuento10" select="$precioOriginal * 0.9" />

                            <article
                                class="card">
                                <img src="../imagenes/refrigerador/{img}" alt="{texto}" />
                                <div class="card-content">
                                    <h3>
                                        <xsl:value-of select="texto" />
                                    </h3>
                                    <ul>
                                        <li>
                                            <strong>Marca: </strong>
                                            <xsl:value-of select="@marca" />
                                        </li>
                                        <li>
                                            <strong>Tipo: </strong>
                                            <xsl:value-of select="@tipo" />
                                        </li>
                                        <li>
                                            <strong>Socket: </strong>
                                            <xsl:value-of select="@compatibleSocket" />
                                        </li>
                                        <li>
                                            <strong>Ruido: </strong>
                                            <xsl:value-of select="@ruido" />
                                        </li>
                                    </ul>
                                    <p class="precio">
                                        <xsl:value-of
                                            select="format-number($precioDescuento10, '#0.00')" /> € </p>
                                    <a href="{info}" target="_blank">Más información</a>
                                </div>
                            </article>
                        </xsl:for-each>
                    </div>
                </section>

                <button onclick="subirArriba()" id="botonSubir" title="Volver arriba">↑</button>
                <script src="../script/script.js"></script>
            </body>
            <footer>
                <p>© 2026 PCTrend</p>
            </footer>
        </html>
    </xsl:template>
</xsl:stylesheet>