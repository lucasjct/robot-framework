# robot-framework
Practices web automation with Robot Framework


####  Para rodar os projetos localmente:  

1. Instalar [Geckodriver](https://github.com/mozilla/geckodriver/releases/tag/v0.26.0) e Clonar o Projeto  
2. Instalar as depedências no diretório do projeto:  
   2.1  `python3 -m venv .venv`  
   2.3  Ativar venv: `source venv/bin/activate (caso utilize bash, passe-o como extensão depois do activate) 
3. Instalar dependências do RobotFramework  
   3.1 `pip install robotframework`  
   3.2 `pip install robotframework-seleniumlibrary`   
4. Conferir se libraries estão instaladas corretamente: `pip freeze`  
5. Rodar o teste com `robot <arquivoTest.robor>`
