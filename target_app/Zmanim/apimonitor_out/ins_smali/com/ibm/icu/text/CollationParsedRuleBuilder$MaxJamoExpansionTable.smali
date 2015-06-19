.class  Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;
.super Ljava/lang/Object;
.source "CollationParsedRuleBuilder.java"
.field  m_endExpansionCE_:Ljava/util/Vector;
.field  m_isV_:Ljava/util/Vector;
.field  m_maxLSize_:B
.field  m_maxTSize_:B
.field  m_maxVSize_:B
.method constructor <init>()V
.registers 5
const/4 v3, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_isV_:Ljava/util/Vector;
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
new-instance v1, Ljava/lang/Integer;
const/4 v2, 0x0
invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_isV_:Ljava/util/Vector;
sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
iput-byte v3, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxLSize_:B
iput-byte v3, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxVSize_:B
iput-byte v3, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxTSize_:B
return-void
.end method
.method constructor <init>(Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Vector;
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_endExpansionCE_:Ljava/util/Vector;
iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_isV_:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Vector;
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_isV_:Ljava/util/Vector;
iget-byte v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxLSize_:B
iput-byte v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxLSize_:B
iget-byte v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxVSize_:B
iput-byte v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxVSize_:B
iget-byte v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxTSize_:B
iput-byte v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$MaxJamoExpansionTable;->m_maxTSize_:B
return-void
.end method