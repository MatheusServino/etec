const baralho = [
    {"valor":"4", "naipe":"ouros", "forca" : "1"},
    {"valor":"5", "naipe":"ouros", "forca" : "2"},
    {"valor":"6", "naipe":"ouros", "forca" : "3"},
    {"valor":"7", "naipe":"ouros", "forca" : "4"},
    {"valor":"Q", "naipe":"ouros", "forca" : "5"},
    {"valor":"j", "naipe":"ouros", "forca" : "6"},
    {"valor":"K", "naipe":"ouros", "forca" : "7"},
    {"valor":"A", "naipe":"ouros", "forca" : "8"},
    {"valor":"2", "naipe":"ouros", "forca" : "9"},
    {"valor":"3", "naipe":"ouros", "forca" : "10"},

    {"valor":"4", "naipe":"espadas", "forca" : "1"},
    {"valor":"5", "naipe":"espadas", "forca" : "2"},
    {"valor":"6", "naipe":"espadas", "forca" : "3"},
    {"valor":"7", "naipe":"espadas", "forca" : "4"},
    {"valor":"Q", "naipe":"espadas", "forca" : "5"},
    {"valor":"j", "naipe":"espadas", "forca" : "6"},
    {"valor":"K", "naipe":"espadas", "forca" : "7"},
    {"valor":"A", "naipe":"espadas", "forca" : "8"},
    {"valor":"2", "naipe":"espadas", "forca" : "9"},
    {"valor":"3", "naipe":"espadas", "forca" : "10"},

    {"valor":"4", "naipe":"copas", "forca" : "1"},
    {"valor":"5", "naipe":"copas", "forca" : "2"},
    {"valor":"6", "naipe":"copas", "forca" : "3"},
    {"valor":"7", "naipe":"copas", "forca" : "4"},
    {"valor":"Q", "naipe":"copas", "forca" : "5"},
    {"valor":"j", "naipe":"copas", "forca" : "6"},
    {"valor":"K", "naipe":"copas", "forca" : "7"},
    {"valor":"A", "naipe":"copas", "forca" : "8"},
    {"valor":"2", "naipe":"copas", "forca" : "9"},
    {"valor":"3", "naipe":"copas", "forca" : "10"},

    {"valor":"4", "naipe":"paus", "forca" : "1"},
    {"valor":"5", "naipe":"paus", "forca" : "2"},
    {"valor":"6", "naipe":"paus", "forca" : "3"},
    {"valor":"7", "naipe":"paus", "forca" : "4"},
    {"valor":"Q", "naipe":"paus", "forca" : "5"},
    {"valor":"j", "naipe":"paus", "forca" : "6"},
    {"valor":"K", "naipe":"paus", "forca" : "7"},
    {"valor":"A", "naipe":"paus", "forca" : "8"},
    {"valor":"2", "naipe":"paus", "forca" : "9"},
    {"valor":"3", "naipe":"paus", "forca" : "10"},
]

//embaralhar as cartas
function embaralhar(cartas){
    return cartas.sort( () => {
        Math.random() - 0.5
    })
}

//distribui 3 cartas para cada jogador ==> retira as cartas do topo
function distribui(cartas){
    return embaralhar(cartas).slice(0,3)
}

//define a vira ==> retira 1 carta do topo
function vira(cartas){
    return embaralhar(cartas).slice(0,1)
}

//configurando o servidor multiplayer
//adicionando as bibliotecas necessarias 
const express = require('express')
const http = require('http')
const socketIO = require('socket.io')
const { join } = require('node:path')

const app = express() // o nosso APP do jogo
const server = http.createServer(app) // cria um servidor baseado em HTTP p/ nosso jogo
const io = socketIO(server) //gerencia as conexoes entre os jogadores

//define que o APP é publico
var path = require('path')
app.use(express.static(path.join(__dirname, 'public')))
app.get('/', (req, res) =>{
    res.sendFile(join(__dirname, 'index.html'))
})

let jogadores = []

//handler - ou interceptador de açoes
io.on('connection', (socket) => {
    const maxJogadores = 4
    //verifica se ainda tem vaga
    if(jogadores.lenght < maxJogadores){
        console.log(`Novo jogador conectado: ${socket.id}`)
        jogadores.push(socket.id) // adiciona o player na mesa
        //notifica o proprio jogador que ele esta conectado 
        socket.emit('conectado', { jogadorID : socket.id, posicao : jogadores.lenght})
        //notifica os outros jogadores
        io.emit('atualizaJogadores', {mensagem : "A mesa já esta cheia!"})

        //emite um evento qunado um jogador desconecta
        socket.on('disconnect', () =>{
            console.log(`Jogador desconectado: ${socket.id}`)
            //remove o jogador da partida
            jogadores = jogadores.filter( id => id !== socket.id)
            //notifica todos jogadores
            io.emit('atualizaJogadores', { jogadores : jogadores.lenght })
        })
    }else{
        //recusa a conexao se a mesa ja tiver 4 jogadores
        console.log("A mesa já esta cheia!" )
        socket.emit('mesaCheia', { mensagem : "A mesa já esta cheia!" })
        socket.disconnect();
    }
})
server.listen(8080, ()=>{
    console.log('Servidor rodando na porta 8080')
})