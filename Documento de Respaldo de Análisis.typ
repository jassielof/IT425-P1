#import "template/apa7/lib.typ": *

#show: apa7.with(
  title: [Revisión Crítica de Artículos Científicos],
  custom-authors: [Jassiel Ovando Franco],
  custom-affiliations: [Facultad de Ingeniería, Universidad de Santa Cruz de la Sierra],
  course: [IT425: Gestión de la Calidad Total],
  instructor: [Mgs. Alfonso Meneses Pereira],
  due-date: datetime.today().display(),
  language: "es",
  region: "bo",
  font-family: "Times New Roman",
  paper-size: "a4",
  toc: true,
)

La nomenclatura de investigación de artículos se rige de la siguiente forma (_Ficha de Lectura de Artículo Científico_):
- Título del Artículo
- Autor(es)
- Año de Publicación
- Fuente (Revista/Conferencia, Volumen, Número, Páginas)

#let ficha(
  título: [],
  autores: [],
  año: [],
  fuente: [],
  caption: [],
) = {
  [Se presenta la siguiente ficha de lectura del artículo científico:]
  figure(
    table(
      columns: 2,
      align: (right, left),
      table.hline(),
      table.header(
        [Característica], [Descripción],
      ),
      table.hline(),
      [Nombre del Estudiante], [Jassiel Ovando Franco],
      [Fecha], datetime.today().display(),
      [Título del Artículo], título,
      [Autores], autores,
      [Año de Publicación], año,
      [Fuente], fuente,
      table.hline(),
    ),
    caption: caption,
  )
}

== Restricciones de los Artículos Científicos
- No más de 3 en el mismo idioma
- Normas APA
- 5 artículos mínimo
- Idiomas permitidos:
  - inglés
  - castellano
  - portugués
- de 2014--2024
- Bases de datos permitidas:
  - SciELO
  - Google Scholar
  - DOAJ
- Responder a la pregunta: _¿Cuáles son los posibles beneficios y los problemas de implementación del enfoque clásico de "Total Quality Management" (TQM) en las organizaciones modernas y cómo estas limitaciones afectan su eficacia?_
- Artículos con los tópicos:
  - Total Quality Management (TQM)
  - Gestión de la Calidad Total
  - Beneficios del TQM
  - Problemas de implementación del TQM
  - Limitaciones del TQM
  - TQM en organizaciones modernas
  - Desafíos del TQM
  - Eficacia del TQM
  - Calidad en las empresas
  - Enfoques clásicos de calidad

== Contenido
Más el contenido de cada artículo a investigar, se debe responder lo siguiente:
1. Objetivo y Pregunta de Investigación
  - *¿Cuál es el objetivo principal del artículo?* (Resumen de la principal cuestión o problema de investigación que aborda el artículo)
  - *¿Cuáles son las hipótesis o preguntas de investigación formuladas por el autor?* (Indica las hipótesis o preguntas específicas que el artículo investiga, si aplica)
2. Metodología Utilizada
  - *¿Cuál es el diseño de investigación?* (Cualitativo, Cuantitativo, Mixto, Estudio de Caso, Revisión de Literatura, etc.)
  - *¿Cuáles fueron los métodos de recopilación de datos?* (Entrevistas, cuestionarios, experimentos, análisis documental, etc.)
  - *¿Cuál es la muestra utilizada?* (Número de participantes, criterio de selección, etc.)
3. Resultados Principales
  - *¿Cuáles son los resultados principales obtenidos?* (Resumen de los resultados más relevantes presentados por el autor)
  - *¿Hay algún gráfico, tabla o figura que se destaque? ¿Por qué?* (Describe brevemente lo que se representa y su importancia)
4. Discusión y Conclusiones
  - *¿Cómo interpretan los autores los resultados?* (¿Qué conclusiones sacan los autores de los resultados y cómo las justifican?)
  - *¿Existen limitaciones mencionadas por los autores?* (Limitaciones metodológicas, de muestra, de contexto, etc.)
  - *¿Cuáles son las implicaciones prácticas o futuras sugerencias de investigación?* (Aplicabilidad de los resultados y sugerencias para futuras investigaciones)
5. Reflexión Crítica
  - *Puntos fuertes del artículo:* (¿Qué consideras que se hizo bien? Metodología, estructura, claridad, relevancia, etc.)
  - *Puntos débiles o limitaciones que no fueron abordadas por los autores:* (¿Cuáles crees que son las principales debilidades o áreas que podrían mejorarse?)
  - *¿Cómo contribuye este artículo a tu conocimiento en el área de gestión de la calidad?* (Reflexión personal sobre la utilidad del artículo para tu trayectoria académica o profesional)
  - *¿Cómo se responde la pregunta de investigación en cuestión?* (Respuesta a la pregunta de investigación: _¿Cuáles son los posibles beneficios y los problemas de implementación del enfoque clásico de "Total Quality Management" (TQM) en las organizaciones modernas y cómo estas limitaciones afectan su eficacia?_)
6. Referencia Completa (Formato APA)

