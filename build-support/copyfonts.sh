echo $ACTIONS_OS

IMAGE_PATH="/home/runner/smalltalkCI-master/_builds/Roboto/"

if [ "$ACTIONS_OS" == "macos-latest" ];
  then IMAGE_PATH="/Users/runner/smalltalkCI-master/_builds/Roboto/";
fi;

mkdir -p $IMAGE_PATH
cp -R ./fonts/* $IMAGE_PATH
chmod -R 777 $IMAGE_PATH

ls -lisa $IMAGE_PATH
