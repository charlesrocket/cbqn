# needs: Singeli & -DTEST_GROUP_STAT
"basic test doesn't work; are you on a -DTEST_GROUP_STAT build?" ! 0‿0‿1‿10‿9 ≡ •internal.Temp ↕10

%DEF tvar AllEq←{v←⊑𝕩 ⋄ {𝕩≡v?1;!𝕩‿v}¨ ⥊𝕩 ⋄ v} ⋄ _tvar ← {Sel _𝕣 a: AllEq {Sel •internal.Temp 𝕩•internal.Variation a}¨ ∊⟜"Ai8"‿"Ai16"‿"Ai32"⊸/ •internal.ListVariations •internal.Squeeze a}
%USE tvar ⋄ ⊢_tvar ↕10 %% 0‿0‿1‿10‿9

%USE tvar ⋄ AllEq {a←𝕩⥊0 ⋄ AllEq {⊑_tvar   ¯2⌾(𝕩⊸⊑) a}¨ ↕𝕩}¨ 1+↕40 %% 1
%USE tvar ⋄ AllEq {a←𝕩⥊0 ⋄ AllEq {⊑_tvar ¯128⌾(𝕩⊸⊑) a}¨ ↕𝕩}¨ 1+↕40 %% 1

%USE tvar ⋄ AllEq {⊢_tvar 𝕩⥊0}¨ 1+↕1000 %% 0‿0‿1‿1‿0
%USE tvar ⋄ AllEq {⊢_tvar 𝕩⥊10}¨ 1+↕1000 %% 0‿0‿1‿1‿10
%USE tvar ⋄ {! ⟨0,0,0,𝕩,3⟩ ≡ ⊢_tvar 𝕩⥊3‿2}¨ 2+↕1000
%USE tvar ⋄ {! ⟨0,0,1,𝕩,𝕩-1⟩ ≡ ⊢_tvar ↕𝕩}¨ 1+↕1000

%USE tvar ⋄ AllEq {a←𝕩⥊0 ⋄ AllEq {0‿1‿2‿4⊸⊏_tvar 3⌾(𝕩⊸⊑) a}¨ ↕𝕩-1}¨ 2+↕40 %% 0‿0‿0‿3
%USE tvar ⋄ AllEq {a←𝕩⥊0 ⋄ AllEq {        ⊢_tvar 9⌾(𝕩⊸⊑) a}¨ 1+↕𝕩-2}¨ 3+↕40 %% 0‿0‿0‿3‿9

%USE tvar ⋄ AllEq {a←𝕩⥊0 ⋄ AllEq {0‿1‿4⊸⊏_tvar ¯1⌾(𝕩⊸⊑) a}¨ ↕𝕩}¨ 2+↕40 %% 0‿1‿0
%USE tvar ⋄ AllEq {a←𝕩⥊0 ⋄ AllEq {0‿1‿4⊸⊏_tvar 12⌾(𝕩⊸⊑) a}¨ ↕𝕩}¨ 1+↕40 %% 0‿0‿12