#let artículo(
  título: [],
  palabras-clave: [],
  fuente: [],
  // ficha de investigación
  tabla-ficha: [],
  // objetivos y preguntas
  objetivo: [],
  preguntas: [],
  // metodología
  diseño: [],
  métodos: [],
  muestra-usada: [],
  // resultados
  resultados: [],
  gráficos: [],
  // discusiones y conclusiones
  interpretaciones: [],
  limitaciones: [],
  implicaciones-prácticas: [],
  futuras-sugerencias: [],
  // reflexiones
  fuertes: [],
  débiles: [],
  contribuciones: [],
  respuesta: [],
) = {
  pagebreak()
  heading(título, level: 1)
  text(style: "italic")[Palabras clave de búsqueda: #palabras-clave [#fuente]]

  heading([Ficha de Lectura de Artículo Científico], level: 2)
  tabla-ficha

  heading([Objetivos y Preguntas de Investigación], level: 2)
  heading([Objetivo Principal del Artículo], level: 3)
  objetivo
  
  heading([Hipótesis o Preguntas de Investigación], level: 3)
  preguntas

  heading([Metodología], level: 2)
  heading([Diseño de Investigación], level: 3)
  diseño

  heading([Métodos de Recopilación de Datos], level: 3)
  métodos

  heading([Muestra Usada], level: 3)
  muestra-usada

  heading([Resultados], level: 2)
  heading([Resultados Principales], level: 3)
  resultados

  heading([Gráficos, Figuras o Tablas Destacadas y Justificación], level: 3)
  gráficos

  heading([Discusión y Conclusiones], level: 2)
  heading([Interpretación de los Resultados], level: 3)
  interpretaciones

  heading([Limitaciones del Estudio], level: 3)
  limitaciones

  heading([Implicaciones Prácticas y Sugerencias Futuras], level: 3)
  heading([Implicaciones Prácticas], level: 4)
  implicaciones-prácticas

  heading([Sugerencias para futuras investigaciones], level: 4)
  futuras-sugerencias

  heading([Reflexión Crítica], level: 2)
  heading([Puntos Fuertes del Artículo], level: 3)
  fuertes

  heading([Puntos Débiles o Limitaciones no Abordadas], level: 3)
  débiles

  heading([Contribución al Conocimiento en Gestión de la Calidad], level: 3)
  contribuciones

  heading([Respuesta a la Pregunta de Investigación], level: 4)
  respuesta
}

#artículo(
  título: [Artículo 1: A systematic literature review of Total Quality Management (TQM) implementation in the organization~@Permana_Purba_Rizkiyah_2021],
  palabras-clave: [Total Quality Management (TQM)],
  fuente: [Google Academy],
  tabla-ficha: ficha(
    título: [A systematic literature review of Total Quality Management (TQM) implementation in the organization],
    autores: cite(<Permana_Purba_Rizkiyah_2021>, form: "author"),
    año: cite(<Permana_Purba_Rizkiyah_2021>, form: "year"),
    fuente: [Google Academy (_Total Quality Management (TQM)_), International Journal of Advanced Science and Technology, 9(1), 25--36],
    caption: [Ficha de Lectura del Artículo 1],
  ),
  objetivo: [
El objetivo principal del artículo es evaluar la relevancia y efectividad del concepto de Gestión de Calidad Total (TQM) en la mejora del rendimiento empresarial y la satisfacción del cliente en el entorno empresarial actual. Para ello, los autores realizan una revisión sistemática de la literatura sobre la implementación del TQM en diversas industrias.

Entre los puntos clave, se encuentran:

- *Relevancia del TQM:* El artículo investiga la relevancia y efectividad del concepto de Gestión de Calidad Total (TQM) en la mejora del rendimiento empresarial y la satisfacción del cliente en el entorno empresarial actual.
- *Revisión Sistemática:* Realiza una revisión sistemática de la literatura sobre la implementación del TQM en diversas industrias para evaluar su impacto y beneficios.
- *Resultados:* Concluye que el TQM sigue siendo ampliamente utilizado y exitoso en mejorar la competitividad, el crecimiento empresarial y la moral de los empleados.
- *Desafíos y Adaptación:* Destaca la necesidad de que las organizaciones se adapten a un entorno de mercado dinámico y competitivo, enfocándose en la calidad del producto, la rapidez de entrega y el costo competitivo.
  ],
  preguntas: [
El artículo realiza una revisión sistemática de la literatura sobre la implementación de la Gestión de Calidad Total (TQM) en las organizaciones. Aunque no se formulan hipótesis específicas, el estudio se centra en las siguientes preguntas de investigación:

- *Relevancia y efectividad de TQM:* ¿Sigue siendo relevante y efectiva la implementación de TQM para mejorar el rendimiento empresarial y la satisfacción del cliente?
- *Impacto en diferentes sectores:* ¿Cómo afecta la implementación de TQM a diferentes sectores industriales?
- *Factores de éxito y barreras:* ¿Cuáles son los factores clave para el éxito y las barreras en la implementación de TQM?
  ],
  diseño: [
El diseño de investigación de este artículo es una *Revisión de Literatura Sistemática*. Se recopilaron y revisaron en detalle diversas literaturas de múltiples sectores industriales para observar la relevancia y efectividad del concepto de *Gestión de Calidad Total (TQM)* en la mejora del rendimiento empresarial y la satisfacción del cliente.
  ],
  métodos: [
En el artículo se describe que el estudio se llevó a cabo en cuatro etapas principales:

- *Recopilación de artículos:* Se recopilaron artículos, revistas y algunos libros de texto predefinidos.
- *Revisión rápida:* Se realizó una revisión rápida para identificar los artículos apropiados.
- *Revisión exhaustiva:* Se llevó a cabo una revisión exhaustiva de los artículos seleccionados.
- *Clasificación:* Los artículos se clasificaron en cuatro grupos: aplicación del TQM, impacto del TQM, revisión del TQM y relación del TQM.
  ],
  muestra-usada: [
La muestra utilizada en el estudio consistió en *50 artículos* revisados en profundidad. Estos artículos fueron seleccionados a partir de una búsqueda preliminar de *108 artículos* relacionados con palabras clave definidas. Los artículos fueron revisados rápidamente para identificar los más apropiados, resultando en una lista corta de *50 artículos* que fueron revisados y clasificados en detalle en cuatro grupos: *Aplicación del TQM, Impacto del TQM, Revisión del TQM y Relación del TQM*.
  ],
  resultados: [
Los resultados principales del artículo incluyen:

- *Relevancia del TQM:* El concepto de *Total Quality Management (TQM)* sigue siendo ampliamente utilizado y efectivo en diversas industrias para mejorar la competitividad, el crecimiento empresarial y la sostenibilidad.
- *Impacto en el rendimiento:* La implementación del TQM ha demostrado mejorar significativamente el rendimiento organizacional, la satisfacción del cliente y la ventaja competitiva.
- *Factores clave:* La *cultura organizacional*, la *comunicación* y el *compromiso de la dirección* son factores críticos para el éxito del TQM.
- *Aplicaciones diversas:* El TQM se ha implementado con éxito en sectores como la manufactura, la educación, los servicios financieros y las pequeñas y medianas empresas (PYME).
  ],
  gráficos: [
Entre las figuras destacadas, la Figura 3 (Marco de relación de TQM) es particularmente relevante, ya que ilustra cómo el TQM se relaciona con la ventaja competitiva y la satisfacción del cliente, mostrando el impacto del TQM en las organizaciones. Aunque, se pueden mencionar otras figuras y tablas importantes como:

- *Figura 3: Marco de relación de TQM:* Ilustra cómo el TQM se relaciona con la ventaja competitiva y la satisfacción del cliente. Es esencial porque muestra la relevancia y el impacto del TQM en las organizaciones.
- *Figura 1: Marco del estudio:* Representa las etapas del estudio, desde la recopilación de artículos hasta la clasificación en cuatro grupos. Es importante porque muestra el proceso metodológico seguido en la revisión sistemática.
- *Tabla 1: Definición de calidad:* Enumera diferentes definiciones de calidad, como la basada en el producto, el usuario y la manufactura. Es crucial para entender cómo se percibe y mide la calidad en diferentes contextos.
  ],
  interpretaciones: [
Los autores del artículo concluyen que el concepto de *Gestión de Calidad Total (TQM)* sigue siendo relevante y efectivo para mejorar el rendimiento empresarial y la satisfacción del cliente. Las conclusiones clave son:

- *Relevancia Continua:* TQM sigue siendo utilizado por muchas organizaciones en todo el mundo y ha demostrado ser beneficioso para mejorar la competitividad, el crecimiento empresarial y la sostenibilidad.
- *Mejora del Rendimiento:* La implementación de TQM ha mostrado mejoras significativas en el rendimiento organizacional, incluyendo la satisfacción del cliente y la moral de los empleados.
- *Adaptabilidad:* TQM es adaptable a diferentes sectores industriales y sigue siendo compatible con los estándares de gestión modernos como ISO 9001.
- *Compromiso y Participación:* La implementación exitosa de TQM requiere el compromiso total de la dirección y la participación activa de los empleados.
  ],
  limitaciones: [
El artículo menciona algunas limitaciones en la implementación del TQM (Total Quality Management) en las organizaciones. Las principales son:

- *Falta de comunicación:* La falta de comunicación efectiva puede ser una barrera significativa para la implementación exitosa del TQM.
- *Compromiso de la gestión:* La falta de compromiso por parte de la alta dirección puede dificultar la implementación del TQM.
- *Conocimiento y cultura:* La falta de conocimiento y una cultura organizacional adecuada pueden afectar negativamente la implementación del TQM.
- *Recursos y estructura:* La falta de recursos y una estructura organizacional inapropiada también pueden ser obstáculos importantes.
  ],
  implicaciones-prácticas: [
La TQM sigue siendo relevante y efectiva en mejorar la competitividad, crecimiento empresarial y sostenibilidad en diversas industrias. Su implementación requiere compromiso de la dirección y participación de los empleados.
  ],
  futuras-sugerencias: [
Se recomienda continuar estudiando la TQM en sectores emergentes como el comercio electrónico y las startups digitales para asegurar su aplicabilidad y efectividad en estos nuevos contextos.
  ],
  fuertes: [
Puntos fuertes del artículo:

- *Metodología Sistemática:* El artículo utiliza una revisión sistemática de la literatura, lo que asegura un análisis exhaustivo y bien estructurado de múltiples fuentes y sectores industriales.
- *Claridad y Estructura:* La información está bien organizada en secciones claras, facilitando la comprensión de los conceptos y resultados presentados.
- *Relevancia Actual:* Se destaca que el TQM sigue siendo relevante y efectivo en la mejora del rendimiento empresarial y la satisfacción del cliente en el entorno empresarial actual.
- *Amplia Cobertura:* El estudio abarca una variedad de sectores industriales y geográficos, proporcionando una visión global de la implementación y los beneficios del TQM.
  ],
  débiles: [
Puntos débiles o limitaciones no abordadas:

- *Falta de Enfoque en la Innovación:* El artículo no aborda cómo la TQM puede integrarse con nuevas tecnologías y métodos innovadores para mejorar aún más la calidad y la eficiencia.
- *Desafíos Culturales:* No se discuten en profundidad los desafíos culturales y de cambio organizacional que pueden surgir al implementar TQM en diferentes contextos y países.
- *Medición de Impacto:* Aunque se mencionan algunos beneficios, no se proporciona un marco detallado para medir el impacto a largo plazo de la TQM en diversas industrias.
- *Adaptación a Nuevos Sectores:* El artículo no explora cómo la TQM puede adaptarse y ser relevante para sectores emergentes como el comercio electrónico y las startups digitales.
  ],
  contribuciones: [
Este artículo contribuye al conocimiento en gestión de la calidad al confirmar la relevancia continua del TQM, describir su evolución y demostrar su impacto positivo en diversas industrias. Algunos aspectos clave de la contribución incluyen:

- *Relevancia del TQM:* El artículo confirma que el *Total Quality Management (TQM)* sigue siendo relevante y efectivo para mejorar el rendimiento empresarial y la satisfacción del cliente en diversos sectores industriales.
- *Evolución del TQM:* Describe la evolución del TQM en cuatro etapas: *inspección de calidad, control de calidad, aseguramiento de calidad y gestión de calidad total*.
- *Impacto del TQM:* Muestra cómo la implementación del TQM ha mejorado la *competitividad, el crecimiento empresarial y la moral de los empleados*.
- *Metodología:* Utiliza una *revisión sistemática de la literatura* para evaluar la efectividad del TQM en diferentes industrias y contextos.
  ],
  respuesta: [
En respuesta a la pregunta de investigación sobre los beneficios y problemas de implementación del TQM en las organizaciones modernas, el artículo destaca que:

  - *Relevancia y Beneficios del TQM:* El TQM sigue siendo relevante y ampliamente utilizado en diversas industrias. Ayuda a mejorar la competitividad, el crecimiento empresarial y la sostenibilidad, además de aumentar la moral de los empleados.
  - *Desafíos de Implementación:* La falta de comunicación y el compromiso de la gestión son barreras significativas. La implementación efectiva requiere compromiso de la dirección y la participación de los empleados.
  - *Impacto en el Rendimiento:* La implementación del TQM ha demostrado mejorar el rendimiento organizacional, la satisfacción del cliente y la ventaja competitiva.
  - *Evolución del TQM:* El TQM ha evolucionado a lo largo de los años, comenzando con la inspección de calidad y avanzando hacia un enfoque integral que involucra a toda la organización.
  ],
)

