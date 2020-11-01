import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import tkinter
from mpl_toolkits.mplot3d import Axes3D
from mpl_toolkits import mplot3d


def onclick(event):
    print('%s click: button=%d, x=%d, y=%d, xdata=%f, ydata=%f' %
          ('double' if event.dblclick else 'single', event.button,
           event.x, event.y, event.xdata, event.ydata))
    x = event.xdata
    y = event.ydata
    # z = event.zdata
    print(event)
    # ax.scatter(x,y,z)


def helloCallBack():
   print( "Hello Python", "Hello World")


if __name__ == '__main__':
	data = pd.read_csv("dataset1.csv")
	n = data.size
	x = data.iloc[:,0]
	y = data.iloc[:,1]
	z = data.iloc[:,2]
	

	fig = plt.figure()
	ax = plt.axes(projection="3d")
	ax.plot3D(x,y,z)
	ax.scatter3D(x,y,z)
	# ax.plot(x,y)
	# cid = fig.canvas.mpl_connect('button_press_event', onclick)
	plt.show()

	# top = tkinter.Tk()
	# B = tkinter.Button(top, text ="Hello", command = helloCallBack)

	# B.pack()
	# top.mainloop()