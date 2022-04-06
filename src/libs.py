from os.path import join
from os import getcwd
from typing import Optional

file_root_dir = join(getcwd(),'..\\files')

def get_file_dir(dir_name:str,f_name:str=''):
    if dir_name == 'data':
        return join(file_root_dir,'data',f_name)
    elif dir_name == 'refined':
        return join(file_root_dir,'refined',f_name)
    else:
        return join(file_root_dir,f_name)