== 14 Puntos de Deming


#artículo(
  título: [Artículo 2: IMPACTO DE TOTAL QUALITY MANAGEMENT EN EL DESEMPEÑO ORGANIZATIVO~@TORRES_SANTA_CRUZ2019],
  palabras-clave: [Total Quality Management],
  fuente: [SciELO],
  tabla-ficha: ficha(
    título: [IMPACTO DE TOTAL QUALITY MANAGEMENT EN EL DESEMPEÑO ORGANIZATIVO],
    autores: cite(<TORRES_SANTA_CRUZ2019>, form: "author"),
    año: cite(<TORRES_SANTA_CRUZ2019>, form: "year"),
    fuente: [SciELO (_Total Quality Management_), Investigación & Desarrollo, 19, 43--58],
    caption: [Ficha de Lectura del Artículo 2],
  ),
  objetivo: [
El objetivo principal del artículo es verificar empíricamente cómo la adopción de los principios y prácticas de Total Quality Management (TQM) influye en el desempeño organizativo. Para ello, se utiliza la visión dinámica del Enfoque Basado en Competencias (EBC) para analizar cómo las organizaciones desarrollan capacidades específicas y regeneran competencias distintivas.

Entre los puntos clave, se encuentran:
- *Impacto de TQM en Desempeño Organizativo*: El artículo busca verificar empíricamente cómo la adopción de los principios y prácticas de *Total Quality Management (TQM)* influye en el desempeño organizativo.
- *Enfoque Basado en Competencias*: Se utiliza la visión dinámica del *Enfoque Basado en Competencias (EBC)* para analizar cómo las organizaciones desarrollan capacidades específicas y regeneran competencias distintivas.
- *Modelo Teórico y Hipótesis*: Se construye un modelo teórico de las relaciones entre variables y se formulan hipótesis que se contrastan mediante modelos de ecuaciones estructurales.
- *Resultados Positivos*: Los resultados muestran una relación positiva entre la introducción de TQM y la generación de competencias distintivas, lo que promueve mejores resultados empresariales.
  ],
  preguntas: [
El artículo formula cinco hipótesis de investigación específicas:

- *H1*: El grado en que una organización está concienciada con una estrategia de TQM está relacionado positivamente con el uso de los principios y las prácticas relativas a calidad.
- *H2*: La adopción de cada una de las dimensiones de TQM está altamente correlacionada con la adopción de las demás.
- *H3*: Existe una relación positiva entre el grado de adopción de TQM en una organización y la creación de competencias distintivas en marketing.
- *H4*: Existe una relación positiva entre la creación de competencias distintivas en marketing y el desempeño organizativo.
- *H5*: La relación positiva entre el grado de adopción de TQM y el desempeño organizativo se explica a través de la mediación de la creación de competencias distintivas en marketing.
  ],
  diseño: [
El diseño de investigación utilizado en el artículo es *cuantitativo*. Se aplicaron modelos de ecuaciones estructurales para contrastar las hipótesis formuladas y se utilizó una muestra de *219 hoteles de cuatro y cinco estrellas en España*. La investigación se realizó mediante *cuestionarios estructurados enviados por correo*.
  ],
  métodos: [
En el artículo, se utilizaron *cuestionarios estructurados* como método de recopilación de datos. Estos cuestionarios fueron enviados por correo a directivos de hoteles de cuatro y cinco estrellas en España. La encuesta estaba dividida en tres secciones, cada una destinada a evaluar uno de los constructos básicos del modelo teórico: TQM, competencias distintivas en marketing y desempeño organizativo. Se recibieron 231 cuestionarios, *de los cuales 219 fueron válidos para la investigación*.
  ],
  muestra-usada: [
La muestra utilizada en el estudio está compuesta por *219 hoteles de cuatro y cinco estrellas en España*.

- *Número de participantes*: 219 empresas hoteleras.
- *Criterio de selección*: Hoteles de cuatro y cinco estrellas, considerados como empresas intensivas en calidad.
- *Método de recolección de datos*: Encuesta enviada por correo, incluyendo una carta de presentación, el cuestionario estructurado, instrucciones y un compromiso de facilitar los resultados del estudio si el empresario lo solicitaba.
  ],
  resultados: [
Los hallazgos clave del estudio son:

- *Relación Positiva entre TQM y Competencias Distintivas*: La adopción de *Total Quality Management (TQM)* está positivamente relacionada con la generación de competencias distintivas en marketing.
- *Impacto en el Desempeño Organizativo*: Las competencias distintivas en marketing, generadas a través de TQM, mejoran significativamente el desempeño organizativo.
- *Efecto Mediador*: Las competencias distintivas en marketing actúan como mediadoras en la relación entre TQM y el desempeño organizativo, siendo el efecto indirecto más significativo que el directo.
- *Validez del Modelo*: El modelo teórico propuesto fue validado empíricamente, mostrando buenos índices de ajuste y fiabilidad en las mediciones.
  ],
  gráficos: [
La Figura 3, que representa la evolución de las estrategias de calidad desde la inspección hasta la gestión de la calidad total (TQM), es particularmente relevante para entender el contexto histórico y la importancia actual del TQM.

Además, se destacan otras figuras importantes como:

- *Figura 3: Estrategias basadas en la Calidad en función del Tiempo*: Representa la evolución de las estrategias de calidad desde la inspección hasta la gestión de la calidad total (TQM). Es relevante porque muestra cómo ha evolucionado el concepto de calidad a lo largo del tiempo.
- *Figura 1: Jerarquía entre Recursos, Capacidades, Competencias y Competencias Esenciales o Distintivas*: Esta figura muestra una jerarquía que clasifica los recursos y capacidades de una organización, destacando la importancia de las competencias distintivas para mejorar el desempeño organizativo.
- *Figura 2: Estructura Jerárquica de Competencias Distintivas*: Esta figura clasifica las competencias distintivas en tres niveles: funcionales, de coordinación y cohesión, y dinámicas o de innovación. Es importante porque ilustra cómo las competencias se integran y coordinan para generar ventajas competitivas.

Estas figuras son importantes porque ayudan a visualizar conceptos clave y la relación entre ellos, facilitando la comprensión del impacto de TQM en el desempeño organizativo.
  ],
  interpretaciones: [
Los autores concluyen que la adopción de TQM tiene un impacto positivo en el desempeño organizativo, mediado por la generación de competencias distintivas en marketing. Esto sugiere que TQM no solo mejora la calidad, sino que también desarrolla capacidades organizativas que conducen a un mejor rendimiento.

Las principales interpretaciones del estudio son:

- *Relación Positiva*: Existe una relación positiva entre la implementación de TQM y la generación de competencias distintivas en marketing, lo que a su vez mejora el desempeño organizativo.
- *Modelo Integrador*: La correcta aplicación de los principios y prácticas de TQM conduce a un modelo de dirección sólido y exitoso.
- *Competencias Distintivas*: La introducción de TQM genera competencias distintivas que permiten a las organizaciones obtener información valiosa y satisfacer plenamente a los clientes.
- *Impacto Mediador*: Las competencias distintivas en marketing actúan como mediadoras en la relación entre TQM y el desempeño organizativo, sugiriendo que su papel es crucial para evaluar los resultados empresariales.
  ],
  limitaciones: [
El artículo menciona varias limitaciones en la investigación:

- *Definiciones y Medidas de Desempeño*: Los estudios no usan las mismas definiciones y medidas de desempeño, lo que puede llevar a resultados contradictorios.
- *Factores Mediadores*: La mayoría de los estudios no consideran que TQM puede influir en el desempeño a través de factores mediadores.
- *Sector de Estudio*: La investigación empírica se ha realizado principalmente en el sector manufactura, dejando de lado el sector servicios.
- *Modelización con Ecuaciones Estructurales*: Pocos estudios empíricos emplean esta técnica para examinar TQM y su impacto.

Estas limitaciones resaltan la necesidad de más investigaciones empíricas y teóricas en diferentes sectores y contextos.
  ],
  implicaciones-prácticas: [
Los resultados permiten a los directivos discernir cuáles principios y prácticas de TQM son más relevantes para generar competencias distintivas en marketing, mejorando así los resultados empresariales y la posición competitiva de la organización.
  ],
  futuras-sugerencias: [
Se destaca la necesidad de abordar estudios empíricos en diferentes sectores de actividad para construir teoría sobre el impacto de TQM. Además, se sugiere investigar más sobre el rol específico de las competencias distintivas en marketing y su efecto mediador en el impacto de TQM sobre el desempeño organizativo.
  ],
  fuertes: [
Puntos fuertes del artículo:

- *Metodología rigurosa*: El estudio utiliza modelos de ecuaciones estructurales para contrastar las hipótesis, lo que aporta solidez y precisión a los resultados.
- *Estructura clara*: El artículo está bien organizado, con una introducción que contextualiza el problema, una revisión de la literatura, y una sección de resultados y discusión que facilita la comprensión.
- *Relevancia práctica*: La investigación se centra en el impacto del Total Quality Management (TQM) en el desempeño organizativo, un tema de gran importancia para las empresas que buscan mejorar su competitividad.
- *Aplicación empírica*: El estudio no solo se basa en teorías, sino que también aplica el modelo a empresas del sector servicios, proporcionando evidencia empírica que respalda las conclusiones.
  ],
  débiles: [
Puntos débiles o limitaciones no abordadas:

- *Falta de estudios empíricos en el sector servicios*: La mayoría de los estudios sobre TQM se han centrado en el sector manufacturero, dejando un vacío en la investigación aplicada a servicios, especialmente en turismo.
- *Definiciones y medidas inconsistentes*: Los estudios no utilizan las mismas definiciones y medidas de desempeño, lo que dificulta la comparación y generalización de los resultados.
- *Papel mediador de variables*: Muchos estudios no consideran que TQM puede influir en el desempeño a través de factores mediadores, lo que podría llevar a conclusiones incompletas.
- *Necesidad de modelización con ecuaciones estructurales*: Hay pocos estudios empíricos que emplean esta técnica para examinar TQM, lo que limita la comprensión de las relaciones complejas entre variables.
  ],
  contribuciones: [
Este artículo contribuye significativamente al conocimiento en gestión de la calidad al proporcionar evidencia empírica del impacto positivo de TQM en el desempeño organizativo, especialmente en el sector servicios. Además, destaca la importancia de las competencias distintivas en marketing como mediadoras de este impacto.

- *Comprensión de TQM*: Proporciona una visión detallada de cómo la *Gestión de la Calidad Total (TQM)* impacta el desempeño organizativo, lo que es esencial para implementar mejoras en cualquier organización.
- *Modelo Teórico*: Presenta un *modelo teórico* que relaciona TQM con competencias distintivas y desempeño organizativo, útil para investigaciones futuras o aplicaciones prácticas.
- *Metodología Empírica*: Ofrece una *metodología empírica* basada en modelos de ecuaciones estructurales, lo que puede ser valioso para realizar estudios similares en otros contextos.
- *Aplicación en Servicios*: Aunque muchos estudios se centran en manufactura, este artículo se enfoca en el *sector servicios*, ampliando el entendimiento de TQM en diferentes industrias.
  ],
  respuesta: [
En respuesta a la pregunta de investigación sobre los beneficios y problemas de implementación del TQM en las organizaciones modernas, el artículo muestra que:

- *Beneficios del TQM*: El TQM promueve la generación de competencias distintivas que mejoran el desempeño organizativo. Se destaca la relación positiva entre la adopción de TQM y la mejora en los resultados empresariales.
- *Problemas de Implementación*: La implementación de TQM puede enfrentar desafíos debido a la falta de consenso en su definición y la dificultad de medir sus principios y prácticas. Además, la mayoría de los estudios se han centrado en el sector manufacturero, dejando un vacío en el sector servicios.
- *Eficacia del TQM*: La eficacia de TQM está mediada por la generación de competencias distintivas en marketing, lo que sugiere que su impacto en el desempeño organizativo no es directo, sino a través de estas competencias.
- *Recomendaciones*: Se sugiere la necesidad de más estudios empíricos en el sector servicios y la consideración de variables mediadoras para entender mejor la relación entre TQM y el desempeño organizativo.
  ]
)

