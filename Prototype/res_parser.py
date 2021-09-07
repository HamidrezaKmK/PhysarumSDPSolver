import os
import numpy as np

directory = os.path.join('tests', 'testset2-2')
threshold = 0.01

for filename in os.listdir(directory):
    if filename.endswith(".res"): 
        with open(os.path.join(directory, filename), 'r') as fp:
            Lines = fp.readlines()
            Mat = []
            start = False
            for i in range(len(Lines)):
                if Lines[i] == "{\n":
                    start = True
                    continue
                if start:
                    if Lines[i+1] != "}\n":
                        Mat.append(list(map(float, Lines[i][3:len(Lines[i]) - 4].split(','))))
                    else:
                        Mat.append(list(map(float, Lines[i][3:len(Lines[i]) - 7].split(','))))
                        break
            Mat = np.array(Mat)
            eigvals = np.linalg.eigvalsh(Mat)
            if np.all(eigvals > threshold):
                print(filename, ": accepted")
            else:
                print(filename, ": rejected")
                        
                
                
        
