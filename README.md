# EnvironmentToTestPythonPackageLSSVR
Environment for testing sample python code of LSSVR, python package

# How to use

At first, Download this repository.
And then, do next commands
```
$docker compose up -d
$docker exec -it workspace /bin/bash
```

After that you will be in a new container, so run next code
```
$python3 sample.py
```

# warnings

Because of importing old ubuntu repository, you may meet up with "403"error.
Don't be afraid, you can try same command, and you can see it will success.