#artículo(
  título: [Artículo 3: Energy management and power quality improvement of microgrid system through modified water wave optimization~@CHOUDHURY20236020],
  palabras-clave: [Quality improvement strategies],
  fuente: [DOAJ],
  tabla-ficha: ficha(
    título: [Energy management and power quality improvement of microgrid system through modified water wave optimization],
    autores: cite(<CHOUDHURY20236020>, form: "author"),
    año: cite(<CHOUDHURY20236020>, form: "year"),
    fuente: [DOAJ (_Quality improvement strategies_), Energy Reports, 9, 6020--6041],
    caption: [Ficha de Lectura del Artículo 3],
  ),
  objetivo: [
El objetivo principal del artículo es mejorar la gestión energética y la calidad de potencia en un sistema de microredes integrado por celdas de combustible, baterías y supercapacitores. Para lograrlo, propone un algoritmo de Optimización de Ondas de Agua Modificado (MWWO) para ajustar dinámicamente los parámetros del controlador proporcional-integral (PI).

Entre los puntos clave, se encuentran:

- *Mejora de la Gestión Energética y Calidad de Potencia*: El artículo se centra en la mejora de la gestión energética y la calidad de potencia en un sistema de microredes integrado por celdas de combustible, baterías y supercapacitores.
- *Optimización de Ondas de Agua*: Propone un algoritmo de Optimización de Ondas de Agua Modificado (MWWO) para ajustar dinámicamente los parámetros del controlador proporcional-integral (PI) y mejorar la eficiencia del sistema.
- *Comparación de Métodos*: Compara la técnica propuesta con métodos tradicionales en términos de consumo de hidrógeno, calidad de potencia y eficiencia general del sistema.
- *Resultados Superiores*: Los resultados muestran que la técnica MWWO supera a los métodos tradicionales en respuesta dinámica de voltaje, consumo de combustible, reducción de armónicos y eficiencia general.
- *Optimización de Algoritmos:* El artículo se centra en mejorar el algoritmo de Optimización de Olas de Agua (WWO) para resolver problemas de optimización.
- *Desarrollo de MWWO:* Propone una técnica modificada llamada Optimización de Olas de Agua Modificada (MWWO) para equilibrar la exploración y explotación en la búsqueda de soluciones óptimas.
- *Aplicación en Microgrids:* Implementa la técnica MWWO en un sistema de microgrid que incluye celdas de combustible, baterías y supercapacitores para mejorar la calidad de la energía y la eficiencia del sistema.
- *Referencias*: El documento incluye una amplia variedad de referencias sobre temas como *celdas de combustible*, *optimización de sistemas de energía*, *gestión de microredes*, y *tecnologías de energía renovable*.
- *Diversidad de Temas*: Los artículos citados abarcan desde la *optimización de algoritmos* hasta la *gestión de energía en sistemas híbridos*.
- *Aplicaciones Prácticas*: Muchos estudios se centran en aplicaciones prácticas como la *mejora de la calidad de la energía* y la *gestión de recursos distribuidos*.
  ],
  preguntas: [
El artículo investiga estrategias de gestión de energía y mejora de la calidad de energía en un sistema de microred integrado por una celda de combustible, batería y supercapacitor. Las hipótesis o preguntas de investigación específicas formuladas por los autores incluyen:

- *Eficiencia del MWWO*: ¿El algoritmo de Optimización de Olas de Agua Modificado (MWWO) mejora la eficiencia y la calidad de energía en comparación con métodos tradicionales?
- *Consumo de Hidrógeno*: ¿El MWWO reduce el consumo de hidrógeno en el sistema de microred?
- *Distribución de Energía*: ¿El MWWO mejora la distribución de energía entre las fuentes híbridas?
- *Respuesta Dinámica*: ¿El MWWO proporciona una mejor respuesta dinámica de voltaje y reduce los armónicos en el sistema?
  ],
  diseño: [
El diseño de investigación de este artículo es *cuantitativo*. Se basa en la simulación y análisis numérico utilizando la arquitectura de MATLAB/Simulink para evaluar la eficacia de diferentes estrategias de gestión de energía y mejora de la calidad de energía en un sistema de microredes integrado por celdas de combustible, baterías y supercapacitores.
  ],
  métodos: [
El artículo que estás viendo no menciona explícitamente los métodos de recopilación de datos utilizados. Sin embargo, se puede inferir que los datos fueron obtenidos a través de *simulaciones en MATLAB/Simulink* y *análisis comparativos* de diferentes técnicas de optimización y control para la gestión de energía y mejora de la calidad de la energía en sistemas de microredes. 
  ],
  muestra-usada: [
_El artículo no menciona específicamente una muestra de participantes humanos, ya que se centra en la gestión de energía y la mejora de la calidad de energía en sistemas de microredes utilizando una técnica de optimización de olas de agua modificada_. La investigación se basa en simulaciones realizadas en el entorno MATLAB/Simulink para comparar la eficiencia de diferentes estrategias de gestión de energía y controladores.
  ],
  resultados: [
Los hallazgos clave del estudio son:

- *Eficiencia Mejorada*: La técnica propuesta de Optimización de Olas de Agua Modificada (MWWO) mostró una eficiencia superior en comparación con los métodos tradicionales, con menor consumo de hidrógeno y mejor respuesta dinámica de voltaje.
- *Calidad de Energía*: Se logró una reducción significativa de armónicos y una mejor distribución de energía entre las fuentes híbridas, mejorando la calidad de la energía del sistema.
- *Robustez del Sistema*: El sistema demostró una mayor robustez y estabilidad, con menor estrés en la celda de combustible, batería y supercondensador.
- *Comparación de Métodos*: Los resultados numéricos y gráficos confirmaron la superioridad del método MWWO sobre los métodos WWO y PI tradicionales en términos de eficiencia, consumo de combustible y calidad de energía.
  ],
  gráficos: [
Hay varias figuras y tablas en el documento. Una figura destacada es la *Figura 1*, que muestra una *representación esquemática del artículo de investigación*. Esta figura resalta las ideas clave del artículo, proporcionando una visión general clara y concisa de los conceptos y métodos discutidos.

La importancia de esta figura radica en su capacidad para *resumir visualmente* el contenido del artículo, facilitando la comprensión de los lectores sobre los temas principales y las contribuciones del estudio.
  ],
  interpretaciones: [
Los autores interpretan los resultados de su investigación de la siguiente manera:

- *Eficiencia y Robustez del MWWO*: Concluyen que el algoritmo de Optimización de Olas de Agua Modificado (MWWO) es más eficiente y robusto que los métodos tradicionales. Justifican esto mostrando una mejor respuesta dinámica de voltaje, menor consumo de combustible, reducción de armónicos y mayor eficiencia general del sistema.
- *Comparación con Métodos Tradicionales*: Los resultados obtenidos indican que el MWWO supera a los métodos tradicionales en términos de velocidad de convergencia, diversidad de soluciones y rendimiento general. 
- *Aplicabilidad en Tiempo Real*: Los autores destacan que la técnica propuesta es viable para su implementación en tiempo real debido a su capacidad para mejorar la calidad de la energía y la gestión eficiente de los recursos energéticos.
- *Impacto en la Vida Útil de los Recursos*: La técnica MWWO maximiza la eficiencia del combustible y minimiza el estrés en las fuentes de energía híbridas, lo que prolonga su vida útil.

Estas conclusiones se basan en un análisis numérico y gráfico detallado de los resultados obtenidos en el entorno de simulación MATLAB/Simulink.
  ],
  limitaciones: [
Los autores mencionan algunas limitaciones en su investigación:

- *Precisión de Cálculo*: La técnica básica de *Water Wave Optimization (WWO)* tiene una baja precisión de cálculo y tiende a caer en óptimos locales.
- *Temperatura de Operación*: Las *celdas de combustible de óxido sólido (SOFC)* operan a altas temperaturas, lo que puede aumentar los costos de material y hacerlas menos económicas.
- *Respuesta Adaptativa*: La alta temperatura de operación de las SOFCs también limita su capacidad de respuesta adaptativa ante perturbaciones.

Estas limitaciones se abordan mediante la implementación de técnicas mejoradas como el *Modified Water Wave Optimization (MWWO)*.
  ],
  implicaciones-prácticas: [
La técnica de *Optimización de Olas de Agua Modificada (MWWO)* propuesta ha demostrado ser superior en términos de *mejor respuesta de voltaje dinámico, menor consumo de combustible, reducción de armónicos y mayor eficiencia general*. Esto sugiere que puede ser implementada en sistemas de microredes para mejorar la gestión de energía y la calidad de la potencia.
  ], 
  futuras-sugerencias: [
Se recomienda explorar la *aplicación de la técnica MWWO en diferentes configuraciones de microredes* y con otros tipos de fuentes de energía renovable. Además, se sugiere investigar la *integración de técnicas de inteligencia artificial* para mejorar aún más la eficiencia y la adaptabilidad del sistema.
  ],
  fuertes: [
Puntos fuertes del artículo:

- *Metodología Innovadora*: El artículo presenta una técnica de Optimización de Olas de Agua Modificada (MWWO) para la gestión de energía y mejora de la calidad de energía en microredes, destacando su superioridad sobre métodos tradicionales.

- *Comparación Exhaustiva*: Se realiza una comparación detallada entre la técnica propuesta y métodos tradicionales en términos de consumo de hidrógeno, calidad de energía y eficiencia del sistema, demostrando la robustez y eficacia del MWWO.

- *Aplicación Práctica*: El sistema se implementa en un entorno MATLAB/Simulink, proporcionando resultados numéricos y gráficos que validan la efectividad del enfoque propuesto en condiciones de carga variables.

- *Relevancia y Actualidad*: El artículo aborda problemas contemporáneos en la gestión de energía y calidad de energía en sistemas de microredes, utilizando fuentes de energía renovable y tecnologías de almacenamiento de energía híbrida.
  ],
