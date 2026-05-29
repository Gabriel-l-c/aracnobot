# ArachnoBot — Proposta de UGV para Suporte em Ambientes Hostis e Primeiros Socorros

> *"Os cientistas estudam o mundo como ele é; os engenheiros criam o mundo que nunca existiu."*
> — Theodore von Kármán

---

## Sobre o Projeto

O **ArachnoBot** é uma proposta de **Veículo Terrestre Não Tripulado (UGV)** com morfologia hexápode, concebido para atuar como ferramenta de apoio em operações de primeiros socorros e segurança pública em **ambientes hostis** — locais onde a presença humana direta representa risco severo ou é temporariamente inviável.

O projeto se situa na interseção de três domínios:

- **Robótica Móvel de Resgate** — navegação e teleoperação em terrenos adversos
- **Atendimento Pré-Hospitalar (APH)** — entrega de suprimentos médicos essenciais a vítimas isoladas
- **Engenharia de Sistemas Embarcados** — plataforma de baixo custo e arquitetura aberta

> Este repositório documenta a **proposta, fundamentação teórica e planejamento** do projeto. O desenvolvimento do protótipo físico está em fase de iniciação.

---

## O Problema: A Lacuna na Hora de Ouro

Em operações de Busca e Salvamento (SAR — *Search and Rescue*) e em intervenções em desastres — incêndios urbanos, colapsos estruturais, ocorrências de segurança pública — existe uma janela temporal crítica denominada **"hora de ouro do trauma"**. Neste intervalo, intervenções simples de primeiros socorros como controle de hemorragia, abertura de vias aéreas e prevenção de hipotermia são determinantes para a sobrevivência.

As equipes de resgate humano são frequentemente **impedidas de acessar as vítimas** neste período por fatores como:

| Barreira | Exemplos |
|----------|----------|
| Instabilidade estrutural | Edifícios colapsados, escombros |
| Altas temperaturas | Incêndios urbanos, focos industriais |
| Zonas de exclusão tática | Protocolos de segurança em operações policiais e de defesa civil |
| Topografia adversa | Morros, becos, escadarias, regiões alagadas |

> *"Mais de 50% dos civis feridos durante combates em centros urbanos precisam apenas receber os primeiros socorros — acrescidos de um simples antibiótico oral e um analgésico. Eles precisam apenas de cuidados imediatos e de um tratamento complementar de estabilização, e não ser hospitalizados."*
> — CICV, *Primeiros Socorros em Conflitos Armados e Outras Situações de Violência*, 2006 (ICRC 007/0870)

O ArachnoBot propõe-se a preencher esta lacuna logística e temporal, projetando a capacidade de assistência do socorrista para dentro das zonas de exclusão antes ou durante o acesso humano.

---

## Objetivos

### Geral

Desenvolver a proposta e, futuramente, um protótipo funcional de UGV hexápode voltado para **reconhecimento de terreno** e **entrega remota de suprimentos de primeiros socorros** em ambientes de difícil ou impossível acesso humano imediato.

### Específicos

- Definir os requisitos mecânicos de uma plataforma hexápode capaz de transpor obstáculos urbanos típicos (escombros, degraus, terrenos irregulares)
- Especificar a arquitetura de sensoriamento e telemetria (câmera, temperatura, IMU) para transmissão de dados em tempo real ao operador
- Projetar um compartimento de carga adaptado ao transporte de suprimentos essenciais de APH
- Elaborar a arquitetura de software para teleoperação e, em estágios futuros, navegação semiautônoma
- Mapear protocolos de uso alinhados às diretrizes internacionais do CICV para primeiros socorros em ambientes hostis
- Validar a proposta com foco em baixo custo de produção e potencial de escalabilidade

---

## Fundamentação Teórica e Estado da Arte

### Robótica Autônoma em Suporte a Bombeiros

A inserção de UGVs para suporte a bombeiros em ambientes fechados já é uma realidade validada pela literatura. **Talavera et al. (2023)** demonstraram, no *Journal of Field Robotics*, a eficácia de arquiteturas autônomas para auxiliar intervenções em locais com risco de colapso estrutural — realizando reconhecimento térmico e visual que os Equipamentos de Proteção Individual (EPIs) humanos não toleram por tempo suficiente. O estudo sustenta diretamente a premissa central deste projeto: robôs terrestres podem ser a vanguarda segura de uma operação de resgate.

### Consciência Situacional e Mapeamento em Catástrofes

