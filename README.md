
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Viscoop

<!-- badges: start -->
<!-- badges: end -->

O objetivo deste projeto é criar um dashboard que reuna todas as
informações sobre cooperativas disponíveis nos bancos de dados da
Receita Federal do Brasil, na RAIS, no Banco Central do Brasil e outros.

Também será feito o cruzamento dos dados e cálculos estatísticos.

Este projeto está disponível para que você conferir nossos cálculos,
adaptar e utilizar onde desejar (desde que citada a fonte, conforme
licença CC BY 4.0).

Todo o projeto foi feito no `R()`, utilizando o `shiny()` e o pacote
`golem()`. Para aprender mais sobre, segue um vídeo muito bom:
<https://www.youtube.com/watch?v=fiaZgGqcubc>

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/master/examples>.

You can also embed plots, for example:

![](README_files/figure-gfm/pressure-1.png)<!-- -->

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub.
