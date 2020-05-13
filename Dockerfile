FROM centos

RUN yum install python3 -y
RUN yum install java -y
RUN yum install git -y
RUN yum install wget -y
RUN yum install net-tools -y

RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat/jenkins.repo
RUN rpm --import http://pkg.jenkins.io/redhat/jenkins.io.key
RUN yum install jenkins

CMD java -jar /usr/lib/jenkins/jenkins.war