Em situações de desastre, a telemetria é vital. O consórcio europeu **TRADR** demonstrou que drones terrestres com sensores a laser geram mapeamento 3D de zonas sinistradas em tempo real, fornecendo aos comandantes dados críticos antes de expor as equipes ao perigo. Esta capacidade de observar sem estar presente é um dos pilares funcionais do ArachnoBot.

### APH Tático e Entrega Logística de Resgate

O desenvolvimento de robôs focados especificamente no transporte logístico de emergência — como os documentados no projeto **FireBot** (capaz de suportar temperaturas acima de 530°C, conforme CNN Portugal) — evidencia a demanda global por sistemas mecânicos de entrega em zonas hostis. O ArachnoBot incorpora este conceito adaptado ao contexto do APH: o robô não trata a vítima, mas **entrega os meios para que ela possa receber ou aplicar os primeiros socorros** sob orientação remota de um profissional.

### Protocolos Humanitários e APH em Campo

O CICV, no manual *Primeiros Socorros em Conflitos Armados e Outras Situações de Violência* (ICRC 007/0870, 2006), estabelece que a abordagem primária de uma vítima segue a sequência **A-B-C-D-E** — Vias aéreas, Respiração, Circulação, Incapacidade e Exposição. Os suprimentos transportados pelo ArachnoBot são selecionados para atender exatamente estas etapas críticas, com ênfase no controle de hemorragia (C) e na proteção contra hipotermia (E).

O **Manual de Medidas de Segurança e Primeiros Socorros** (Chang, 2015) complementa esta base com a especificação dos materiais essenciais de uma caixa de primeiros socorros de campo e os procedimentos de atendimento inicial, sendo referência direta para a definição da carga útil do robô.

### Morfologia Hexápode para Terrenos Adversos

A escolha de seis pernas é funcional, não estética. Plataformas hexápodes apresentam **redundância de locomoção** — a falha de uma perna não paralisa o sistema —, maior estabilidade estática em terrenos irregulares e capacidade de transpor obstáculos que inviabilizam plataformas rodadas. A comunidade open-source já documentou extensamente soluções de referência que fundamentarão a arquitetura mecânica deste projeto.

---

## Conceito de Operação

```
  OPERADOR / SOCORRISTA
  (zona segura)
        |
        |  Teleoperação via Wi-Fi / RF
        |  Vídeo ao vivo + telemetria
        v
  +-------------------------+
  |      ARACHNOBOT UGV     |
  |  Câmera FPV             |
  |  Sensores de telemetria |
  |  Compartimento de carga |
  |  6 pernas / servomotores|
  +-------------------------+
        |
        |  Navega pelo ambiente hostil
        v
  +-------------------------+
  |      VITIMA ISOLADA     |
  |  Recebe suprimentos     |
  |  Orientada remotamente  |
  |  pelo socorrista        |
  +-------------------------+
```

O operador, em segurança, visualiza o ambiente por meio da câmera do robô, navega até a vítima e libera os suprimentos de APH. Se a vítima estiver consciente, o socorrista pode orientá-la remotamente por áudio sobre como aplicar torniquete, curativo compressivo ou cobertor térmico — seguindo os protocolos A-B-C-D-E do CICV — até a chegada da equipe de resgate ao local.

---

## Carga Útil Prevista — Kit de APH

Os suprimentos são selecionados com base nas intervenções de maior impacto na hora de ouro, conforme os protocolos do CICV (2006) e do Manual Chang (2015):

| Suprimento | Finalidade | Referência |
|------------|-----------|------------|
| Torniquete (CAT ou improviso) | Controle de hemorragia em membros | CICV Sec. 6.1.3 / Chang 14.1 |
| Bandagem de compressão | Curativo compressivo em ferimentos | CICV Sec. 6.2.6 / Chang 14.1 |
| Máscara de ressuscitação | Ventilação artificial boca-a-máscara | CICV Sec. 6.1.2 / Chang 4.2.1 |
| Curativos estéreis (P/M/G) | Cobertura de ferimentos abertos | Chang 2.2 / CICV Sec. 6.2.6 |
| Gaze + agente hemostático | Controle de sangramento profuso | CICV Sec. 6.1.3 / Chang 14.1 |
| Soro fisiológico (sachê) | Limpeza de ferimentos | Chang 2.2 e 3.3.1 |
| Cobertor térmico aluminizado | Prevenção de hipotermia e choque | CICV Sec. 6.1.5 / Chang 10 |

**Nota operacional:** O robô realiza exclusivamente a entrega de suprimentos e a transmissão de vídeo e áudio. A administração dos primeiros socorros é responsabilidade da vítima consciente orientada remotamente, ou das equipes que chegam subsequentemente.

