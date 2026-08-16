

![hexapod pernas](desenhoPernas.jpeg)

### Tabela de Conexões (Pinos de Sinal PWM)

| Perna | Articulação (Servo) | Pino ESP32 (GPIO) | Observação |
| :--- | :--- | :--- | :--- |
| **Perna 1** | Base (Coxa) | GPIO 33 | |
| | Meio (Fêmur) | GPIO 25 | |
| | Ponta (Tíbia) | GPIO 26 | |
| **Perna 2** | Base (Coxa) | GPIO 27 | |
| | Meio (Fêmur) | GPIO 14 | |
| | Ponta (Tíbia) | GPIO 12 | Pino de strapping (Pode falhar o boot se puxado em HIGH) |
| **Perna 3** | Base (Coxa) | GPIO 4 | |
| | Meio (Fêmur) | GPIO 0 | Pino de strapping (Entra em modo gravação se LOW no boot) |
| | Ponta (Tíbia) | GPIO 2 | Pino de strapping (Deve estar em LOW ou flutuando no boot) |
| **Perna 4** | Base (Coxa) | GPIO 5 | Pino de strapping (Deve estar em HIGH no boot) |
| | Meio (Fêmur) | GPIO 17 | |
| | Ponta (Tíbia) | GPIO 16 | |
| **Perna 5** | Base (Coxa) | GPIO 21 | |
| | Meio (Fêmur) | GPIO 19 | |
| | Ponta (Tíbia) | GPIO 18 | |
| **Perna 6** | Base (Coxa) | GPIO 23 | |
| | Meio (Fêmur) | GPIO 22 | |
| | Ponta (Tíbia) | GPIO 1 | Pino de gravação (TX0) - Evite usar para servos |

