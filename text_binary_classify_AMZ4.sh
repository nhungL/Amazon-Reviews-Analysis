#!/bin/bash
#Author: Nhung Luong
#
#Date: 11/30/2021
cd $1   #move to weka
export CLASSPATH=$CLASSPATH:`pwd`/weka.jar:`pwd`/libsvm.jar    #update CLASSPATH
java weka.core.converters.TextDirectoryLoader -dir $2 > $2.arff   #convert TXT to ARFF
java -Xmx1024m weka.filters.unsupervised.attribute.StringToWordVector  -i $2.arff -o $2_training.arff -M 2    #convert ARFF to word vector
java -Xmx1024m  weka.classifiers.meta.ClassificationViaRegression -W weka.classifiers.trees.M5P -num-decimal-places 4 -t $2_training.arff -d  $2_training.model -c 1   #Run ClassificationViaRegression classifier (can try other classifiers)

echo "done"
