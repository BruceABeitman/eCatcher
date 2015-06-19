.class  Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;
.super Ljava/lang/Object;
.source "CollationParsedRuleBuilder.java"
.field  m_CEs_:Ljava/util/Vector;
.field  m_codePoints_:Ljava/lang/StringBuffer;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_CEs_:Ljava/util/Vector;
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$BasicContractionTable;->m_codePoints_:Ljava/lang/StringBuffer;
return-void
.end method