débiles: [
Puntos débiles o limitaciones no abordadas:

- *Precisión Computacional*: La técnica de Optimización de Olas de Agua (WWO) básica tiene baja precisión computacional y tiende a caer en óptimos locales.
- *Costos de Materiales*: Las Celdas de Combustible de Óxido Sólido (SOFC) operan a altas temperaturas, lo que incrementa los costos de materiales y las hace menos económicas.
- *Respuesta Adaptativa*: Las SOFC tienen una respuesta adaptativa limitada ante perturbaciones debido a su alta temperatura de operación.
- *Diversidad de Soluciones*: Aunque la técnica MWWO mejora la diversidad de soluciones, aún puede haber margen para optimizar la diversidad y la exploración del espacio de búsqueda.
  ],
contribuciones: [
El artículo sobre la *gestión de energía y mejora de la calidad de energía en sistemas de   microredes* mediante la *optimización de ondas de agua modificada* ofrece varias contribuciones valiosas:

- *Innovación en Algoritmos*: Introduce un algoritmo de optimización novedoso que mejora la eficiencia y la calidad de la energía en sistemas de microredes.
- *Comparación de Métodos*: Proporciona una comparación detallada entre técnicas tradicionales y el nuevo método propuesto, destacando sus ventajas en términos de consumo de hidrógeno, calidad de energía y eficiencia del sistema.
- *Aplicaciones Prácticas*: Demuestra la aplicabilidad del algoritmo en un entorno de simulación, lo que puede ser útil para futuras implementaciones en tiempo real.
- *Contribuciones Académicas*: Ofrece una base sólida para futuras investigaciones en la optimización de sistemas de energía, lo que puede ser beneficioso para tu trayectoria académica o profesional en el campo de la ingeniería eléctrica y la gestión de energía.
  ],
respuesta: [
Para responder a la pregunta de investigación sobre los beneficios y problemas de implementación del enfoque clásico de "Total Quality Management" (TQM) en las organizaciones modernas y cómo estas limitaciones afectan su eficacia, se pueden seguir estos pasos:

+ *Revisión de la Literatura*: Investigar estudios previos y artículos académicos que discutan los beneficios y problemas del TQM en diferentes contextos organizacionales.
+ *Estudio de Caso*: Analizar casos específicos de organizaciones que han implementado TQM, evaluando los resultados obtenidos y las dificultades encontradas.
+ *Encuestas y Entrevistas*: Recopilar datos cualitativos y cuantitativos de empleados y directivos sobre su experiencia con TQM, identificando beneficios percibidos y problemas enfrentados.
+ *Análisis Comparativo*: Comparar los resultados de TQM con otros enfoques de gestión de calidad para determinar su eficacia relativa y las limitaciones específicas en contextos modernos.

Estos pasos permitirán una comprensión integral de cómo el TQM puede beneficiar a las organizaciones modernas y las barreras que pueden limitar su eficacia.
  ]
)

