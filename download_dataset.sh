FILE=$1
if [[ $FILE != "charades"  ]]; then
    echo "Available datasets are:charades "
    exit 1
fi
if [[ $FILE == "cityscapes" ]]; then
    echo "Due to license issue, we cannot provide the Cityscapes dataset from our repository. Please download the Cityscapes dataset from https://cityscapes-dataset.com, and use the script ./datasets/prepare_cityscapes_dataset.py."
    echo "You need to download gtFine_trainvaltest.zip and leftImg8bit_trainvaltest.zip. For further instruction, please read ./datasets/prepare_cityscapes_dataset.py"
    exit 1
fi
echo "Specified [$FILE]"
URL=https://ai2-public-datasets.s3-us-west-2.amazonaws.com/charades/$FILE.zip
ZIP_FILE=./dataset/ag/video/$FILE.zip
TARGET_DIR=./dataset/ag/video/$FILE/
wget -N $URL -O $ZIP_FILE
mkdir $TARGET_DIR
unzip $ZIP_FILE -d ./dataset/ag/video/
rm $ZIP_FILE

