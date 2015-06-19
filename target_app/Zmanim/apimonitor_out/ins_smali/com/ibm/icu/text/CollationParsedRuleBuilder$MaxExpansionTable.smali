.class  Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;
.super Ljava/lang/Object;
.source "CollationParsedRuleBuilder.java"
.field  m_endExpansionCE_:Ljava/util/Vector;
.field  m_expansionCESize_:Ljava/util/Vector;
.method constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_expansionCESize_:Ljava/util/Vector;
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
new-instance v1, Ljava/lang/Integer;
invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_expansionCESize_:Ljava/util/Vector;
new-instance v1, Ljava/lang/Byte;
invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V
invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
return-void
.end method
.method constructor <init>(Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Vector;
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_expansionCESize_:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Vector;
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxExpansionTable;->m_expansionCESize_:Ljava/util/Vector;
return-void
.end method