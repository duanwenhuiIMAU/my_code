class Node:
    def __init__(self,list = [],parent = None):
        self.list = list
        self.parent = parent
    def up(self):
        listchild = self.list.copy()
        for i in range(len(listchild)):
            if(listchild[i]==0 and i>2):
                temp = listchild[i]
                listchild[i] = listchild[i-3]
                listchild[i-3] = temp
                break
        if listchild == self.list:
            return []
        else:
            return listchild
    def down(self):
        listchild = self.list.copy()
        for i in range(len(listchild)):
            if(listchild[i]==0 and i<6):
                temp = listchild[i]
                listchild[i] = listchild[i+3]
                listchild[i+3] = temp
                break
        if listchild == self.list:
            return []
        else:
            return listchild
    def right(self):
        listchild = self.list.copy()
        for i in range(len(listchild)):
            if(listchild[i]==0 and i%3!=0):
                temp = listchild[i]
                listchild[i] = listchild[i-1]
                listchild[i-1] = temp
                break
        if listchild == self.list:
            return []
        else:
            return listchild
    def left(self):
        listchild = self.list.copy()
        for i in range(len(listchild)):
            if(listchild[i]==0 and (i+1)%3!=0 ):
                temp = listchild[i]
                listchild[i] = listchild[i+1]
                listchild[i+1] = temp
                break
        if listchild == self.list:
            return []
        else:
            return listchild
    def showMarix(self):
        slice = self.list
        print('                            ',slice[0:3])
        print('                            ',slice[3:6])
        print('                            ',slice[6:9])
    def track(self):
        node = self
        track = []
        #track.append(node)
        while node.parent != None:
            track.append(node)
            node = node.parent
        track.append(node)
        return track
    def showInfo(self):
        track = self.track()
        track.reverse()
        for item in track:
            item.showMarix()
            print('                        it\'s child below ')
    def getLevel(self):
        return len(self.track())
    def check(self):
        if self.list == []:# 查其是否为空
            return False 
        elif self.parent.parent != None:# 其父是否与其子一样
            if self.list == self.parent.parent.list:
                return False
            else:
                return True
        else:
            return True
    def isEqual(self,list):
        return True if self.list == list else False
    def isEmpty(self):
        return True if self.list == [] and self.parent == None else False
    def getChild(self,list_begin):
        if self.isEmpty():
            self = Node(list_begin,parent = None)
            return self.getChild(list_begin) ## 递归一次
        else :
            squeues = []
            # up
            up = self.up().copy()
            new_up = Node(up,self)
            if new_up.check():
                squeues.append(new_up)
            #down
            down = self.down().copy()
            new_down = Node(down,self)
            if new_down.check():
                squeues.append(new_down)
            #right
            right = self.right().copy()
            new_right = Node(right,self)
            if new_right.check():
                squeues.append(new_right)
            #left
            left = self.left().copy()
            new_left = Node(left,self)
            if new_left.check():
                squeues.append(new_left)
            return squeues
    def inversion(self,list):
        temp = list.copy()
        count = 0
        while temp:
            first = temp.pop(0)
            for item in temp:
                if first > item:
                    count += 1
        return count
    def getAnswer(self,list_begin,list_end,uncle):
        inv = self.inversion(list_begin)
        if inv%2 == 0:
            childs = uncle
            check = 0
            cousin = []
            for item in childs:
                if item.isEqual(list_end):
                    item.showInfo()
                    check == 1
                    return uncle
            if check == 0: 
                print('this is',childs[0].getLevel() + 1,'level')
                for item in childs:
                    cousin.extend(item.getChild(item.list))
                self.getAnswer(list_begin,list_end,cousin)
        else:
            return False
    
    def diff(self,list_end):
        temp = self.list
        count = 0
        for i in range(len(list_end)):
            if temp[i] != list_end[i] and temp[i] != 0:
            # if temp[i] != list_end[i]:
                count += 1
        return count + self.getLevel() - 1
        # return count
    def getIndex(self,list):
        min = list[0]
        for value in list:
            if value < min:
                min = value
        for i in range(len(list)):
            if list[i] == min:
                return i
                break
    def rank(self,list_end,nodeSeq):
        rank = []
        new = []
        seq = nodeSeq.copy()
        for item in seq:
            rank.append(item.diff(list_end))
        while seq:
            minIndex = item.getIndex(rank)
            new.append(seq.pop(minIndex))
            rank.pop(minIndex)
        return new
    def getAnswerLoop(self,list_begin,list_end):
        inv = self.inversion(list_begin)
        if inv%2 == 0:
            open = []
            close = []
            seq = self.getChild(list_begin)
            # 插入 S
            open.append(seq[0].parent)
            # 对 S 操作
            work = open.pop(0)
            if work.isEqual(list_end):
                work.showInfo()
                print('it is open')
                for i in open:
                    i.showMarix()
                    print(' ')
                print('it is close')
                for i in close:
                    i.showMarix()
                    print(' ')
            else:
                close.append(work)
                open.extend(seq[0].rank(list_end,seq))
            while 1:
                work = open.pop(0)
                if work.isEqual(list_end):
                    work.showInfo()
                    print('it is open')
                    for i in open:
                        i.showMarix()
                        print(' ')
                    print('it is close')
                    for i in close:
                        i.showMarix()
                        print(' ')
                    break
                else:
                    temp = []
                    temp.extend(open)
                    temp.extend(work.getChild(work.list))
                    temp.append(work)
                    while open:
                        open.pop(0)
                    open.extend(temp[0].rank(list_end,temp))
                    work = open.pop(0)
                    close.append(work)
                    print('this is',work.getLevel(),'level')
        else:
            return False


if __name__ == '__main__':
    #begin = [ 2,0, 3, 1, 8, 4, 7, 6, 5 ]
    be = [ 1,0, 3, 7, 2, 4, 6, 8, 5 ]
    end = [1, 2, 3, 8, 0, 4, 7, 6, 5 ]
    node = Node()
    # print('盲目')

    # uncle = node.getChild(begin)# 要生成第一，二层
    # # a = node.getAnswer(begin,end,uncle)# 检查第二层，无要得到的数则生成下一层
    # uncle = node.getChild(be)# 要生成第一，二层
    # b = node.getAnswer(be,end,uncle)
    # # print(type(a))
    # print(type(b))

    print('启发式')
    node.getAnswerLoop(be,end)



