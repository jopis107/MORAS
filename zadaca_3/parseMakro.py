def _parse_macros(self):
    self._iter_macros(self._parse_macro)

def _parse_macro(self, line, p, o):
    if line[0] == "$":
        line1 = line[1:] 
        makro_naredba = line1.split("(")[0]
        
        if(len(line1.split("(")) == 1): #END makro naredba
            real_arguemnts = []
        else:
            argumenti = line1.split("(")[1] #string s argumentima i zagradama
            argumenti = argumenti.split(")")
            pravi_arguemnti = argumenti[0].split(",") #lista argumenata
        
        if(makro_naredba == "MV"):
            asm_code = ["@" + pravi_arguemnti[0], "D=M", "@" + pravi_arguemnti[1], "M=D"] #lista linija asm koda za move
            return asm_code
        elif(makro_naredba == "SWP"):
            asm_code = ["@" + pravi_arguemnti[0], "D=M", "@temp", "M=D", "@"+ pravi_arguemnti[1], "D=M", "@"+pravi_arguemnti[0], "M=D", "@temp", "D=M",  "@"+pravi_arguemnti[1], "M=D"]
            return asm_code
        elif(makro_naredba == "SUM"):
            asm_code = ["@" + real_arguemnts[0], "D=M", "@" + pravi_arguemnti[1], "D=D+M", "@" + pravi_arguemnti[2], "M=D"]
            return asm_code
        else:
            self._flag = False
            self._line = o
            self._errm = "Invalid command"
            return ""
    else:
        return [line] #nije makro naredba