---

## Roadmap

| Fase | Descrição | Status |
|------|-----------|--------|
| Fase 0 | Proposta conceitual e levantamento bibliográfico | Em andamento |
| Fase 1 | Especificação de requisitos e seleção de componentes | Planejado |
| Fase 2 | Projeto mecânico (CAD) e simulação de cinemática | Planejado |
| Fase 3 | Prototipagem da plataforma de locomoção | Planejado |
| Fase 4 | Integração de sensores e sistema de comunicação | Planejado |
| Fase 5 | Desenvolvimento da interface de teleoperação | Planejado |
| Fase 6 | Testes integrados e validação do protótipo | Planejado |

---

## Repositórios de Referência — Plataformas Hexápode Open Source

| Repositório | Relevância |
|-------------|-----------|
| [mithi/hexapod](https://github.com/mithi/hexapod) | Cinemática inversa e simulação visual |
| [MakeYourPet/hexapod](https://github.com/MakeYourPet/hexapod) | Design mecânico acessível e controle de servos |
| [rookidroid/hexapod](https://github.com/rookidroid/hexapod) | Implementação embarcada de baixo custo |
| [SmallpTsai/7688-hexapod](https://github.com/SmallpTsai/7688-hexapod) | Integração com plataformas IoT e comunicação |
| [neuroprod/InsectRobotSimulation](https://github.com/neuroprod/InsectRobotSimulation) | Simulação de locomoção bioinspirada |
| [ByteRyze/Hexapod_2](https://github.com/ByteRyze/Hexapod_2) | Referência de hardware e estrutura física |
| [ClimbSnail/HexapodRobot_STC15](https://github.com/ClimbSnail/HexapodRobot_STC15) | Firmware em microcontrolador de baixo custo |
| [JakobLeander/hexapod](https://github.com/JakobLeander/hexapod) | Planejamento de trajetória e controle de marcha |

---

## Referências Bibliográficas

```bibtex
@article{talavera2023,
  author  = {Talavera et al.},
  title   = {An autonomous ground robot to support firefighters
             interventions in indoor environments},
  journal = {Journal of Field Robotics},
  year    = {2023}
}

@manual{cicv2006,
  author    = {{Comitê Internacional da Cruz Vermelha (CICV)}},
  title     = {Primeiros Socorros em Conflitos Armados e Outras
               Situações de Violência},
  number    = {ICRC 007/0870},
  year      = {2006},
  publisher = {CICV, Genebra, Suíça}
}

@manual{chang2015,
  author = {Chang, Yen-Li Chain},
  title  = {Manual de Medidas de Segurança e Procedimento de
            Primeiros Socorros no Acampamento Escoteiro},
  note   = {Projeto da Insígnia de Madeira —
            Curso Avançado Ramo Escoteiro, GENSM 49-PR},
  year   = {2015}
}

@article{sar_review,
  title = {Safe Search and Rescue Operations Based on Autonomous Robots:
           A Systematic Review of the General System Architecture},
  note  = {Revisão Sistemática de Literatura em Robótica SAR}
}

@techreport{desenvolvimento_robos,
  title = {Desenvolvimento de Robôs de Resgate},
  note  = {Documentação Técnica de Referência}
}

@misc{firebot_cnn,
  title  = {Estudantes constroem robot que consegue aguentar
            temperaturas acima dos 530 graus},
  author = {{CNN Portugal}},
  note   = {Projeto FireBot}
}

@misc{tradr_euronews,
  title  = {Os robôs que ajudam os bombeiros italianos},
  author = {{Euronews}},
  note   = {Projeto TRADR — Consórcio Europeu de Robótica de Resgate}
}

@misc{people_cn,
  author = {{People.cn}},
  title  = {Inovações em Robôs de Resgate e Transporte de Emergência}
}
```

---

## Contexto Acadêmico

Este projeto é concebido no âmbito universitário com caráter multidisciplinar, reunindo as seguintes áreas:

- **Engenharia Mecânica** — Projeto estrutural e cinemática da plataforma hexápode
- **Engenharia Elétrica / Eletrônica** — Sistemas embarcados, sensoriamento e gerenciamento de energia
- **Ciência da Computação** — Comunicação, visão computacional e interface de controle
- **Saúde / APH** — Definição dos protocolos de primeiros socorros e especificação da carga útil

---

*"Prestar os primeiros socorros não significa somente fazer respiração artificial ou colocar um curativo num ferimento. Significa também pegar na mão de alguém que está ferido, tranquilizar os que estão assustados ou em pânico, dar um pouco de si."*
— CICV, 2006
