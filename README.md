em /Documentos estão tanto a base teórica do projeto, como datasheets de todos os componentes usados e
outros documentos relevantes

# 🕷️ Aracnobot - Estrutura de Tarefas

## ⚡ Eletrônica & Código Embarcado (Hardware & Firmware)
- [ ] **Esquema e Layout (KiCad)**
  - [ ] Desenhar o esquemático elétrico (reguladores de tensão e distribuição de potência).
	- [ ] testar os servos e categorizar os angulos limites (para nunca travar em 0 ou 180, o servo nao
	pode travar!!!).
	- [ ] Testar as baterias, descarga, medir o sinal de alimentação da bateria ( tem picos? ruidos?), 
	para analisar necessidade de circuitos de filtro e proteção.
	- [ ] Circuito de BMS (sistema de gerenciamento de bateria), para controle de carregamento, descarga,
	, protecao contra sobrecarga e subtensao.
  - [ ] Fazer o layout da PCB no KiCad (trilhas largas para os servos e definição das pegadas/capacitores).
  - [ ] Gerar arquivos Gerber para fabricação da placa.
  * problemas:
	O banco de baterias disponivel sao 3s2p litio (3 baterias de litio em seria com 1 em parelelo para cada em serie
ou seja, 6 celulas, 3 pares), a descarga maxima das baterias deve ficar em 1.5C ( para uam bateria de 3Ah de capacidade, 
1.5 C =  4.5A de descarga maxima), cada celula tem 4V2 de tensão maxima e 1.5Ah de descarga. Logo, nao conseguimos
alcançar a potência (carga pesada e motores travados, todos sendo usados de uma vez). Dentro disso, temos que 
montar o firmware afim de nunca ultrapassar o consumo de 4.5A total, nao usar todas as patas de uma vez, carga leve, etc.

- [ ] **Configuração Inicial do Código**
  - [ ] Configurar ambiente de desenvolvimento (PlatformIO, Arduino IDE ou ESP-IDF).
  - [ ] Mapear os pinos físicos da PCB criada para as definições de variáveis no código.
- [ ] **Cinemática e Movimentação junto a equipe de estrutura**
  - [ ] Implementar algoritmo de Cinemática Inversa (IK) para as pernas.
  - [ ] Desenvolver padrões de marcha (Gait Patterns: tripé, onda, etc.).
  - [ ] Criar funções de estabilização corporal integrando sensor IMU/Giroscópio.
- [ ] **Comunicação, Telemetria & Proteção**
  - [ ] Configurar protocolo sem fio (Wi-Fi, Bluetooth ou ESP-NOW) para controle remoto.
  - [ ] Criar rotina de leitura de nível de bateria e alertas de subtensão para proteger as células LiPo.


## 📐 Estrutura Mecânica Física

## 👁️ Visão Computacional & Percepção
