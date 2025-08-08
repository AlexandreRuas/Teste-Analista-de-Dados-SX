# Teste de Analista de Dados

Critérios avaliadas:

* Docker;
* SQL;
* Python;
* Organização do Código
* Documentação
* ETL
* Modelagem dos dados

### 

### Desejáveis

* PySpark
* Esquema Estrela



### Steps

1. Realizar um Fork desse projeto
2. Realizar a modelagem dimensional da base

   * A base está disponível para download [clicando aqui](https://download.inep.gov.br/microdados/microdados_enem_2020.zip).
   * Após descompactar a paste, o Arquivo com a base encontra-se no diretório microdados\_enem\_2020/DADOS/MICRODADOS\_ENEM\_2020.csv
   * A documentação necessária sobre os campos da base está disponível nos demais diretórios dentro da pasta descompactada.

3. Realizar o ETL dessa base em Python para o MySQL no container
4. Disponibilizar o link do seu repositório para posterior avaliação



### Levantar Indicadores

#### Responder às seguintes perguntas



**Observação:**

Para responder às perguntas 1, 2, 3, 6,7 e 8 foram consideradas as notas de Ciências da Natureza, Ciências Humanas, Linguagens e Códigos, Matemática e Redação.



1. Qual a escola com a maior média de notas?

   **Observação:**
   Infelizmente, os microdados do ENEM 2020 não incluem o nome ou o código das escolas.
   Por isso, em vez de calcular a maior média por escola, optei por calcular a maior média das escolas localizadas em um
   determinado município, utilizando o código de município como referência. Isso representa um total de 5.534 escolas,
   considerando todas as redes (municipais, estaduais, federais e privadas), independentemente de estarem situadas em
   áreas urbanas ou rurais, e se estão em funcionamento ou não.

   **Resposta:**
   Entre todos os municípios analisados, Santana do Manhuaçu, em Minas Gerais (MG), obteve a maior média de notas: 706,56.

2. Qual o aluno com a maior média de notas e o valor dessa média?

   **Resposta:**
   O participante com a maior média de notas é o inscrito de número 200005996961, que obteve uma média final de 858,59 pontos.

3. Qual a média geral?

   **Resposta:**
   A média geral de notas é 526,58.

4. Qual o % de Ausentes?

   **Resposta:**
   O percentual de inscritos ausentes é: 52,15%. Considerando os inscritos que faltaram as provas de
   Ciências da Natureza (TP\_PRESENCA\_CN), Ciências Humanas (TP\_PRESENCA\_CH), Linguagens e Códigos (TP\_PRESENCA\_LC) e Matemática (TP\_PRESENCA\_MT).

5. Qual o número total de Inscritos?

   **Resposta:**
   O número total de inscritos é: 5.783.109.

6. Qual a média por disciplina?

   **Resposta:**
   Média de Ciências da Natureza (CN): 490,41
   Média de Ciências Humanas (CH): 511,15
   Média de Linguagens e Códigos (LC): 523,80
   Média de Matemática (MT): 520,58
   Média de Redação: 573,41

7. Qual a média por Sexo?

   **Resposta:**
   Média das notas dos participantes que se identificaram com o gênero feminino: 521,24.
   Média das notas dos participantes que se identificaram com o gênero masculino: 534,73.

8. Qual a média por Etnia?
   **Resposta:**
   Média das notas dos participantes que se declararam como brancos: 556,53.
   Média das notas dos participantes que se declararam como pretos: 500,87.
   Média das notas dos participantes que se declararam como pardos: 508,66
   Média das notas dos participantes que se declararam como amarelos: 524,94.
   Média das notas dos participantes que se declararam como indígenas: 472,84.

   ### 

### Levantar Visões

**(Sugestões: Tableau, Power BI, Qlik, Power Point, Excel, Colab.)**



1. Gere visualizações gráficas que demonstrem a nota como indicador, trazendo as dimensões e os gráficos que melhor possam representar
   a informação para avaliação da performance.

   

   **Painel 1:** https://public.tableau.com/app/profile/alexandre.ruas/viz/enem\_2020/Painel1?publish=yes
   **Painel 2:** https://public.tableau.com/app/profile/alexandre.ruas/viz/enem\_2020/Painel2?publish=yes
   **Painel 3:** https://public.tableau.com/app/profile/alexandre.ruas/viz/enem\_2020/Painel3?publish=yes



2. Analisar correlações de variáveis que identificar dentro do dataset com a variável dependente nota total (NU\_NOTA\_CN
   NU\_NOTA\_CH, NU\_NOTA\_LC, NU\_NOTA\_M.T).

   

   **Painel 4:** https://public.tableau.com/app/profile/alexandre.ruas/viz/enem\_2020/Painel4?publish=yes
   **Painel 5:** https://public.tableau.com/app/profile/alexandre.ruas/viz/enem\_2020/Painel5?publish=yes
   **Painel 6:** https://public.tableau.com/app/profile/alexandre.ruas/viz/enem\_2020/Painel6?publish=yes
   **Painel 7:** https://public.tableau.com/app/profile/alexandre.ruas/viz/enem\_2020/Painel7?publish=yes



3. Gerar visualizações (Data viz) que melhor estratifiquem e demonstremos dados do bloco de DADOS DA REDAÇÃO, verificando o comportamento
   das notas 4 provas vs. estes dados.

   

   **Painel 8:** https://public.tableau.com/app/profile/alexandre.ruas/viz/enem\_2020/Painel8?publish=yes
   **Painel 9:** https://public.tableau.com/app/profile/alexandre.ruas/viz/enem\_2020/Painel9?publish=yes
   **Painel 10:** https://public.tableau.com/app/profile/alexandre.ruas/viz/enem\_2020/Painel10?publish=yes



4. Gerar visualizações (Data viz) que melhor estratifiquem e demonstremos dados do bloco de DADOS DO QUESTIONÁRIO SOCIOECONÔMICO, verificando
   o comportamento das notas 4 provas vs. estes dados.

   

   **Painel 11:** https://public.tableau.com/app/profile/alexandre.ruas/viz/enem\_2020/Painel11?publish=yes
   **Painel 12:** https://public.tableau.com/app/profile/alexandre.ruas/viz/enem\_2020/Painel12?publish=yes



5. Faça um resumo em 10 bullets de Conclusões e Insights.



* **Painel 1**

&nbsp;  - Desempenho regionalmente concentrado nos estados das regiões Sul, Sudeste, além do Distrito Federal. Estas localidades apresentam médias mais altas em cada disciplina, 

&nbsp;    com médias aproximadas entre 540 - 550 pontos. Ciências da Natureza tende a mostrar maior disparidade entre as notas, sugerindo desigualdade no ensino dessa área.

&nbsp;  - Possível correlação com IDH: A concentração de maiores médias em estados com maior Índice de Desenvolvimento Humano (IDH) sugere uma relação entre 

&nbsp;    desenvolvimento socioeconômico e o desempenho no ENEM.

&nbsp;  - Ao combinar o mapa geográfico com o mapa de calor, é possível entender tanto o desempenho por disciplina quanto o panorama geral por estado.



* **Painel 2**

&nbsp;  - Alto índice de ‘não resposta’: Com cerca de 1,8 milhão de inscritos sem indicar o tipo de escola, há um viés significativo que limita a confiabilidade da análise. 

&nbsp;  - Mesmo com dados incompletos, as escolas privadas apresentam médias superiores, especialmente em Matemática, que geralmente aparece como a disciplina mais desafiadora. 

&nbsp;  - As notas mais baixas em Matemática e Ciências da Natureza nas escolas públicas indicam áreas prioritárias para intervenção.



* **Painel 3**

&nbsp;  - Com exceção de Redação, observa-se baixa ocorrência de notas extremas. Poucos candidatos atingem notas muito altas ou muito baixas, o que pode indicar consistência na aplicação da prova.

&nbsp;  - Novamente Matemática e Ciências da Natureza se concentram em faixas de notas mais baixas.



* **Painéis 4 e 5**

&nbsp;  - Faixas etárias mais altas mostram maior dispersão e menor densidade de notas altas, sugerindo possível distanciamento escolar ou menor tempo de estudo. 

&nbsp;    Menores de 17 anos também apresentam menor densidade de notas altas, sugerindo menor tempo de estudo.

&nbsp;  - A correlação entre as disciplinas Linguagem e Códigos e Redação é mais forte entre os participantes, indicando maior consistência de desempenho.

&nbsp;  - Faixas etárias mais avançadas aparecem em menor número, mas com maior variabilidade nas notas, o que pode refletir perfis diversos, como estudantes em situação de reingresso escolar, 

&nbsp;    participantes da Educação de Jovens e Adultos (EJA), trabalhadores que retornam aos estudos em busca de qualificação, ou ainda pessoas que enfrentaram interrupções educacionais por 

&nbsp;    motivos sociais, econômicos ou familiares.

&nbsp;  - Inscritos com renda familiar mais alta conseguem alcançar faixas superiores de nota, enquanto que inscritos de baixa renda apresentam maior densidade em notas medianas e baixas.

&nbsp;  - A renda familiar atua como um preditor de desempenho, sugerindo que políticas de equidade educacional devem focar em suporte socioeconômico.



* **Painel 6**

&nbsp;  - As medianas de nota aumentam conforme a renda familiar cresce, em todas as disciplinas analisadas.

&nbsp;  - Dentro de cada faixa de renda, os candidatos mais jovens tendem a ter notas mais altas, reforçando o impacto da idade.



* **Painel 7**

&nbsp;  - Pessoas amarelas e brancas declarantes, nesta ordem, obtiveram consistentemente as maiores médias em todas as disciplinas.

&nbsp;  - Pretos e indígenas tiveram as menores médias, revelando disparidades raciais persistentes no acesso e qualidade da educação.

&nbsp;  - Diferenças entre sexos foram menos acentuadas que entre raças, mas homens tenderam a ter desempenho ligeiramente superior em Ciências da Natureza, Ciências Humanas e Matemática.



* **Painéis 8 e 9**

&nbsp;  - Estudantes que se autodeclaram pretos e indígenas tendem a apresentar médias mais baixas nas provas objetivas, o que pode refletir desigualdades históricas no acesso à educação de qualidade, 

&nbsp;    incluindo barreiras socioeconômicas,    culturais e estruturais.

&nbsp;  - Alguns inscritos de grupos racialmente minorizados, como os pretos, alcançam notas altas na redação mesmo com médias objetivas mais baixas, 

&nbsp;    indicando que a redação pode capturar competências não refletidas nas provas objetivas.

&nbsp;  - Grupos indígenas e amarelos com menor representatividade, embora inscritos do grupo que se declararam amarelos tenham se destacado em primeiro lugar tanto em Redação quanto na média das provas objetivas.

&nbsp;  - Correlação positiva entre média objetiva e nota da redação em todos os grupos. Independentemente da cor/raça, há uma tendência de que quanto maior a média das provas objetivas, maior a nota da redação.

&nbsp;  - Mulheres têm maior concentração de notas altas na redação, mesmo com médias objetivas similares aos homens. A redação parece ser um ponto de destaque para as mulheres, 

&nbsp;    possivelmente por maior dedicação à escrita ou habilidades de comunicação.

&nbsp;  - Homens com maior dispersão nas médias objetivas. Os candidatos do sexo masculino tendem a ocupar uma faixa mais ampla de médias nas provas objetivas, mas com menor concentração nas notas altas da redação.

&nbsp;  - Correlação entre desempenho geral e nota da redação é mais forte entre mulheres. A inclinação da nuvem de pontos pode indicar que, para mulheres, o desempenho nas provas objetivas está mais alinhado com o da redação.



* **Painel 10**

&nbsp;  - Maior concentração na faixa intermediária (400–599). A maioria dos candidatos se encontra nessa faixa tanto nas médias objetivas quanto nas notas de redação, 

&nbsp;    indicando que a maioria dos estudantes do Estado de São Paulo não está nem entre os melhores nem entre os piores, mas sim num nível intermediário de desempenho, 

&nbsp;    refletindo possíveis limitações no aprendizado e na preparação para o exame.

&nbsp;  - Faixa de 600–799 na redação sugere que muitos candidatos conseguem se sair melhor na redação do que nas provas objetivas, talvez por maior afinidade com a escrita.

&nbsp;  - Redação como oportunidade de compensação. Inscritos com médias mais baixas (400–599) nas provas objetivas ainda conseguem notas razoáveis na redação (600–799), 

&nbsp;    o que pode ser estratégico para melhorar a nota final.



* **Painel 11**

&nbsp;  - Profissões de maior prestígio (Grupo 5) estão associadas às maiores médias nas provas objetivas, indicando forte correlação entre ocupação do responsável e desempenho acadêmico.

&nbsp;  - Grupo 4, com ocupações técnicas e autônomas, aparece com a segunda maior média, reforçando que profissões com maior qualificação técnica também influenciam positivamente o desempenho.

&nbsp;  - Os Grupos 1 e 2, compostos por ocupações de baixa qualificação e informalidade, apresentam as menores médias, evidenciando desigualdade educacional ligada à estrutura familiar.



* **Painel 12** 

&nbsp;  - Estudantes com quatro ou mais computadores e acesso à Internet apresentam as maiores médias, evidenciando o impacto direto da infraestrutura tecnológica no desempenho escolar.

&nbsp;  - Há uma relação positiva entre número de computadores e média das provas, indicando que ambientes mais equipados favorecem o estudo e a preparação para o ENEM.

&nbsp;  - O acesso à Internet é um fator decisivo. mesmo com poucos computadores, quem tem Internet tende a ter médias superiores aos que não têm.

&nbsp;  - A combinação de recursos tecnológicos e conectividade funciona como um indicador de capital cultural e econômico, refletindo diretamente na performance acadêmica.

&nbsp;  - Esses dados reforçam a necessidade de políticas públicas de inclusão digital, especialmente para estudantes de baixa renda, como forma de mitigar desigualdades educacionais.

