

![hexapod pernas](desenhoPernas.jpeg)

### Tabela de Conexões (Pinos de Sinal PWM)

| Perna | Articulação (Servo) | Pino ESP32 (GPIO) | Observação |
| :--- | :--- | :--- | :--- |
| **Perna 1** | Base (Coxa) | GPIO 33 | |
| | Meio (Fêmur) | GPIO 25 | |
| | Ponta (Tíbia) | GPIO 26 | |
| **Perna 2** | Base (Coxa) | GPIO 27 | |
| | Meio (Fêmur) | GPIO 14 | Pino de boot (Evitar carga pesada na inicialização)|
| | Ponta (Tíbia) | GPIO 12 | Pino de boot (Se o ESP32 não ligar, verifique este servo)|
| **Perna 3** | Base (Coxa) | GPIO 4 | |
| | Meio (Fêmur) | GPIO 32 |  |
| | Ponta (Tíbia) | GPIO 15 |Pino de boot (Emite sinal rápido ao ligar)  |
| **Perna 4** | Base (Coxa) | GPIO 5 | Pino de boot (Pode dar um pequeno tranco ao ligar)|
| | Meio (Fêmur) | GPIO 2 | LED Interno / Dá tranco no boot |
| | Ponta (Tíbia) | GPIO 0 | Botão BOOT / Risco de travar o código se puxado para LOW|
| **Perna 5** | Base (Coxa) | GPIO 21 | |
| | Meio (Fêmur) | GPIO 19 | |
| | Ponta (Tíbia) | GPIO 18 | |
| **Perna 6** | Base (Coxa) | GPIO 23 | |
| | Meio (Fêmur) | GPIO 22 | |
| | Ponta (Tíbia) | GPIO 13 | |

