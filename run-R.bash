echo update openapi-generator
./bin/utils/openapi-generator-cli.sh
rm -Rf ./namsor/client/R/*
echo run openapi-generator
java -jar modules/openapi-generator-cli/target/openapi-generator-cli.jar generate  --git-repo-id namsor-r-sdk2 --git-user-id namsor --skip-validate-spec -i https://v2.namsor.com/NamSorAPIv2/api2/openapi.json -g r -o  namsor/client/R --additional-properties packageName=namsor,packageVersion=2.1.0
cp -R /home/namsor/codegen/openapi-generator/namsor/client/R/* /home/namsor/codegen/namsor-R-sdk2/
cp /home/namsor/codegen/openapi-generator/run-R.bash /home/namsor/codegen/namsor-R-sdk2/

