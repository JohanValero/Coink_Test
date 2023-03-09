# Data Analytics Verification

<div style="color: #008270">
Data Analytics Verification 💚 <br/>
CIENCIA DE DATOS
</div>
<br/>
<div style="color: #008270; text-align: center;">
PARTES DEL REPOSITORIO:</div>
<br/>
Como parte de un equipo de un grupo de ciencia de datos pueden solicitar diseñar esta prueba para evaluar tu creatividad, habilidad para aprender información nueva y conocimientos de Machine Learning.<br/>
<br/><br/>
<ol>
<li>
Una de las labores del equipo de Data en las empresa es la de definir métricas para evaluar el desempeño de la compañía. Para ello usará una base de depósitos (depositos_oink.csv). Son maquinas donde la gente deposita sus ahorros. Con ella debe construir una métrica que evalúe qué tan buenos (bajo nuestro propio criterio) son los usuarios y calificar a los usuarios contenidos en la muestra.<br/>
<b>Respuesta:</b>

[Aquí Jupyter Notebook](https://github.com/JohanValero/Coink_Test/blob/main/depositos_coink.ipynb)<br/>
[Aquí reporte PDF](https://github.com/JohanValero/Coink_Test/blob/main/exports/depositos_coink.pdf)<br/>
</li>
<li>
Es sumamente importante la habilidad de aprender herramientas a medida que se desarrollan nuevos proyectos. Como parte de un proyecto, se le puede pedir al equipo de
Data que construya un modelo de ML que sea implementado en AWS. Este debe tener la capacidad de ser ejecutado a demanda con un API. No se preocupe por el origen de la base de datos y la forma en la que se hace el enlace entre el API y la aplicación. Se explica brevemente (no más de 300 palabras) cómo se haría este proceso. Para mayor entendimiento se puede consultar el siguiente enlace:
<br/><br/>
https://aws.amazon.com/es/blogs/machine-learning/call-an-amazon-sagemaker-model-endpoint-using-amazon-api-gateway-and-aws-lambda/
<br/><br/>
<b>Respuesta:</b> 
Para implementar un modelo de aprendizaje automático en AWS, podemos seguir los siguientes pasos:<br/>
<b>Preparación de los datos:</b> La preparación de los datos es un paso crucial en cualquier proyecto de aprendizaje automático. Aquí, se debe asegurar que los datos de entrenamiento estén limpios y estructurados correctamente para ser procesados por el modelo.<br/>
<b>Entrenamiento del modelo:</b> El siguiente paso es entrenar el modelo de aprendizaje automático. Para esto, se puede utilizar Amazon SageMaker, un servicio completamente administrado que ofrece una plataforma de aprendizaje automático escalable y de alta calidad. Amazon SageMaker proporciona una variedad de algoritmos de aprendizaje automático incorporados y la capacidad de personalizar modelos según las necesidades del proyecto.<br/>
<b>Despliegue del modelo:</b> Una vez que el modelo ha sido entrenado, se puede desplegar en un endpoint de Amazon SageMaker para poder usarlo a través de una API. Esto permite que cualquier aplicación o servicio pueda enviar solicitudes al modelo de aprendizaje automático a través de la API, lo que facilita su uso en aplicaciones en tiempo real.<br/>
<b>Creación de un API Gateway:</b> Para crear un endpoint para el modelo, se puede utilizar Amazon API Gateway. Este servicio permite la creación de APIs RESTful y WebSocket que actúan como una interfaz entre los clientes y el modelo de aprendizaje automático.<br/>
<b>Implementación de AWS Lambda:</b> AWS Lambda es un servicio de computación sin servidor que permite ejecutar código en respuesta a eventos, como solicitudes a la API Gateway. Para implementar el modelo de aprendizaje automático, se puede crear una función Lambda que llame al endpoint de SageMaker y devuelva los resultados al cliente a través de la API Gateway.<br/>
En resumen, el proceso de despliegue de un modelo de aprendizaje automático en AWS consiste en preparar los datos, entrenar el modelo con SageMaker, desplegar el modelo en un endpoint de SageMaker, crear un API Gateway para el endpoint y crear una función Lambda para llamar al modelo y devolver los resultados a través de la API Gateway. Este proceso permite que el modelo de aprendizaje automático sea ejecutado a demanda a través de una API, lo que lo hace fácilmente accesible para cualquier aplicación o servicio que necesite usarlo.
</li>
<br/>
<li>
Debe ser capaz de realizar modelos de aprendizaje supervisado y no supervisado. En este punto tendrá una base con datos públicos (info_satisfaccion_trabajo.xlsx) con la cual deberá desarrollar un script con 2 modelos de aprendizaje supervisado para predecir la variable JobSatisfaction. Se espera que su procedimiento sea claro y que evalúe el desempeño de su modelo. En menos 150 palabras explique cómo monitorearía este modelo en caso en caso de que estuviera desplegado para uso recurrente de la empresa.
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
