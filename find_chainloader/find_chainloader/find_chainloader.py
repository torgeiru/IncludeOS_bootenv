def find_chainloader():
    import os
    
    chainloader = os.environ.get('INCLUDEOS_CHAINLOADER', None)
    if chainloader is None:
        propagatedBuildInputs = os.environ.get('propagatedBuildInputs', None)
        if propagatedBuildInputs is not None:
            for c_path in propagatedBuildInputs.split(' '):
                chainloader_candidate = c_path + "/bin/chainloader"
                if os.path.isfile(chainloader_candidate):
                    chainloader = c_path + "/bin"
                    break
                
    if chainloader is not None:
        chainloader = chainloader + "/chainloader"
    
        print(f"Path to chainloader: {chainloader}")
    else:
        print("Can't find a chainloader!")