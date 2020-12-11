FROM maven:3.6.3-amazoncorretto-8

# Install some libs
RUN yum -y install libX11 libxi6 libgconf-2-4

# Install Chrome
RUN curl -L -o google-chrome.rpm https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
RUN yum -y install ./google-chrome.rpm
RUN rm google-chrome.rpm

# Add user for Jenins
RUN useradd -u 1001 jenkins

# Set Timezone
ENV TZ=CET
