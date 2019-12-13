#language: pt
Funcionalidade: Busca Site Correio
    Para que eu possa realizar uma busca no site dos correios

    @correio
    Cenario: Busca Site
        Dado que acesso o site dos correios 
        Quando eu informo um CEP "18079324"
        Entao devo ver "DADOS ENCONTRADOS COM SUCESSO."

