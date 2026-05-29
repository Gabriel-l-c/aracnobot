# 🤖 ArachnoBot Rescue — UGV de Primeiros Socorros

<div align="center">

> *"Os cientistas estudam o mundo como ele é; os engenheiros criam o mundo que nunca existiu."— Theodore von Kármán*  
> *o mundo que nunca existiu."— Theodore von Kármán*

[![Status](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellow)](.)
[![Licença](https://img.shields.io/badge/Licença-MIT-blue)](.)
[![Plataforma](https://img.shields.io/badge/Plataforma-ROS%20%2F%20ESP32-green)](.)
[![Tipo](https://img.shields.io/badge/Tipo-UGV%20Hexápode-red)](.)

</div>

---

## 📌 Visão Geral

O **ArachnoBot Rescue** é um protótipo de **Veículo Terrestre Não Tripulado (UGV)** com morfologia hexápode, desenvolvido para operar em ambientes hostis onde a presença humana representa risco inaceitável. O projeto nasce da interseção entre **robótica de resgate**, **atendimento pré-hospitalar (APH)** e **engenharia de sistemas embarcados**.

Inspirado nas referências abertas de plataformas hexápodes da comunidade open-source e fundamentado em protocolos humanitários internacionais (ICRC), o robô é capaz de:

- 🔍 **Reconhecer** ambientes sinistrados por meio de câmeras e sensores de telemetria
- 🏥 **Transportar** suprimentos essenciais de primeiros socorros até vítimas isoladas
- 🗺️ **Transmitir dados** em tempo real para o centro de comando

---

## 🚨 Problema: A Lacuna da Hora de Ouro

Em operações de Busca e Salvamento (SAR — *Search and Rescue*) e intervenções em desastres, existe uma janela crítica conhecida como **"hora de ouro do trauma"**. É neste intervalo que intervenções de primeiros socorros — como controle de hemorragia, abertura de vias aéreas e prevenção de choque — determinam a sobrevivência da vítima.

Contudo, as equipes de resgate humano são frequentemente **impedidas de acessar as vítimas** neste período por:

| Obstáculo | Exemplos |
|-----------|----------|
| **Instabilidade estrutural** | Edifícios colapsados, escombros |
| **Altas temperaturas** | Incêndios urbanos, focos industriais |
| **Protocolos de segurança** | Zonas quentes em conflitos e operações táticas |
| **Topografia adversa** | Morros, becos, escadarias, áreas de difícil acesso |

> *"Mais de 50% dos civis feridos em combates urbanos precisam apenas de primeiros socorros imediatos — torniquetes, curativos compressivos e estabilização — sem necessidade de hospitalização imediata."*  
> — ICRC, *First Aid in Armed Conflicts*, 2006

O UGV proposto visa **preencher esta lacuna logística e temporal**, projetando recursos de APH para dentro das zonas de exclusão antes da chegada das equipes humanas.

---

## 🎯 Objetivos

### Geral
Desenvolver um protótipo funcional de UGV hexápode voltado para reconhecimento de terreno e **entrega remota de suprimentos de primeiros socorros** em ambientes de difícil ou impossível acesso humano.

### Específicos

- [ ] Projetar plataforma mecânica hexápode capaz de transpor **obstáculos urbanos** (escombros, degraus, terrenos irregulares)
- [ ] Integrar **sensores de telemetria** (câmera, temperatura, acelerômetro) com transmissão de dados em tempo real
- [ ] Desenvolver **compartimento de carga seguro** para suprimentos de APH (torniquetes, curativos hemostáticos, máscara de ressuscitação)
- [ ] Validar a arquitetura com foco em **baixo custo** e escalabilidade
- [ ] Documentar protocolos de operação alinhados com as diretrizes internacionais do ICRC

---

## 🔬 Fundamentação Técnica e Estado da Arte

### Robótica de Resgate em Ambientes Indoor
Estudos recentes demonstram a viabilidade de arquiteturas autônomas para suporte de bombeiros em ambientes fechados. **Talavera et al. (2023)** validaram sistemas de navegação autônoma capazes de operar em estruturas com risco de colapso, realizando reconhecimento térmico e visual que os EPIs humanos não tolerariam.

### Mapeamento e Consciência Situacional
O consórcio europeu **TRADR** (*Track-based Robot for Augmented Disaster Response*) demonstrou que drones terrestres equipados com LiDAR podem gerar mapas 3D de zonas sinistradas em tempo real, fornecendo dados críticos para comandantes de operações antes da exposição humana.

### APH Tático e Logística de Resgate
As diretrizes do **CICV (Comitê Internacional da Cruz Vermelha)** para primeiros socorros em conflitos armados e situações de violência estabelecem que a **velocidade de intervenção** é o fator determinante na sobrevivência. A entrega robótica de recursos de APH diretamente às vítimas — sem depender do acesso humano — representa um avanço significativo neste paradigma.

### Plataformas Hexápode de Referência
A morfologia hexápode é preferida em robótica de resgate pela sua **redundância de locomoção** (falha de uma perna não compromete o movimento), estabilidade em terrenos irregulares e capacidade de transpor obstáculos sem necessidade de rodas. Repositórios como [`mithi/hexapod`](https://github.com/mithi/hexapod), [`MakeYourPet/hexapod`](https://github.com/MakeYourPet/hexapod) e [`neuroprod/InsectRobotSimulation`](https://github.com/neuroprod/InsectRobotSimulation) documentam soluções open-source que fundamentam a arquitetura deste projeto.

---

## 🏗️ Arquitetura do Sistema

```
┌─────────────────────────────────────────────────────────┐
│                   CENTRO DE COMANDO                     │
│          (Interface Web / Joystick Remoto)              │
└───────────────────────┬─────────────────────────────────┘
                        │ Wi-Fi / RF
┌───────────────────────▼─────────────────────────────────┐
│                   PLACA CENTRAL                         │
│              (Raspberry Pi / ESP32)                     │
│  ┌─────────────┐  ┌──────────────┐  ┌───────────────┐  │
│  │   Câmera    │  │  Controlador │  │  Módulo RF/   │  │
│  │   + Visão   │  │  de Servos   │  │  Wi-Fi        │  │
│  └─────────────┘  └──────────────┘  └───────────────┘  │
└───────────────────────┬─────────────────────────────────┘
                        │
┌───────────────────────▼─────────────────────────────────┐
│              PLATAFORMA MECÂNICA (6 PERNAS)             │
│   ┌────────┐  ┌────────┐  ┌────────┐  ┌────────────┐   │
│   │ Perna  │  │ Perna  │  │ Perna  │  │ Compartim. │   │
│   │  1-2   │  │  3-4   │  │  5-6   │  │  de Carga  │   │
│   └────────┘  └────────┘  └────────┘  └────────────┘   │
└─────────────────────────────────────────────────────────┘
```

---

## 🧰 Carga Útil — Kit de APH

O compartimento de carga é dimensionado para transportar os itens essenciais de **Atendimento Pré-Hospitalar** conforme os protocolos do ICRC:

| Item | Finalidade | Referência ICRC |
|------|-----------|----------------|
| Torniquete CAT / improviso | Controle de hemorragia em membros | Sec. 6.1.3 |
| Bandagem de compressão | Curativos em ferimentos | Sec. 6.2.6 |
| Máscara de ressuscitação | Ventilação artificial boca-a-máscara | Sec. 4.2.1 |
| Curativos estéreis (3 tamanhos) | Curativo de ferimentos | Sec. 3.3.1 |
| Gaze hemostática | Controle de sangramento profuso | Sec. 6.1.3 |
| Soro fisiológico | Limpeza de ferimentos / hidratação | Sec. 3.3.1 |
| Cobertor térmico | Prevenção de hipotermia | Sec. 6.1.5 |

> ⚕️ **Nota Operacional:** O robô realiza *entrega de suprimentos* — a administração dos primeiros socorros segue as instruções transmitidas remotamente por um socorrista qualificado para a vítima consciente, ou aguarda a chegada da equipe de resgate.

---

## 🗂️ Estrutura do Repositório

```
arachnobot-rescue/
├── 📁 hardware/
│   ├── cad/              # Modelos 3D (STL/STEP) da estrutura hexápode
│   ├── pcb/              # Esquemas eletrônicos e layouts de PCB
│   └── bom.md            # Lista de materiais (Bill of Materials)
├── 📁 firmware/
│   ├── servo_control/    # Controle de servomotores e cinemática
│   ├── sensors/          # Leitura de câmera, temperatura e IMU
│   └── comms/            # Módulo de comunicação Wi-Fi/RF
├── 📁 software/
│   ├── dashboard/        # Interface web de controle remoto
│   ├── navigation/       # Algoritmos de navegação e mapeamento
│   └── vision/           # Processamento de imagem (detecção de vítimas)
├── 📁 docs/
│   ├── protocolo_aph.md  # Protocolos de APH para operadores
│   ├── manual_operacao.md
│   └── referencias/      # PDFs e artigos de referência
├── 📁 simulations/       # Simulações de cinemática e terreno
└── README.md
```

---

## 🚀 Como Começar

### Pré-requisitos
- Python 3.9+
- ROS 2 (Humble ou superior) *— para navegação autônoma*
- Arduino IDE / PlatformIO *— para firmware ESP32*
- Impressora 3D *— para estrutura mecânica*

### Instalação

```bash
# Clonar o repositório
git clone https://github.com/seu-usuario/arachnobot-rescue.git
cd arachnobot-rescue

# Instalar dependências Python
pip install -r requirements.txt

# Compilar firmware (via PlatformIO)
cd firmware
pio run --target upload
```

### Simulação Rápida
```bash
# Executar simulação de cinemática hexápode
cd simulations
python hexapod_kinematics_sim.py
```

---

## 🤝 Projetos Hexápode de Referência (Open Source)

Esta arquitetura é inspirada e fundamentada nas seguintes implementações de referência da comunidade:

| Repositório | Contribuição Principal |
|------------|----------------------|
| [`mithi/hexapod`](https://github.com/mithi/hexapod) | Cinemática inversa e simulação visual |
| [`MakeYourPet/hexapod`](https://github.com/MakeYourPet/hexapod) | Design mecânico e controle de servos |
| [`rookidroid/hexapod`](https://github.com/rookidroid/hexapod) | Implementação embarcada |
| [`SmallpTsai/7688-hexapod`](https://github.com/SmallpTsai/7688-hexapod) | Integração com plataforma IoT |
| [`neuroprod/InsectRobotSimulation`](https://github.com/neuroprod/InsectRobotSimulation) | Simulação de locomoção de inseto |
| [`ByteRyze/Hexapod_2`](https://github.com/ByteRyze/Hexapod_2) | Hardware e estrutura física |
| [`ClimbSnail/HexapodRobot_STC15`](https://github.com/ClimbSnail/HexapodRobot_STC15) | Firmware em microcontrolador |
| [`JakobLeander/hexapod`](https://github.com/JakobLeander/hexapod) | Controle e planejamento de trajetória |

---

## 📚 Referências Bibliográficas

```bibtex
@article{talavera2023,
  author    = {Talavera et al.},
  title     = {An autonomous ground robot to support firefighters interventions in indoor environments},
  journal   = {Journal of Field Robotics},
  year      = {2023}
}

@manual{icrc2006,
  author    = {{Comitê Internacional da Cruz Vermelha (CICV)}},
  title     = {Primeiros Socorros em Conflitos Armados e Outras Situações de Violência},
  number    = {ICRC 007/0870},
  year      = {2006},
  publisher = {CICV — Genebra}
}

@manual{chang2015,
  author    = {Chang Yen-Li Chain},
  title     = {Manual de Medidas de Segurança e Procedimento de Primeiros Socorros no Acampamento Escoteiro},
  note      = {Projeto da Insígnia de Madeira — Curso Avançado Ramo Escoteiro},
  year      = {2015}
}

@article{sar_review,
  title     = {Safe Search and Rescue Operations Based on Autonomous Robots: A Systematic Review of the General System Architecture},
  note      = {Revisão Sistemática de Literatura em Robótica SAR}
}

@techreport{desenvolvimento_robos,
  title     = {Desenvolvimento de Robôs de Resgate},
  note      = {Documentação Técnica Nacional}
}
```

### Referências Complementares

- **FireBot Project** — CNN Portugal: *"Estudantes constroem robot que consegue aguentar temperaturas acima dos 530 graus"*
- **Projeto TRADR** — Euronews: *"Os robôs que ajudam os bombeiros italianos"* (Consórcio Europeu de Robótica de Resgate)
- **People.cn** — *Inovações em Robôs de Resgate e Transporte de Emergência*

---

## 👥 Equipe e Contribuições

Este projeto é desenvolvido no contexto acadêmico universitário com caráter multidisciplinar, integrando competências de:

- **Engenharia Mecânica** — Projeto estrutural, cinemática e fabricação
- **Engenharia Eletrônica** — Sistemas embarcados e sensoriamento
- **Ciência da Computação** — Visão computacional, navegação e interface
- **Saúde / APH** — Protocolos de primeiros socorros e ergonomia da carga

---

## 📄 Licença

Distribuído sob a licença **MIT**. Consulte o arquivo [`LICENSE`](LICENSE) para mais detalhes.

---

<div align="center">

**ArachnoBot Rescue** — Desenvolvido com 🔩 e ❤️ para salvar vidas  

*"A segurança sempre em primeiro lugar — a sua própria, a das vítimas e a dos demais."*  
— ICRC, Manual de Primeiros Socorros, 2006

</div>
