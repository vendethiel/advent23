⍝ rabbitgrowth++ for the help cleaning up
+/,{(~∧/(⍵↑⍤1⍨2+≢n)∊⎕D,'. ')×(~⍵[2;1]∊⎕D)×⍎'0',n←{⍵/⍨∧\⍵∊⎕D}⍵[2;1+⍳3]}⌺3 5⊢↑'.',⍨¨' '(≠⊆⊢)input
