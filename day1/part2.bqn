spelled←⟨"threeight", "oneight","eightwo","nineight","twone","sevenine","eighthree","one","two","three","four","five","six","seven","eight","nine"⟩
numbers←⟨"38", "18","82","98","21","79","83","1","2","3","4","5","6","7","8","9"⟩
# Taken from https://github.com/mlochbaum/bqn-libs/blob/master/strings.bqn
ReplaceAll ← { ⟨old,new⟩ 𝕊 str:
  ! (≠new) ≡ l ← ≠old
  "ReplaceAll: Can't replace empty" ! ∧´0<≠¨old
  match ← 1-˜ (l+1)|⌊´ (↕⊸-l) × old (1<≠∘⊣)◶⟨⊑⊸=,≠∘⊢↑⍷⟩¨ <str
  cont ← (-⟜1⌈≤⟜1×⊢)` match ⊏ (≠¨old)∾0
  keep ← ⋈⟜(⊏⟜str) / 0=cont
  insert ← (new⊏˜⊏⟜match)⊸(≠¨⊸/⋈∾∘⊣) / (0⊸<∧»⊸≤) cont
  ⍋⊸⊏´ keep ∾¨ insert
}


Split←' '⊸((⊢-˜¬×+`)∘=⊔⊢)
Elem←(⊣´⟜(10⊸×)+⊢´)'0'-˜(⊢/˜≥⟜'0'∧≤⟜'9')
R←{+´Elem¨spelled‿numbers⊸ReplaceAll¨Split𝕩}
