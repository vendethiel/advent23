Split←' '⊸((⊢-˜¬×+`)∘=⊔⊢)
Named←{⌈´(1+↕9)×"one"‿"two"‿"three"‿"four"‿"five"‿"six"‿"seven"‿"eight"‿"nine" (≢∘⊢↑⍷)⌜<𝕩}
Elem←(⊣´⟜(10⊸×)+⊢´)((0⊸≠/⊢)Named∨(>⟜'0'∧≤⟜'9')×-⟜'0')
R←{+´Elem¨Split𝕩}
