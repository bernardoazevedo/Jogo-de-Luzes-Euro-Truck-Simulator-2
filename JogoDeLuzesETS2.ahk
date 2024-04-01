; ________________________________________________________ ATENÇÃO ________________________________________________________
; 
; - Todas as sequências prontas foram feitas para serem usadas com o farol já ligado
;   
; - Símbolos das teclas: 
;   + --> Shift
;   ^ --> Ctrl
;   ! --> Alt
;   # --> LWin + RWin
; ________________________________________________________ ATENÇÃO ________________________________________________________


#SingleInstance Force ; Não permite que seja executada mais de uma instância ao mesmo tempo



; -----------------------SETAS
setaEsquerda(){
; Liga e desliga a seta esquerda
    Send "´"
    sleep 500
    Send "´"
    sleep 250
}

setaDireita(){
; Liga e desliga a seta direita
    Send "["
    sleep 500
    Send "["
    sleep 250
}

piscaAlerta(){ 
; Liga e desliga o pisca alerta
    Send "f"
    sleep 500
    Send "f"
    sleep 250
}

alternaSetas(quantidade, tempo){ ;
; Pisca as setas esquerda e direita alternadamente, começando pela esquerda
; Quantidade: quantas vezes as setas vão alternar
; Tempo: quanto tempo entre um acionamento e outro
    Loop quantidade{
        Send "´"
        sleep tempo
        Send "["
        sleep tempo
    }
    Send "["
    sleep 250
}
; SETAS-----------------------



; -----------------------Farol Alto
ligaFarolAlto(){
; Liga ou desliga o farol alto
    Send "k"
    sleep 250
}

piscaFarolAlto(){
; Pisca o farol alto
    Send "{j down}"
    sleep 250
    Send "{j up}"
    sleep 250
}
; Farol Alto-----------------------



; -----------------------Farol
desligaFarol(){
; Desliga o farol
    Send "l"
    sleep 250
}

ligaFarol(){
; Liga o farol
    Send "l"
    sleep 250
    Send "l"
    sleep 250
}

desligaLigaFarol(){
; Desliga e liga o farol
    Send "l"
    sleep 250
    Send "l"
    sleep 250
    Send "l"
    sleep 250
}
; Farol-----------------------



; -----------------------Sequencias Prontas
; Dentro das funções, as ações serão executadas na ordem que você colocar
sequencia1(){
    desligaFarol()

    piscaFarolAlto()
    piscaFarolAlto()
    
    setaDireita()
    setaEsquerda()

    piscaFarolAlto()
    piscaFarolAlto()

    ligaFarol()
}

sequencia2(){
    desligaFarol()
    alternaSetas(3, 100)
    piscaAlerta()
    piscaFarolAlto()
    ligaFarol()
}
; Sequencias Prontas-----------------------



; -----------------------Sequência de comandos
; Aqui você escolhe a combinação de teclas para acionar cada jogo de luzes
; No exemplo: '+j::{      }'
; '+' --> Representa o 'Shift' 
; 'j' --> Letra j
+1::{ ; Shift + 1
    sequencia1()
}

+2::{ ; Shift + 2
    sequencia2()
}
; Sequência de comandos-----------------------
