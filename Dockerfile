FROM centos:7

# Install and Configure SigSci Agent
COPY contrib/sigsci.repo /etc/yum.repos.d/
RUN yum -y install sigsci-agent
COPY contrib/agent.conf /etc/sigsci/agent.conf

CMD /usr/sbin/sigsci-agent
