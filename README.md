# Projeto: Análise de Vendas Superstore (LibreOffice Calc):

Este repositório documenta a minha evolução prática no módulo de Planilhas, focado em análise de dados e construção de Dashboards. O projeto utiliza a base de dados pública "Superstore" (uma rede de varejo fictícia) com quase 10.000 registros.

## O Desafio de Negócio:
O objetivo foi atuar como analista de dados da Superstore, realizando a limpeza da base, extraindo KPIs de performance e construindo um Dashboard interativo para a diretoria (CEO) tomar decisões baseadas em dados.

## Ferramentas e Metodologia:
*   **Ferramenta:** LibreOffice Calc.
*   **Versionamento:** Git e GitHub.
*   **Abas de explorações e análises:**
    *   `Dashboard_v1`: Front-end estático para o usuário.
    *   `Analises`: Espaço dedicado à análise para teste de hipóteses. 
    *   `Exploração`: Log de controle dos passos tomados durante o projeto.
    *   `Dinâmicas`: Área para exploração de dados a partir de tabelas dinâmicas e gráficos gerados a partir delas. 
*   **Arquitetura Front-end / Back-end:** Para evitar o travamento do software (limitação do Calc com muitas fórmulas), os dados foram divididos em:
    *   `Dados`: Base bruta tratada.
    *   `Back-end`: Tabelas ocultas com cálculos pesados (`SOMASES` dinâmicos).
    *   `Dashboard_v2`: Front-end interativo para o usuário (com filtros de Região, Segmento, Categoria e Ano).

## Principais Insights:
1.  **O Paradoxo do Mobiliário (Furniture):** A categoria tem alto volume de vendas, mas a menor margem de lucro. Descontos agressivos (acima de 40%) geram prejuízo em itens de alto valor.
2.  **Sazonalidade e Tendência:** As vendas crescem consistentemente de 2014 a 2017, com picos históricos no último trimestre dos anos.
3.  **Comportamento Semanal:** Segundas e quintas-feiras concentram o menor volume de pedidos; finais de semana (sextas-feiras até domingo) têm o maior volume.
4.  **Qualidade da Base:** Identificação de 6 linhas com dados corrompidos e irrecuperáveis. Elas foram isoladas para não distorcer as métricas. 

## Desafios Técnicos Superados:
*   **Limpeza e Padronização:** Conversão de texto para datas reais e separação de decimais (padrão americano para o brasileiro) sem perder dados.
*   **Contagem de Pedidos Únicos com Filtros:** Como o `Order ID` se repete para cada item, utilizei lógica de contagem no Back-end com `SOMARPRODUTO` e `CONT.SES` para garantir que 1 pedido com 5 itens fosse contado como 1, respeitando os filtros do Dashboard.
*   **Limitações Gráficas:** Uso da função `NÃO.DISP()` para ocultar meses sem vendas (zeros) e impedir que o gráfico de linhas criasse um "chão" falso.
*   **Performance:** Implementação de recálculo manual (`Ctrl+Shift+F9`) para garantir fluidez e evitar engasgos na navegação dos filtros. Limitação encontrada no Calc, mas de melhor performance no Excel (abordagem diferente).

## Principais Fórmulas Aplicadas:
*   **Agregação:** `SOMASES`, `CONT.SES`, `MÉDIASES`, `SOMARPRODUTO`.
*   **Manipulação de Texto:** `EXT.TEXTO`, `PROCURAR`, `TEXTO`, `ARRUMAR`.
*   **Lógica e Datas:** `SEERRO`, `SE`, `E`, `OU`, `DIADASEMANA`, `DATADIF`.
*   **Referência Cruzada:** `ÍNDICE` + `CORRESP` (busca reversa).
*   **Estatística:** `QUARTIL`, `MEDIANA`.

---