#artículo(
  título: [Artículo 4: Estudo de caso em uma empresa do setor madeireiro do Alto Paranaíba: uma proposta de implementação da gestão da qualidade total e da gestão da rotina / Quality management and current approaches: a case study in a logging company located in the Alto Paranaíba~@Ananias_Grossi_Peixoto_Mendonça_Melo_Barbosa_2020],
  palabras-clave: [Problemas de implementação do TQM],
  fuente: [Google Academy],
  tabla-ficha: ficha(
    título: [Estudo de caso em uma empresa do setor madeireiro do Alto Paranaíba: uma proposta de implementação da gestão da qualidade total e da gestão da rotina],
    autores: cite(<Ananias_Grossi_Peixoto_Mendonça_Melo_Barbosa_2020>, form: "author"),
    año: cite(<Ananias_Grossi_Peixoto_Mendonça_Melo_Barbosa_2020>, form: "year"),
    fuente: [Google Academy (_Problemas de implementação do TQM_), Brazilian Journal of Business, 2(2), 965--978],
    caption: [Ficha de Lectura del Artículo 4],
  ),
  objetivo: [
El objetivo principal del artículo es *identificar características de la gestión de la calidad total (TQM) y del Gerenciamento de la Rotina do Dia-a-Dia (GRD)* en una empresa del sector madeireiro situada en la región del Alto Paranaíba. Se busca *proponer mejoras* mediante la aplicación del GRD, enfocándose en el proceso de producción del principal producto de la empresa, la puerta, para *fomentar la mejora continua* y la participación de los empleados en la búsqueda de la calidad en todas las etapas de los procesos.
    ],
  preguntas: [
El artículo no menciona explícitamente hipótesis o preguntas de investigación específicas. Sin embargo, el objetivo principal del estudio es *identificar características de la gestión de la calidad total (TQM) y del Gerenciamento da Rotina do Dia-a-Dia (GRD)* en una empresa del sector madeireiro en la región del Alto Paranaíba. Además, busca *evaluar la viabilidad de aplicar el GRD* en el proceso de producción del principal producto de la empresa, la puerta, y *proponer mejoras* para fomentar la participación de los empleados en la mejora continua de las actividades diarias.
  ],
  diseño: [
El diseño de investigación utilizado en este artículo es *cualitativo* y se clasifica como un *estudio de caso*. Se enfoca en identificar y retratar características de la Gestión de la Calidad Total (TQM) y la Gestión de la Rutina del Día a Día (GRD) en una empresa del sector madeireiro.
  ],
  métodos: [
En el estudio de caso presentado en la página actual, los *métodos de recopilación de datos* utilizados fueron:

- *Entrevistas*: Se realizó una entrevista semiestructurada con el gerente de producción para identificar características de la Gestión de la Calidad Total (TQM) y la Gestión de la Rutina del Día a Día (GRD).
- *Observación*: Se llevaron a cabo observaciones en la empresa para alinear la teoría con la práctica.
- *Análisis documental*: Se utilizó un levantamiento bibliográfico y el apoyo en el referencial teórico para elaborar los cuestionarios y guías de entrevista.

Estos métodos permitieron obtener una visión integral de los procesos y prácticas de la empresa.
  ],
  muestra-usada: [
En el estudio de caso presentado en el artículo, la muestra utilizada fue una *empresa del sector madeireiro* localizada en la región del Alto Paranaíba. Esta empresa cuenta con *15 empleados* en el área productiva y fabrica productos de madera mecanicamente procesada, como puertas, portales, ventanas, entre otros. La selección de esta empresa se basó en su relevancia dentro del sector y su disposición para participar en el estudio.
  ],
  resultados: [
Los resultados más relevantes presentados en el artículo son:

- *Falta de Herramientas de Calidad*: La empresa no utiliza herramientas formales de gestión de calidad, lo que resulta en una falta de padronización y control de procesos.
- *Problemas de Calidad*: Se identificaron problemas críticos como las fisuras en las puertas, que representan el 60% de las reclamaciones de los clientes.
- *Propuesta de Mejoras*: Se sugirió la implementación de la metodología CEDAC y el sistema 5S para mejorar la calidad y organización del ambiente de trabajo.
- *Orientación al Cliente*: La empresa muestra preocupación por las necesidades de los clientes, pero de manera informal y sin indicadores de calidad establecidos.
  ],
  gráficos: [
En el artículo, se destacan dos figuras importantes:

- *Figura 1: Desdoblamiento metodológico para obtenção dos resultados*: Esta figura muestra el proceso metodológico utilizado para obtener los resultados del estudio. Es importante porque ilustra cómo se estructuró la investigación y los pasos seguidos para recolectar y analizar los datos.
- *Figura 2: Mapeamento do processo produtivo da porta*: Esta figura representa el mapeo del proceso de producción de puertas, desde la recepción del pedido hasta la entrega al cliente. Es crucial porque identifica los puntos críticos y áreas de mejora en el proceso productivo, lo que es esencial para implementar la gestión de la calidad total y la gestión de la rutina.

Estas figuras ayudan a visualizar y entender mejor los procesos y metodologías discutidos en el artículo.
  ],
  interpretaciones: [
Los autores concluyen que la empresa necesita implementar el *gerenciamiento de la rutina* para mejorar la calidad en todos sus procesos diarios. Aquí están las conclusiones clave:

- *Necesidad de Gestión de Calidad*: La empresa debe enfocarse más en la gestión de la calidad, ya que actualmente no utiliza herramientas ni métodos formales para ello.
- *Propuesta de GRD*: La aplicación del Gerenciamento da Rotina do Dia-a-Dia (GRD) es necesaria para mejorar la calidad de los productos y procesos.
- *Participación de los Empleados*: La metodología CEDAC se sugiere para fomentar la participación de los empleados en la mejora continua.
- *Implementación de Otras Abordajes*: Además del GRD, se recomienda implementar la gestión por diretrizes y la gestión por procesos para asegurar la calidad a largo plazo.

Estas conclusiones se justifican mediante la observación de la falta de padronización y control en los procesos actuales de la empresa.
  ],
  limitaciones: [
El artículo menciona las siguientes limitaciones:

- *Falta de Padronización*: La empresa no tiene una padronización formal de sus procesos ni utiliza herramientas de gestión de calidad.
- *Enfoque Reactivo*: La mejora de procesos se realiza solo después de recibir quejas de los clientes, en lugar de prevenir problemas.
- *Ausencia de Indicadores*: No se utilizan indicadores de calidad ni sistemas de control para monitorear el desempeño de los procesos.
- *Falta de Capacitación*: No se proporciona entrenamiento a los empleados para consolidar mejoras y mantener la calidad.

Estas limitaciones afectan la efectividad de la gestión de calidad en la empresa estudiada.
  ],
  implicaciones-prácticas: [
La implementación del *Gerenciamento da Rotina do Dia-a-Dia (GRD)* en la empresa maderera puede mejorar significativamente la calidad de los productos y la eficiencia de los procesos. Se sugiere la adopción de herramientas como el *5S* y *Procedimientos Operacionales Padrón (POP)* para mantener un ambiente de trabajo limpio y organizado.
  ],
  futuras-sugerencias: [
Se recomienda explorar la implementación de otras metodologías de gestión de calidad, como la *Gestión por Diretrizes* y la *Gestión por Procesos*, para evaluar su impacto en la mejora continua y la satisfacción del cliente a largo plazo.
  ],
  fuertes: [
El estudio se destaca por una metodología clara y estructurada, incluyendo entrevistas y observación. Además, aborda un tema relevante en un sector significativo como el maderero, y propone soluciones prácticas, como la metodología CEDAC y los Procedimientos Operacionales Padrón (POP), para mejorar la calidad y fomentar la participación de los empleados.

- *Metodología clara y estructurada*: El artículo utiliza una metodología bien definida, incluyendo entrevistas y observaciones, para alinear la teoría con la práctica en la empresa estudiada.
- *Relevancia del estudio*: La investigación aborda la implementación de la Gestión de la Calidad Total (TQM) y la Gestión de la Rutina del Día a Día (GRD) en una empresa del sector madeireiro, un área económica significativa.
- *Propuestas de mejora*: Se sugieren mejoras prácticas, como la implementación de la metodología CEDAC y el uso de Procedimientos Operacionales Padrón (POP), para fomentar la participación de los empleados y la mejora continua.
- *Análisis detallado*: El artículo proporciona un análisis exhaustivo de los procesos y microprocesos de la empresa, identificando problemas críticos y proponiendo soluciones específicas.
  ],
  débiles: [
El artículo no menciona la falta de herramientas formales como el ciclo PDCA, ni aborda la necesidad de capacitación continua para los empleados. Tampoco se discuten indicadores de calidad específicos, lo cual sería esencial para la mejora continua.

- *Falta de herramientas formales*: La empresa no utiliza herramientas formales de gestión de calidad, como el ciclo PDCA o Procedimientos Operacionales Estándar (POP), lo que podría mejorar la estandarización y control de procesos.
- *Indicadores de calidad*: No se mencionan indicadores de calidad específicos para monitorear y evaluar el desempeño de los procesos, lo que es crucial para la mejora continua.
- *Capacitación de empleados*: No se aborda la necesidad de capacitación continua para los empleados, lo cual es esencial para mantener y mejorar la calidad.
- *Gestión visual*: La implementación de metodologías como CEDAC para la gestión visual podría fomentar una mayor participación de los empleados en la mejora continua.
  ],
  contribuciones: [
Este artículo ofrece una visión práctica sobre la implementación de TQM y GRD, conceptos clave en la gestión de la calidad. Además, identifica desafíos comunes en el sector maderero y ofrece soluciones que pueden aplicarse en situaciones similares, lo que lo hace relevante para quienes buscan mejorar la calidad en entornos industriales.

- *Implementación Práctica*: Proporciona un caso de estudio real sobre la implementación de la Gestión de la Calidad Total (TQM) y la Gestión de la Rutina del Día a Día (GRD) en una empresa del sector madeireiro, lo que puede ayudarte a entender cómo aplicar estos conceptos en situaciones prácticas.
- *Metodologías y Herramientas*: Discute metodologías como CEDAC y herramientas como el ciclo PDCA y 5S, que son fundamentales para la mejora continua y la gestión de la calidad.
- *Desafíos y Soluciones*: Identifica problemas comunes en la gestión de la calidad en el sector madeireiro y propone soluciones prácticas, lo que puede ser relevante para enfrentar desafíos similares en tu carrera.
- *Participación de los Empleados*: Resalta la importancia de la participación de los empleados en la mejora continua, un aspecto crucial para el éxito de cualquier sistema de gestión de la calidad.
  ],
  respuesta: [
El artículo responde a la pregunta de investigación destacando que el enfoque clásico de TQM, combinado con herramientas como GRD y CEDAC, puede generar beneficios en términos de mejora continua. Sin embargo, la falta de capacitación y de indicadores formales limita su efectividad en organizaciones modernas. Estas limitaciones pueden afectar la sostenibilidad de los resultados a largo plazo si no se abordan correctamente.

- *Beneficios del TQM*: El TQM busca la *mejora continua* de los procesos, productos y servicios, involucrando a todos los miembros de la organización para satisfacer y superar las expectativas de los clientes.
- *Problemas de Implementación*: La empresa estudiada no tiene *padronización formal* de sus procesos ni utiliza herramientas de gestión de calidad, lo que lleva a una falta de control y previsibilidad en los resultados.
- *Limitaciones y Eficacia*: La falta de *indicadores de desempeño* y *sistemas de control* adecuados impide que la empresa implemente eficazmente el TQM, afectando negativamente la calidad y la satisfacción del cliente.
- *Propuestas de Mejora*: Se sugiere la implementación de metodologías como *CEDAC* y *5S* para mejorar la participación de los empleados y la calidad de los procesos.

Estos puntos resumen cómo el artículo aborda la pregunta de investigación, destacando tanto los beneficios potenciales como las limitaciones prácticas del TQM en la empresa estudiada.
  ],
)

