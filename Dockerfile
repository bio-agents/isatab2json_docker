FROM python:3-onbuild
LABEL Description="Convert ISA tab to ISA JSON file"
MAINTAINER David Johnson, david.johnson@oerc.ox.ac.uk
RUN pip install isaagents
ADD run_tab2json.py /
ADD requirements.txt /
ENTRYPOINT ["python", "run_tab2json.py"]
