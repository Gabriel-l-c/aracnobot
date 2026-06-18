# 1. imagem do ros2 humble mais completa, incluindo python 3.10 e o gazebo ignition fortress
FROM osrf/ros:humble-desktop-full

# 2. bibliotecas adicionais
RUN apt-get update && apt-get install -y \
    ros-dev-tools \
    && rm -rf /var/lib/apt/lists/*

# 3. inicialização do rosdep (reclama se chamar o init mais de 1 vez, então fica dentro da condicional)
RUN if [ ! -f /etc/ros/rosdep/sources.list.d/20-default.list ]; then \
        rosdep init; \
    fi && \
    rosdep update

# 4. configuração do ambiente
WORKDIR /ros2_ws
COPY ros_entrypoint.sh /ros_entrypoint.sh
RUN chmod +x /ros_entrypoint.sh
ENTRYPOINT ["/ros_entrypoint.sh"]

# 5. copiando código fonte do repositório pro container e compilando
COPY ./src /ros2_ws/src
RUN /bin/bash -c "source /opt/ros/humble/setup.bash && colcon build"

CMD ["bash"]

# 6. setup do ros2 automatico quando abrir o container interativo
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc && \
    echo "source /ros2_ws/install/setup.bash" >> ~/.bashrc