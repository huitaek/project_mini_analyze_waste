from os.path import join,dirname,abspath
import platform
import matplotlib.pyplot as plt

file_root_dir = join(dirname(abspath(__file__)),'..\\..\\files')

def get_file_dir(dir_name:str,f_name:str=''):
    if dir_name == 'data':
        return join(file_root_dir,'data',f_name)
    elif dir_name == 'refined':
        return join(file_root_dir,'refined',f_name)
    else:
        return join(file_root_dir,f_name)
    
def set_korean():
    # 한글 폰트 설정
    if (platform.system() == 'Windows'):
        plt.rc('font', family='Malgun Gothic')
    else:
        plt.rc('font', family='AppleGothic')

    # 음수(-)가 깨지는 현상 방지
    plt.rcParams['axes.unicode_minus'] = False 