.class  Lcom/ibm/icu/text/CollationRuleParser$OptionSet;
.super Ljava/lang/Object;
.source "CollationRuleParser.java"
.field  m_caseFirst_:I
.field  m_decomposition_:I
.field  m_isAlternateHandlingShifted_:Z
.field  m_isCaseLevel_:Z
.field  m_isFrenchCollation_:Z
.field  m_isHiragana4_:Z
.field  m_strength_:I
.field  m_variableTopValue_:I
.method constructor <init>(Lcom/ibm/icu/text/RuleBasedCollator;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget v0, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_variableTopValue_:I
iput v0, p0, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_variableTopValue_:I
invoke-virtual {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->isFrenchCollation()Z
move-result v0
iput-boolean v0, p0, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_isFrenchCollation_:Z
invoke-virtual {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z
move-result v0
iput-boolean v0, p0, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_isAlternateHandlingShifted_:Z
iget v0, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_caseFirst_:I
iput v0, p0, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_caseFirst_:I
invoke-virtual {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->isCaseLevel()Z
move-result v0
iput-boolean v0, p0, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_isCaseLevel_:Z
invoke-virtual {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->getDecomposition()I
move-result v0
iput v0, p0, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_decomposition_:I
invoke-virtual {p1}, Lcom/ibm/icu/text/RuleBasedCollator;->getStrength()I
move-result v0
iput v0, p0, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_strength_:I
iget-boolean v0, p1, Lcom/ibm/icu/text/RuleBasedCollator;->m_isHiragana4_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/CollationRuleParser$OptionSet;->m_isHiragana4_:Z
return-void
.end method