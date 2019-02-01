# A quine is a computer program which takes no input and produces a copy of its own source code as its only output.

def s;"def s;;end;puts s()[0,6]+34.chr+s+34.chr+s()[6,s.length-6]";end;puts s()[0,6]+34.chr+s+34.chr+s()[6,s.length-6]
