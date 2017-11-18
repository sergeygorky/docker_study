FROM ubuntu:16.04
FROM python:3

RUN apt-get update


# Install deps + add Chrome Stable + purge all the things
RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    --no-install-recommends \
    && curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list \
    && apt-get update && apt-get install -y \
    google-chrome-stable \
    --no-install-recommends \
    && apt-get purge --auto-remove -y curl gnupg \
    && rm -rf /var/lib/apt/lists/*


ADD script.py /

COPY drivers/* /drivers/

COPY requirements.txt /
RUN pip install -r requirements.txt
RUN rm requirements.txt

CMD [ "python", "./script.py" ]