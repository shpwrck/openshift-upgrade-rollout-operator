FROM quay.io/operator-framework/ansible-operator:v1.34.3

COPY requirements.yml ${HOME}/requirements.yml

USER root
RUN pip3.9 install jmespath --target /usr/local/lib/python3.9/site-packages

USER ansible
RUN ansible-galaxy collection install -r ${HOME}/requirements.yml \
 && chmod -R ug+rwx ${HOME}/.ansible

COPY watches.yaml ${HOME}/watches.yaml
COPY roles/ ${HOME}/roles/
COPY playbooks/ ${HOME}/playbooks/
