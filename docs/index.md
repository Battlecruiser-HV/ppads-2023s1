<h2><a href= "https://www.mackenzie.br">Universidade Presbiteriana Mackenzie</a></h2>
<h3><a href= "https://www.mackenzie.br/graduacao/sao-paulo-higienopolis/sistemas-de-informacao">Sistemas de Informação</a></h3>


<font size="+12"><center>
*&lt;Nome do Projeto&gt;*
</center></font>

>*Observação 1: A estrutura inicial deste documento é só um exemplo. O seu grupo deverá alterar esta estrutura de acordo com o que está sendo solicitado na disciplina.*

>*Observação 2: O índice abaixo não precisa ser editado se você utilizar o Visual Studio Code com a extensão **Markdown All in One**. Essa extensão atualiza o índice automaticamente quando o arquivo é salvo.*

**Conteúdo**

- [Autores](#autores)
- [Descrição do projeto](#descrição-do-projeto)
- [Diagrama de casos de uso](#diagrama-de-casos-de-uso)
- [Descrição dos casos de uso](#descrição-dos-casos-de-uso)
- [Protótipos de tela](#protótipos-de-tela)
- [Modelo de domínio](#modelo-de-domínio)
- [Decisões de arquitetura](#decisões-de-arquitetura)
- [Diagrama de implantação](#diagrama-de-implantação)
- [Plano de Testes](#plano-de-testes)
- [Referências](#referências)


# Autores

* Gabriel Hannonen Vieira - 32132646
* Carolina Muniz Piche - 32143621
* Matheus Guarnieri Pfau Ferreira - 32113072
* João Lucas de Calorio - 32108818


# Descrição do projeto

O projeto será um sistema de registro de falta e presença, onde o professor acessa um site que permite a ele marcar a falta ou presença de alunos, o professor selecionará a turma e preenchera a chamada, selecionando se foi o professor geral ou o professor de ef ou ingles que fizera aquela chamada. As presenças e o dados seram armazenados em um banco de dados, e um relatorio poderá ser gerado contendo informações de faltas dos alunos, alem disso, caso o aluno tenha faltado mais de 20%, um email sera enviado ao parentes ou responsaveis avisando-os de que o aluno não esta comparecendo as aulas, e perguntando se algo esta errado ou acontecendo.

# Diagrama de casos de uso

![Diagrama Caso de Uso](https://user-images.githubusercontent.com/80272512/219518681-0459a83e-d81f-43ce-9f38-7b3ff20ed2b3.PNG)


# Descrição dos casos de uso

![Capturar](https://user-images.githubusercontent.com/80272512/219515442-a1b4778a-4353-4be8-b8af-54db772dba54.PNG)
![Capturar1](https://user-images.githubusercontent.com/80272512/219515511-05908fc3-2cab-4a82-8894-ff36a5a5239c.PNG)
![Capturar2](https://user-images.githubusercontent.com/80272512/219515571-7299ee27-6205-41a8-b374-d4d78528333e.PNG)
![Capturar3](https://user-images.githubusercontent.com/80272512/219515622-2921d37b-44a6-4e95-969d-3b0f49df16ed.PNG)
![Capturar4](https://user-images.githubusercontent.com/80272512/219515712-591fb533-7b2d-4485-9ee3-1e53cd5397e7.PNG)

![Especificação Caso de Uso - Registrar Falta 1](https://user-images.githubusercontent.com/100203253/219480507-783b63f5-3768-461b-a1f7-cb616a8c0736.jpg)
![Especificação Caso de Uso - Registrar Falta 2](https://user-images.githubusercontent.com/100203253/219480516-499ef57a-b87c-4071-9aae-9a4f1642e29c.jpg)
![Especificação Caso de Uso - Registrar Falta 3](https://user-images.githubusercontent.com/100203253/219480521-bb8088f3-6a34-4ed1-b427-7ac24c4db6a9.jpg)
![Especificação Caso de Uso - Registrar Falta 4](https://user-images.githubusercontent.com/100203253/219480523-a4ca493f-a09c-4c71-a671-ed496eabe664.jpg)


![Especificação João Lucas de Calorio-1](https://user-images.githubusercontent.com/100203031/219905756-2d497e5a-dfbf-40c6-9458-cc841184462c.png)
![Especificação João Lucas de Calorio-2](https://user-images.githubusercontent.com/100203031/219905757-7a77ef03-5180-4497-b46f-0d59f3c24703.png)
![Especificação João Lucas de Calorio-3](https://user-images.githubusercontent.com/100203031/219905759-92607a78-c121-408f-8627-f23975f4afeb.png)


# Protótipos de tela

*&lt;Protótipos de tela&gt;*

![Identidade Visual](https://user-images.githubusercontent.com/80272512/219496774-9a10a7f6-e6e3-4ad6-9a08-54bf5d8f0db9.png)

Layout das telas 

![Login](https://user-images.githubusercontent.com/80272512/223226281-13554608-2a6e-4496-a0b0-f403b284f135.png)
Professor Principal!
[Professor Principal](https://user-images.githubusercontent.com/80272512/223226417-705fca37-a1d1-4532-98bb-bbd4cd843673.png)

Professor Específico
![Ingles](https://user-images.githubusercontent.com/80272512/223226672-0f1ceab3-6b3f-4b29-9a85-9d88b34d1e1f.jpg)
![Ingles-2](https://user-images.githubusercontent.com/80272512/223226889-859868df-4b3a-4f75-ad49-a304e9a56869.png)
![Ingles-3](https://user-images.githubusercontent.com/80272512/223227085-8325d6bf-e9ea-4028-a5c3-c5bed64b80bf.png)
![Marcar Falta](https://user-images.githubusercontent.com/80272512/223227307-b12b8538-0246-40b9-8e29-22a9091c9b84.png)
![Falta Marcada](https://user-images.githubusercontent.com/80272512/223227379-932fc08b-ae86-456b-840e-14b582736916.png)
![Cancelar](https://user-images.githubusercontent.com/80272512/223227432-979e4ae7-b02c-4dae-a6b5-31119b68c5da.png)


![Confirmar Faltas](https://user-images.githubusercontent.com/80272512/223398224-9c2f6ac6-e4b9-4ea7-9e96-d379c3888174.png)






# Modelo de domínio

![Modelo de dominio](https://user-images.githubusercontent.com/100203253/231142064-951e5be1-d455-487a-95c7-4764c7b3bbe5.png)

# Decisões de arquitetura

Tendo em vista que o sistema é uma aplicação web, e necessita estar ligado a um banco de dados (como MongoDB) para guardar os dados, essas especificações influenciam no momento de definir a arquitetura desse projeto. Além disso, o documento coloca que precisa ser acessível de qualquer tipo de navegador (incluindo mobile), levando esse tópico em consideração também no momento da arquitetura da solução.
O serviço será desenvolvido em Python, na parte relacionada ao back-end, sendo utilizado o framework. Já o front-end, toda a parte de interface gráfica e interação com o usuário, utilizará html, css e javascript. 

Diagrama de Componentes

![Diagrama Componentes](https://user-images.githubusercontent.com/100203253/222007673-e9fbfbad-000f-4df5-ab30-e6af322048f0.png)

Diagramas de Sequência

![Diagrama Sequencia Selecionar Sala](https://user-images.githubusercontent.com/100203253/222007713-0fe10c0d-ada8-4c9b-853f-502394d62fa9.png)
![Diagrama Sequencia Registrar Falta](https://user-images.githubusercontent.com/100203253/222007711-fef20c8b-98cd-4a0c-bc73-ee7427b14946.png)
![Diagrama de Sequencia Registar CHamada](https://user-images.githubusercontent.com/100203031/222009995-7ca4f38c-e0cb-41b0-9cda-950c4e6be104.png)


*&lt;Decisões de arquitetura&gt;*

# Diagrama de implantação
![Diagrama de Implantação](https://user-images.githubusercontent.com/80272512/231299302-4d94d19c-e07a-480a-9a28-6cf02a2723d3.PNG)



*&lt;Diagrama de implantação&gt;*

# Plano de Testes
<h4><a href= "https://www.mackenzie.br](https://github.com/Battlecruiser-HV/ppads-2023s1/blob/master/docs/Planos%20de%20teste%20-%20Final.pdf">Plano de Testes e testes completos</a></h4>

# Dashboard

![dashboard ppds](https://github.com/Battlecruiser-HV/ppads-2023s1/assets/78962671/3a332e3e-d3d9-4431-91e7-704bc2956496)

# Referências

*&lt;Lista de referências&gt;*
