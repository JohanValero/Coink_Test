# Coink Test

<div style="color: #008270">
PRUEBA COINK 💚🐽 <br/>
CARGO CIENTIFICO DE DATOS
</div>
</br>
<div style="color: #008270">
¿Qué es Coink?
</div>
Somos un Startup del sector Fintech con la misión de promover la inclusión financiera a través de un producto innovador de tecnología colombiana. Llegamos para revolucionar la relación de los latinoamericanos con el sistema financiero. <br/>
A través de nuestras alcancías gigantes, llamadas Oinks, digitalizamos las monedas para que tus ahorros queden en el saldo de tu aplicación el cual puedes ver como incrementa en tiempo real.
<br/>
<br/>
<div style="color: #008270; text-align: center;">
INSTRUCCIONES DE LA PRUEBA</div>
<br/>
Como parte del equipo de DATA de COINK, te han solicitado diseñar esta prueba para evaluar tu creatividad, habilidad para aprender información nueva y conocimientos de Machine Learning.<br/>
Este ejercicio, se deberá entregar en Python 3 referiblemente en un archivo de Jupyter Notebook.<br/>
Para todos los puntos el código debe estar debidamente comentado. La legibilidad del código y presentación de este será tenida en cuenta.
<br/><br/>
<ol>
<li>
Una de las labores del equipo de Data en esta empresa es la de definir métricas para evaluar el desempeño de la compañía. Este punto no tiene una respuesta única y se evaluará su
creatividad. Para ello usará una base de depósitos en Oinks (depositos_oink.csv). Los Oinks son máquinas en los que la gente puede depositar sus ahorros. Con ella debe construir una métrica que evalúe qué tan buenos (bajo su propio criterio) son los usuarios de Coink y calificar a los usuarios contenidos en la muestra. Cualquier gráfica para aclarar su métrica es bienvenida (use la herramienta de visualización que mejor crea conveniente).<br/>
<b>Respuesta:</b>

[Aquí Jupyter Notebook](https://github.com/JohanValero/Coink_Test/blob/main/depositos_coink.ipynb)<br/>
[Aquí reporte PDF](https://github.com/JohanValero/Coink_Test/blob/main/exports/depositos_coink.pdf)<br/>
</li>
<li>
Para este cargo es sumamente importante la habilidad de aprender herramientas a medida que se desarrollan nuevos proyectos. Como parte de un proyecto, se le pide al equipo de
Data que construya un modelo de ML que sea implementado en AWS. Este debe tener la capacidad de ser ejecutado a demanda con un API. No se preocupe por el origen de la base
de datos y la forma en la que se hace el enlace entre el API y la aplicación. Explique brevemente (no más de 300 palabras) cómo haría este proceso. Para mayor entendimiento
puede consultar el siguiente enlace:
<br/><br/>
https://aws.amazon.com/es/blogs/machine-learning/call-an-amazon-sagemaker-model-endpoint-using-amazon-api-gateway-and-aws-lambda/
<br/><br/>
Es recomendado consultar información externa.
<br/><br/>
<b>Respuesta:</b> 
</li>
<br/>
<li>
Como científico de datos en Coink debe ser capaz de realizar modelos de aprendizaje supervisado y no supervisado. En este punto tendrá una base con datos públicos (info_satisfaccion_trabajo.xlsx) con la cual deberá desarrollar un script con 2 modelos de aprendizaje supervisado para predecir la variable JobSatisfaction. Se espera que su procedimiento sea claro y que evalúe el desempeño de su modelo. En menos 150 palabras explique cómo monitorearía este modelo en caso en caso de que estuviera desplegado para uso recurrente de la empresa.
<br/><br/>
<b>Respuesta:</b><br/>
Para monitorizar el desempeño del modelo de aprendizaje supervisado, es importante implementar pruebas canarias en los datos de entrada para asegurar que los resultados del modelo son coherentes y precisos. Además, se deben definir métricas de evaluación claras y precisas, tales como la precisión, el recall, la F1-score, y la curva ROC, entre otras, que permitan evaluar el desempeño del modelo.<br/>
En el caso de que el modelo se despliegue para uso recurrente en la empresa, se deben implementar técnicas de monitoreo continuo, tales como la recolección de métricas en los logs y el análisis de anomalías, para detectar cualquier posible degradación en el desempeño del modelo. Asimismo, se debe llevar un registro detallado de las actualizaciones y cambios en el modelo, a fin de asegurar que estos cambios no afecten negativamente su desempeño.<br/>
Es importante tener en cuenta que JobSatisfaction no es una métrica adecuada para un modelo de aprendizaje supervisado, ya que se trata de una variable subjetiva y difícil de medir objetivamente. Por lo tanto, se recomienda utilizar otras variables que estén más directamente relacionadas con la satisfacción laboral, como la satisfacción con el ambiente de trabajo, el salario, las oportunidades de crecimiento, entre otros.<br/>
Para más información de un analisis exploratorio de datos, ir al siguiente Jupyter Notebook:

[Aquí Jupyter Notebook](https://github.com/JohanValero/Coink_Test/blob/main/job_satisfaction.ipynb)<br/>
[Aquí reporte PDF](https://github.com/JohanValero/Coink_Test/blob/main/exports/job_satisfaction.pdf)<br/>
</li>
</ol>