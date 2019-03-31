FROM garland/butterfly

RUN apt update
RUN apt install git -y
RUN apt upgrade python3 -y
RUN apt install python3-pip -y

RUN pip3 install -U butterfly

RUN git clone https://github.com/cmin764/pywumpus.git
RUN cd pywumpus
RUN pip install -e .

RUN pip3 install git+https://github.com/cmin764/pywumpus.git

CMD pywumpus.py

#CMD "clear"
#ENTRYPOINT ["butterfly.server.py" "--host=0.0.0.0" "--port=8000" "--cmd=pywumpus.py" "--unsecure"]
