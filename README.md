# Shooter

**Shooter** é um jogo desenvolvido em **VHDL** no qual o jogador controla uma nave que se defende de asteroides. O jogo foi projetado para rodar em displays de 7 segmentos na placa **Nexys3**.

## Descrição do Jogo

O jogador utiliza os botões da placa para mover a nave e disparar tiros contra os asteroides que se aproximam. Os displays de 7 segmentos mostram a posição da nave, os asteroides e o placar. O objetivo é sobreviver o maior tempo possível e atingir a maior pontuação, destruindo o máximo de asteroides antes que colidam com a nave.

## Funcionalidades

- **Movimentação da nave:** Controlada pelos botões direcionais da Nexys3.
- **Disparo:** Um botão dedicado permite disparar tiros contra os asteroides.
- **Asteroides dinâmicos:** Eles aparecem em posições aleatórias e se aproximam gradualmente.
- **Sistema de pontuação:** Pontos são adicionados para cada asteroide destruído.
- **Game over:** O jogo termina quando um asteroide atinge a posição da nave.

## Componentes do Projeto

### Arquivos VHDL
- **Controlador de Nave:** Gerencia a posição da nave nos displays de 7 segmentos.
- **Gerador de Asteroides:** Cria asteroides em posições aleatórias.
- **Motor de Jogo:** Lida com a lógica de colisão, pontuação e controle do fluxo do jogo.
- **Display Driver:** Atualiza os displays de 7 segmentos para mostrar as informações do jogo.
- **Clock Divider:** Reduz a frequência do clock para gerar uma velocidade adequada ao jogo.

### Hardware Utilizado
- **Placa Nexys3**
- **Displays de 7 segmentos**
- **Botões da placa**

## Como Configurar e Rodar

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/seu-usuario/Shooter-VHDL.git
   cd Shooter-VHDL
