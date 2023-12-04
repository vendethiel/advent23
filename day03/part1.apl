⍝ TODO broken when there's a single digit alone on the rightmost column
⍝      could probably be fixed by rotating if zoom ends with two spaces,
⍝      but careful not to break two-digits or three-diigts in that position
+/+/{⊂(~×/(,⍵(↓⍨⍤1)-3-≢⍕p)∊' .',⎕D)×(~(2 1⌷⍵)∊⎕D)×((2 2⌷⍵)∊⎕D)×p←⍎⊃(v∊⎕D)⊆v←'0',2↓¯1⌽2⌷⍵}⌺3 5⊢parsed←↑' '(≠⊆⊢)input
