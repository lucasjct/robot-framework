# robot-framework
Practices web automation with Robot Framework


####  Para instalar o Robot e rodar o projetos localmente:  

#### 1. Instalar [Geckodriver](https://github.com/mozilla/geckodriver/releases/tag/v0.26.0) e Clonar o Projeto  
   1.1 Caso haja dúvidas sobre como instalar o Geckodriver no Ubuntu, siga este [tutorial](https://medium.com/beelabsolutions/baixando-e-configurando-o-geckodriver-no-ubuntu-dc2fe14d91c)  
#### 2. Instalar as depedências no diretório do projeto:  
   2.1  `python3 -m venv .venv`  
   2.3  Ativar venv: `source venv/bin/activate` (caso utilize bash, passe-o como extensão depois do activate, ex: `/activate.bash`) 
#### 3. Instalar dependências do RobotFramework: 
   3.1 `pip install robotframework`  
   3.2 `pip install robotframework-seleniumlibrary`   

#### 4. Conferir se libraries estão instaladas corretamente:  
    `pip freeze`  
#### 5. Rodar o teste com:  
   `robot <arquivoTest.robor>`
