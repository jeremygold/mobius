from python:3

RUN apt-get update && apt-get install -y
RUN apt-get install -y libcairo2
RUN pip3 install jupyter drawSvg
WORKDIR /home/notebook

CMD ["jupyter", "notebook", "--port", "6012", "--ip=0.0.0.0", "--allow-root"]
