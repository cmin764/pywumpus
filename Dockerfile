FROM garland/butterfly

RUN apt update
RUN apt install git -y
RUN apt upgrade python3 -y
RUN apt install python3-pip -y

RUN python3 -m pip install -U pip setuptools
#RUN pip3 install -U butterfly
RUN pip3 install git+https://github.com/cmin764/pywumpus.git --no-cache-dir

CMD echo "Ready installing"

EXPOSE 8000
CMD ["butterfly.server.py", "--host=0.0.0.0", "--port=8000", "--cmd=pywumpus.py", "--unsecure"]
#ENTRYPOINT ["docker/run.sh"]
