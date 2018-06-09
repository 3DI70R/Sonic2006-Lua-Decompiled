# Sonic2006-Lua-Decompiled
Code from game Sonic The Hedgehog (2006) decompiled using Unluac tool for educational purposes

This code is not 100% correct.
It can contain various errors, such as empty branches, invalid for loops, and other bugs

# Changes to decompiled code

- unpack(nil) was replaced with unpack(...), since this construction occurs only in vararg methods
- strange values in for loops (0 - 1, 1 - 1 - 1, 0 + 1) were replaced by iterator value
- value of totalScore in scripts\stages\states\standard.lua was written as self.score + self.timeBonus since unluac enters infinite loop in this part