#artículo(
  título: [Artículo 5: Identifying critical assumptions and risks in air quality management planning using Theory of Change approach~@PHATHUTSHEDDZO_2024],
  palabras-clave: [Quality management challenges],
  fuente: [SciELO],
  tabla-ficha: ficha(
    título: [Identifying critical assumptions and risks in air quality management planning using Theory of Change approach],
    autores: cite(<PHATHUTSHEDDZO_2024>, form: "author"),
    año: cite(<PHATHUTSHEDDZO_2024>, form: "year"),
    fuente: [SciELO (_Quality management challenges_), Clean Air Journal, 34, 1--19],
    caption: [Ficha de Lectura del Artículo 5],
  ),
  objetivo: [
El artículo tiene como objetivo *identificar las suposiciones críticas y los riesgos* en la planificación de la gestión de la calidad del aire utilizando el enfoque de la *Teoría del Cambio (ToC)*. Se enfoca en evaluar la *eficacia de los Planes de Gestión de la Calidad del Aire (AQMP)* como instrumento de política, específicamente en el contexto de Sudáfrica, para abordar los desafíos de calidad del aire en áreas prioritarias.

- *Identificación de Supuestos Críticos:* El artículo se centra en *identificar los supuestos críticos y riesgos* en la planificación de la gestión de la calidad del aire utilizando el enfoque de Teoría del Cambio (ToC).
- *Mejora de la Gestión del Aire:* Busca *mejorar la efectividad* de los planes de gestión de la calidad del aire en Sudáfrica.
- *Participación de Múltiples Actores:* Destaca la *importancia de la colaboración* entre diferentes actores, incluyendo académicos, consultores, industria, reguladores y organizaciones no gubernamentales.
  ],
  preguntas: [
El artículo investiga las siguientes hipótesis y preguntas de investigación:

- *Hipótesis sobre el marco legislativo*: Se asume que el marco legislativo proporciona una guía adecuada para el desarrollo e implementación de los Planes de Gestión de la Calidad del Aire (AQMP).
- *Hipótesis sobre los recursos*: Se asume que existen los recursos necesarios (tiempo, dinero, datos, información, habilidades y competencias) para desarrollar e implementar los AQMP.
- *Hipótesis sobre la gobernanza cooperativa*: Se asume que existe una gobernanza cooperativa entre las partes interesadas del gobierno.
- *Preguntas sobre la efectividad*: ¿Qué tan efectivos son los AQMP como instrumentos de política en Sudáfrica y cuáles son los riesgos y suposiciones críticas que afectan su éxito o fracaso?

Estas hipótesis y preguntas son fundamentales para evaluar la efectividad de los AQMP en Sudáfrica utilizando el enfoque de la Teoría del Cambio (ToC).
  ],
  diseño: [
El diseño de investigación del artículo es *cualitativo*. Utiliza el enfoque de la *Teoría del Cambio (ToC)* para identificar supuestos críticos y riesgos en la planificación de la gestión de la calidad del aire en Sudáfrica. Este método implica la participación de diversos actores y la evaluación de las relaciones causales y secuencias de eventos necesarios para alcanzar los resultados deseados.
  ],
  métodos: [
El artículo describe los métodos de recopilación de datos utilizados en el estudio sobre la planificación de la gestión de la calidad del aire en Sudáfrica. Aquí están los métodos principales:

- *Talleres con especialistas*: Se realizaron talleres con especialistas internos en la Universidad del Noroeste para desarrollar un mapa conceptual inicial y suposiciones clave.
- *Talleres con académicos, consultores y profesionales de la industria*: Se llevaron a cabo talleres adicionales con académicos, consultores y profesionales de la industria para refinar el mapa conceptual y las suposiciones.
- *Talleres con reguladores*: Se presentaron los resultados a reguladores gubernamentales para obtener su retroalimentación.
- *Revisión de literatura*: Se realizó una revisión sistemática de la literatura académica y no revisada por pares para identificar suposiciones existentes.
  ],
  muestra-usada: [
La muestra utilizada en el estudio se seleccionó a través de varios talleres y discusiones con diferentes grupos de interés. Los detalles clave siendo:

- *Talleres Especializados*: Participaron cinco especialistas internos de la Universidad del Noroeste (NWU) con experiencia en la aplicación del enfoque de la Teoría del Cambio (ToC).
- *Consultores y Practicantes*: Se realizaron tres talleres separados con académicos, consultores y practicantes de la industria, incluyendo científicos y oficiales ambientales.
- *Reguladores*: Participaron 11 funcionarios gubernamentales de diferentes niveles de gobierno, incluyendo departamentos nacionales, provinciales y municipales.
- *Organizaciones No Gubernamentales*: Tres miembros de organizaciones de justicia ambiental participaron en discusiones generales.

Estos participantes fueron seleccionados en base a su experiencia, conocimiento y participación directa en el proceso de desarrollo e implementación de los Planes de Gestión de la Calidad del Aire (AQMP) en Sudáfrica.
  ],
  resultados: [
Los resultados clave del estudio sobre la planificación de la gestión de la calidad del aire en Sudáfrica son los siguientes:

- *Mapa de Teoría del Cambio (ToC)*: Se desarrolló un mapa conceptual de ToC para el proceso de desarrollo e implementación de los Planes de Gestión de Calidad del Aire (AQMP) en Sudáfrica.
- *Identificación de Suposiciones Críticas*: Se identificaron 15 suposiciones críticas que pueden impactar significativamente el éxito o fracaso del sistema AQMP.
- *Narrativa Causal*: Se creó una narrativa causal que describe las relaciones y secuencias de eventos necesarios para que el AQMP alcance sus resultados previstos.
- *Riesgos Clave*: Se identificaron riesgos clave que subyacen al desarrollo e implementación del AQMP en Sudáfrica.
  ],
  gráficos: [
Hay una figura destacada en el artículo: *Figura 2*. Esta figura muestra un *mapa conceptual de la Teoría del Cambio (ToC)* para el proceso de desarrollo e implementación del Plan de Gestión de la Calidad del Aire (AQMP) en Sudáfrica. 

- *Visualización del Proceso*: La figura desglosa el proceso en seis componentes clave: diseño, insumos, actividades, resultados inmediatos e intermedios, y el impacto final.
- *Identificación de Supuestos Críticos*: Resalta 15 supuestos críticos que pueden afectar el éxito o fracaso del AQMP.
- *Causalidad y Narrativa*: Ayuda a entender las relaciones causales y la secuencia de eventos necesarios para alcanzar los objetivos del AQMP.

Esta figura es crucial para comprender cómo se espera que funcione el AQMP y los desafíos potenciales que podrían surgir.
  ],
  interpretaciones: [
Los autores interpretan los resultados de la siguiente manera:

- *Identificación de Suposiciones Críticas*: Los autores identificaron 15 suposiciones críticas que pueden afectar significativamente el éxito o fracaso del sistema de Planes de Gestión de la Calidad del Aire (AQMP) en Sudáfrica. Estas suposiciones son fundamentales y deben gestionarse adecuadamente.
- *Riesgos Asociados*: Se identificaron riesgos clave que subyacen en el desarrollo e implementación de los AQMP. Estos riesgos pueden obstaculizar la efectividad de los planes si no se abordan.
- *Necesidad de Investigación Adicional*: Los autores sugieren que es crucial realizar más investigaciones para probar la validez de estas suposiciones críticas. Esto ayudará a encontrar soluciones para evitar o mitigar los riesgos asociados.
- *Importancia del Enfoque de Teoría del Cambio (ToC)*: La aplicación del enfoque de ToC es esencial para evaluar la efectividad de los AQMP y entender los desafíos en su desarrollo e implementación.

Estas conclusiones se justifican mediante un análisis detallado y la participación de diversos actores y expertos en el campo.
  ],
  limitaciones: [
Sí, el artículo menciona varias limitaciones en el contexto de la planificación y gestión de la calidad del aire en Sudáfrica. Aquí están algunas de las limitaciones destacadas:

- *Compromiso y Participación*: Existe una falta de compromiso y participación de los reguladores y las partes interesadas, lo que afecta la implementación efectiva de los Planes de Gestión de la Calidad del Aire (AQMP).
- *Marco Legal Débil*: La debilidad en el marco legal y la calidad de los datos de calidad del aire y los inventarios de emisiones son desafíos significativos.
- *Recursos y Capacidades*: La disponibilidad de recursos, como tiempo, dinero, datos, información, habilidades y competencias, es crucial para el desarrollo y la implementación efectiva de los AQMP.
- *Asunciones Críticas*: La identificación y gestión de las asunciones críticas son esenciales para el éxito de los AQMP. Si estas asunciones no son válidas, el plan probablemente no funcionará como se espera.

Estas limitaciones subrayan la necesidad de una evaluación continua y ajustes en el diseño y la implementación de los AQMP.
  ],
  implicaciones-prácticas: [
La identificación de suposiciones críticas y riesgos en la planificación de la gestión de la calidad del aire (AQMP) en Sudáfrica puede ayudar a mejorar la efectividad de estas políticas. Esto es crucial para abordar los desafíos de calidad del aire en áreas prioritarias y proteger la salud pública.
  ],
  futuras-sugerencias: [
Se recomienda realizar más estudios para validar las suposiciones críticas identificadas. Esto proporcionará soluciones para evitar o mitigar los riesgos asociados con la implementación de AQMPs y mejorar su desarrollo y efectividad.
  ],
  fuertes: [
Algunos de lso puntos fuertes del artículo son:

- *Metodología sólida*: El uso del enfoque de la *Teoría del Cambio (ToC)* para identificar supuestos críticos y riesgos en la planificación de la gestión de la calidad del aire es un enfoque bien fundamentado y ampliamente reconocido.
- *Estructura clara*: El artículo está bien organizado, con una clara división en componentes de diseño, insumos, actividades, resultados y impactos, lo que facilita la comprensión del proceso de desarrollo e implementación de los AQMP.
- *Relevancia*: La investigación aborda un problema global significativo, la calidad del aire, y proporciona un estudio de caso detallado de Sudáfrica, lo que puede ofrecer lecciones valiosas para otros países.
- *Participación de múltiples partes interesadas*: La inclusión de talleres con especialistas, académicos, consultores, reguladores y organizaciones no gubernamentales asegura una perspectiva amplia y diversa en la evaluación de los AQMP.
  ],
  débiles: [
Algunas limitaciones y debilidades del artículo son:

- *Participación y compromiso de los interesados*: La falta de compromiso y participación de los reguladores y las partes interesadas puede ser un obstáculo significativo para la implementación efectiva de los AQMP.
- *Capacidad técnica y recursos*: La disponibilidad de recursos técnicos y financieros es crucial. La falta de habilidades y competencias necesarias puede limitar la efectividad de los planes.
- *Calidad de los datos*: La precisión y disponibilidad de datos sobre la calidad del aire y las emisiones son fundamentales para el éxito de los AQMP.
- *Evaluación continua*: La necesidad de una evaluación continua y ajustes en los planes para asegurar que se cumplan los objetivos a largo plazo.
  ],
  contribuciones: [
Este artículo puede ser muy útil para tu trayectoria académica o profesional en el área de gestión de la calidad del aire. Aquí hay algunos puntos clave:

- *Enfoque en la Teoría del Cambio (ToC)*: El artículo utiliza la ToC para identificar suposiciones críticas y riesgos en la planificación de la gestión de la calidad del aire, lo que puede ayudarte a comprender mejor cómo evaluar y mejorar las políticas ambientales.
- *Estudio de Caso en Sudáfrica*: Proporciona un análisis detallado de los desafíos y éxitos en la implementación de Planes de Gestión de la Calidad del Aire (AQMP) en Sudáfrica, ofreciendo lecciones valiosas que pueden aplicarse en otros contextos.
- *Identificación de Suposiciones y Riesgos*: La identificación de 15 suposiciones críticas y sus riesgos asociados puede servir como una guía para evitar o mitigar problemas en la implementación de políticas ambientales.
- *Metodología Detallada*: La descripción de la metodología utilizada para desarrollar el mapa de ToC y el marco narrativo puede ser una referencia útil para futuros estudios o proyectos en el campo de la gestión ambiental.
  ],
  respuesta: [
Para responder a la pregunta de investigación sobre la identificación de suposiciones críticas y riesgos en la planificación de la gestión de la calidad del aire en Sudáfrica, el artículo utiliza el enfoque de la Teoría del Cambio (ToC) para evaluar la efectividad de los Planes de Gestión de la Calidad del Aire (AQMP). Algunas respuestas clave son:

- *Importancia del aire*: El aire es vital para la vida en la Tierra, pero la contaminación del aire es un problema global que afecta la salud humana y el medio ambiente.
- *Planes de Gestión de la Calidad del Aire (AQMP)*: Son instrumentos estratégicos adoptados por muchos países para mejorar la calidad del aire. Sin embargo, su implementación en países de ingresos bajos y medios ha sido limitada.
- *Desafíos en Sudáfrica*: A pesar de tener un marco legal avanzado, Sudáfrica enfrenta serios desafíos de calidad del aire, especialmente en áreas prioritarias.
- *Enfoque de la Teoría del Cambio (ToC)*: Este enfoque se utiliza para identificar supuestos críticos y riesgos en la planificación y ejecución de los AQMP, proporcionando una base para evaluar su efectividad.
  ],
)

#pagebreak()
#bibliography(
  "ref.bib",
  title: [Referencias],
)