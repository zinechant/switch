from re import match
from re import sub

def LineGenerator(filepath):
    FileHD = open(filepath,'r')
    while True:
        Line = FileHD.readline()
        if not Line:
            break
        yield Line.strip('\r\n')
    FileHD.close()

def FindFileREInDir(FileRE, Dir, SuggestedV = None):
    res = []
    for FileName in os.listdir(Dir):
        if match(FileRE, FileName):
            res.append(FileName)
    if SuggestedV != None and len(res) != SuggestedV:
        print("Warning: #%s in %s is %d, while suggested %d. Continued."
                %(FileRE, Dir, len(res), SuggestedV))
    return res

def ReadTrashUntilRE(LineGen,reexp):
    for line in LineGen:
        m = match(reexp,line)
        if (m):
            return m.groups()
        else:
            print("Warning: line '%s' omitted." % line)
    return None

def ConcatUntilRE(LineGen, reexp):
    res = ""
    for line in LineGen:
        res += line
        if (match(reexp,line)):
            return res
    return None

class PathPoint(object):
    def __init__(self, arr):
        assert(len(arr) == 2 or len(arr) == 5)
        self.Point = arr[0]
        self.PointNoArr = sub("\[.*\]","",arr[0])
        self.Type = arr[1]  
        if len(arr) == 5:
            self.Incr = float(arr[2]) 
            self.Path = float(arr[3])
            self.Edge = arr[4]

class TimingPath(object):
    def __init__(self, StartPoint, EndPoint, PathGroup, PathType, Path, 
            ArrivalTime):
        self.StartPoint = StartPoint
        self.EndPoint = EndPoint
        self.PathGroup = PathGroup
        self.PathType = PathType
        self.Path = Path
        self.ArrivalTime = ArrivalTime

class TimingReport(object):
    def __init__(self, FilePath):
        LineGen = LineGenerator(FilePath)
        TimingPaths = []
        while (True):
            NewPath = ReadTrashUntilRE(LineGen, r"Wire Load Model Mode:.*")
            if (NewPath == None):
                break
            assert(next(LineGen)=="")
            StartPoint = ConcatUntilRE(LineGen, r".*\)\s*")
            EndPoint = ConcatUntilRE(LineGen, r".*\)\s*")
            # PathGroup = ConcatUntilRE(LineGen, r".*\)\s*")
            # PathType = ConcatUntilRE(LineGen, r".*\)\s*")
            PathGroup = next(LineGen)
            PathType = next(LineGen)
            StartPoint = PathPoint(match(r"\s+Startpoint:\s+(\S+)\s+\((.*)\).*",
                StartPoint).groups()) 
            EndPoint = PathPoint(match(r"\s+Endpoint:\s+(\S+)\s+\((.*)\).*",
                EndPoint).groups())
            PathGroup = match(r"\s+Path\s+Group:\s+(\S+).*",
                PathGroup).groups()[0]
            PathType = match(r"\s+Path\s+Type:\s+(\S+).*",
                PathType).groups()[0]
            assert(next(LineGen) == "")
            next(LineGen)
            next(LineGen)
            line = next(LineGen)
            assert(line[:13]=="  input exter" or line[:13]==" clock ideal")
            if (line[:13] == " clock ideal"):
                line = next(LineGen)
                assert(line[:13] == "  clock netwo")
            Path = []
            while(True):
                line = next(LineGen)
                if line[:19] == "  data arrival time":
                    ArrivalTime = match(r".*\s+([\d\.]+).*",line).groups()[0]
                    break
                Path.append(PathPoint(match(r"\s+(\S+)\s+\((\S+)\).*"
                    r"\s+([\d\.]+)[*\s]+([\d\.]+)\s+([rf])\s*",line).groups()))
            ReadTrashUntilRE(LineGen, r"\s*slack (\w*).*")
            TimingPaths.append(TimingPath(StartPoint, EndPoint, PathGroup,
                PathType, Path, ArrivalTime))
        self.TimingPaths = TimingPaths

if __name__ == "__main__":
    tr = TimingReport("/home/Zine.Chant/UDPLane/build/ASIC/dc-syn/"
    "build-dc-2016-10-08_20-43-UDPLane/reports/UDPLane.mapped.timing.rpt")
