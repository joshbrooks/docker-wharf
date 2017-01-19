
USER=SEL-Columbia
REPO=formhub

if [ -d ${REPO} ]; then
  cd ${REPO}
  git pull
fi
if [ ! -d ${REPO} ]; then
  git clone https://github.com/${USER}/${REPO}
fi

docker build -t formhub -f formhub.Dockerfile .
