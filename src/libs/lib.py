from os.path import join,dirname,abspath
import platform
import matplotlib.pyplot as plt
import pandas as pd

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
    
def get_insert_query(desc):
    try:
        df = pd.read_csv(get_file_dir('refined',desc['file_name']))
    except Exception as e:
        df = pd.read_csv(get_file_dir('refined',desc['file_name']),encoding='euc-kr')
    query_list = []
        
    for i in df.values:
        query = []
        for d in i:
            if isinstance(d,str):
                query.append('\'{}\''.format(d))
            else:
                query.append('{}'.format(d))
        query_list.append(','.join(query))

    query_list = ','.join(list(map(lambda x:'({})'.format(x), query_list)))
    return 'insert into {}{} values {}'.format(desc['table_name'],desc['columns'],query_list)
    