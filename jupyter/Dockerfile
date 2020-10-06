FROM jupyter/base-notebook

WORKDIR /code

COPY requirements.txt requirements.txt
RUN pip --no-cache install -r requirements.txt

CMD ["jupyter", "notebook", "--no-browser", "--ip", "0.0.0.0", "--allow-root"]