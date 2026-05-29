# 🤖 ArachnoBot Rescue — UGV de Primeiros Socorros

<div align="center">

> *"Os cientistas estudam o mundo como ele é; os engenheiros criam*  
> *o mundo que nunca existiu."— Theodore von Kármán*

[![Status](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellow)](.)
[![Licença](https://img.shields.io/badge/Licença-MIT-blue)](.)
[![Plataforma](https://img.shields.io/badge/Plataforma-ROS%20%2F%20ESP32-green)](.)
[![Tipo](https://img.shields.io/badge/Tipo-UGV%20Hexápode-red)](.)

</div>

---

📌 Sobre o Projeto
O ArachnoBot é uma proposta de Veículo Terrestre Não Tripulado (UGV) com morfologia hexápode, concebido para atuar como ferramenta de apoio em operações de resgate e primeiros socorros em ambientes hostis — locais onde a presença humana direta representa risco severo ou é simplesmente inviável.
O projeto se situa na interseção de três campos:

🤖 Robótica Móvel de Resgate — navegação autônoma e teleoperação em terrenos adversos
⚕️ Atendimento Pré-Hospitalar (APH) — entrega de suprimentos médicos essenciais a vítimas isoladas
🏗️ Engenharia de Sistemas Embarcados — plataforma de baixo custo e arquitetura aberta


Este repositório documenta a proposta, fundamentação teórica e planejamento do projeto. O desenvolvimento do protótipo físico ainda não foi iniciado.


🚨 O Problema: A Lacuna na Hora de Ouro
Em operações de Busca e Salvamento (SAR — Search and Rescue) e em intervenções em desastres — incêndios urbanos, colapsos estruturais, zonas de conflito — existe uma janela temporal crítica denominada "hora de ouro do trauma". Neste intervalo, intervenções simples de primeiros socorros como controle de hemorragia, abertura de vias aéreas e prevenção de hipotermia são determinantes para a sobrevivência.
O problema é que as equipes de resgate humano são sistematicamente impedidas de acessar as vítimas neste período por fatores como:
BarreiraExemplos ConcretosInstabilidade estruturalEdifícios colapsados, escombros, minasAltas temperaturasIncêndios urbanos, focos industriaisZonas de exclusão táticaProtocolos de segurança em conflitos armados e operações policiaisTopografia adversaMorros, becos, escadarias, regiões alagadas

"Mais de 50% dos civis feridos durante combates em centros urbanos precisam apenas receber os primeiros socorros — acrescidos de um simples antibiótico oral e um analgésico. Eles precisam apenas de cuidados imediatos e de um tratamento complementar de estabilização, e não ser hospitalizados."
— CICV, Primeiros Socorros em Conflitos Armados e Outras Situações de Violência, 2006 (ICRC 007/0870)

O ArachnoBot propõe-se a preencher esta lacuna logística e temporal, projetando a capacidade de assistência do socorrista para dentro das zonas de exclusão antes ou durante o acesso humano.

🎯 Objetivos
Geral
Desenvolver a proposta e, futuramente, um protótipo funcional de UGV hexápode voltado para reconhecimento de terreno e entrega remota de suprimentos de primeiros socorros em ambientes de difícil ou impossível acesso humano imediato.
Específicos

 Definir os requisitos mecânicos de uma plataforma hexápode capaz de transpor obstáculos urbanos típicos (escombros, degraus, terrenos irregulares)
 Especificar a arquitetura de sensoriamento e telemetria (câmera, temperatura, IMU) para transmissão de dados em tempo real ao operador
 Projetar um compartimento de carga adaptado ao transporte de suprimentos essenciais de APH
 Elaborar a arquitetura de software para teleoperação e, em estágios futuros, navegação semiautônoma
 Mapear protocolos de uso alinhados às diretrizes internacionais do CICV para primeiros socorros em ambientes hostis
 Validar a proposta com foco em baixo custo de produção e potencial de escalabilidade


🔬 Fundamentação Teórica e Estado da Arte
Robótica Autônoma em Suporte a Bombeiros (Ambientes Indoor)
A inserção de UGVs para suporte a bombeiros em ambientes fechados já é uma realidade validada. Talavera et al. (2023) demonstraram, no Journal of Field Robotics, a eficácia de arquiteturas autônomas para auxiliar intervenções em locais com risco de colapso estrutural — realizando reconhecimento térmico e visual que os EPIs humanos não toleram por tempo suficiente. O estudo sustenta diretamente a premissa deste projeto: robôs terrestres podem ser a vanguarda segura de uma operação de resgate.
Consciência Situacional e Mapeamento em Catástrofes
Em situações de desastre, a telemetria é vital. O consórcio europeu TRADR (Euronews) demonstrou que drones terrestres com sensores a laser geram mapeamento 3D de zonas sinistradas em tempo real, fornecendo aos comandantes dados críticos antes de expor as equipes ao perigo. Esta capacidade de "ver sem estar" é um dos pilares funcionais do ArachnoBot.
APH Tático e Entrega Logística de Resgate
O desenvolvimento de robôs focados especificamente no transporte logístico de emergência — como os documentados em People.cn e no projeto FireBot (CNN Portugal, capaz de suportar temperaturas acima de 530°C) — evidencia a demanda global por sistemas mecânicos de entrega em zonas hostis. O ArachnoBot incorpora este conceito adaptado à realidade do APH: o robô não trata a vítima, mas entrega os meios para que ela possa receber ou aplicar os primeiros socorros sob orientação remota de um profissional.
Protocolos Humanitários e APH em Campo
O CICV (Comitê Internacional da Cruz Vermelha), no manual Primeiros Socorros em Conflitos Armados e Outras Situações de Violência (ICRC 007/0870, 2006), estabelece que a abordagem primária de uma vítima segue a sequência A-B-C-D-E (Vias aéreas, Respiração, Circulação, Incapacidade, Exposição). Os suprimentos transportados pelo ArachnoBot são selecionados para atender exatamente estas etapas críticas — especialmente o controle de hemorragia (C) e a proteção contra hipotermia (E).
O Manual de Medidas de Segurança e Primeiros Socorros (Chang, 2015) complementa esta base, detalhando os materiais essenciais de uma caixa de primeiros socorros de campo e os procedimentos de atendimento inicial — referência direta para a especificação da carga útil do robô.
Morfologia Hexápode para Terrenos Adversos
A escolha de seis pernas não é estética — é funcional. Plataformas hexápodes apresentam redundância de locomoção (a falha de uma perna não paralisa o sistema), maior estabilidade estática em terrenos irregulares e capacidade de transpor obstáculos que inviabilizam plataformas rodadas. A comunidade open-source já documentou extensamente soluções de referência que fundamentarão a arquitetura mecânica deste projeto.

💡 Conceito de Operação
  OPERADOR / SOCORRISTA
  (zona segura)
        │
        │  Teleoperação via Wi-Fi / RF
        │  Vídeo ao vivo + telemetria
        ▼
  ┌─────────────────────┐
  │    ARACHNOBOT UGV   │
  │  ┌───────────────┐  │
  │  │  Câmera FPV   │  │
  │  │  Sensores     │  │
  │  │  Carga APH    │  │
  │  └───────────────┘  │
  │   6 pernas / servo  │
  └─────────────────────┘
        │
        │  Navega pelo ambiente hostil
        ▼
  ┌─────────────────────┐
  │    VÍTIMA ISOLADA   │
  │  Recebe suprimentos │
  │  Guiada remotamente │
  │  pelo socorrista    │
  └─────────────────────┘
O operador, em segurança, visualiza o ambiente por meio da câmera do robô, navega até a vítima e libera os suprimentos de APH. Se a vítima estiver consciente, o socorrista pode orientá-la remotamente (por áudio) sobre como aplicar torniquete, curativo compressivo ou coberta térmica — seguindo os protocolos A-B-C-D-E do CICV — até a chegada da equipe de resgate ao local.

🧰 Carga Útil Prevista — Kit de APH
Os suprimentos são selecionados com base nas intervenções de maior impacto na "hora de ouro", conforme os protocolos do CICV e do Manual Chang (2015):
SuprimentoFinalidadeBase ProtocolarTorniquete (CAT ou improviso)Controle de hemorragia em membrosCICV Sec. 6.1.3Bandagem de compressãoCurativo compressivo em ferimentosCICV Sec. 6.2.6 / Chang 14.1Máscara de ressuscitaçãoVentilação artificial boca-a-máscaraCICV Sec. 6.1.2 / Chang 4.2.1Curativos estéreis (P/M/G)Curativo de ferimentos abertosChang 2.2 / CICV Sec. 6.2.6Gaze hemostática + gazes secasControle de sangramentoCICV Sec. 6.1.3 / Chang 14.1Soro fisiológico (sachê)Limpeza de ferimentosChang 2.2 / 3.3.1Cobertor térmico (aluminizado)Prevenção de hipotermia e choqueCICV Sec. 6.1.5 / Chang 10

⚕️ Escopo de atuação: O robô realiza exclusivamente a entrega de suprimentos e transmissão de vídeo/áudio. A administração dos primeiros socorros é responsabilidade da vítima consciente, orientada remotamente por um profissional de saúde, ou das equipes que chegam posteriormente.


🔗 Repositórios de Referência — Plataformas Hexápode Open Source
O projeto se apoia na vasta literatura técnica open-source de robôs hexápodes para fundamentar suas escolhas de arquitetura:
RepositórioRelevância para o Projetomithi/hexapodReferência principal de cinemática inversa e simulação visualMakeYourPet/hexapodDesign mecânico acessível e controle de servosrookidroid/hexapodImplementação embarcada de baixo custoSmallpTsai/7688-hexapodIntegração com plataformas IoT e comunicaçãoneuroprod/InsectRobotSimulationSimulação de locomoção bioinspiradaByteRyze/Hexapod_2Referência de hardware e estrutura físicaClimbSnail/HexapodRobot_STC15Firmware em microcontrolador de baixo custoJakobLeander/hexapodPlanejamento de trajetória e controle de marcha

📚 Referências Bibliográficas
bibtex@article{talavera2023,
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
  publisher = {CICV — Genebra, Suíça}
}

@manual{chang2015,
  author = {Chang Yen-Li Chain},
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
  note  = {Documentação Técnica de Referência Nacional}
}
Referências de Mídia e Projetos Afins

FireBot — CNN Portugal: "Estudantes constroem robot que consegue aguentar temperaturas acima dos 530 graus"
Projeto TRADR — Euronews: "Os robôs que ajudam os bombeiros italianos"
People.cn — Inovações em Robôs de Resgate e Transporte de Emergência


🗺️ Próximos Passos (Roadmap)
FaseDescriçãoStatusFase 0Proposta conceitual e levantamento bibliográfico✅ Em andamentoFase 1Especificação de requisitos e seleção de componentes📋 PlanejadoFase 2Projeto mecânico (CAD) e simulação de cinemática📋 PlanejadoFase 3Prototipagem da plataforma de locomoção📋 PlanejadoFase 4Integração de sensores e sistema de comunicação📋 PlanejadoFase 5Desenvolvimento da interface de teleoperação📋 PlanejadoFase 6Testes integrados e validação do protótipo📋 Planejado

👥 Contexto Acadêmico
Este projeto é concebido no âmbito universitário com caráter multidisciplinar, reunindo áreas como:

Engenharia Mecânica — Projeto estrutural e cinemática da plataforma hexápode
Engenharia Elétrica / Eletrônica — Sistemas embarcados, sensoriamento e energia
Ciência da Computação — Comunicação, visão computacional e interface de controle
Saúde / APH — Definição dos protocolos de primeiros socorros e especificação da carga útil


<div align="center">
ArachnoBot — Uma proposta para levar socorro onde pessoas ainda não podem ir.
"Prestar os primeiros socorros não significa somente fazer respiração artificial ou colocar um curativo.
Significa também pegar na mão de alguém que está ferido."
— CICV, 2006
</div>
