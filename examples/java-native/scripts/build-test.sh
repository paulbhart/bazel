res=0

bazel build //...
if [[ $? -ne 0 ]]; then
    res=1
fi

bazel test //... --config=unit
if [[ $? -ne 0 ]]; then
    res=1
fi

exit $resripts