.class  Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;
.super Ljava/lang/Object;
.source "CollationRuleParser.java"
.field  m_limitCE_:I
.field  m_limitContCE_:I
.field  m_startCE_:I
.field  m_startContCE_:I
.method constructor <init>([I[I)V
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
aget v0, p1, v1
iput v0, p0, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_startCE_:I
aget v0, p1, v2
iput v0, p0, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_startContCE_:I
if-eqz p2, :cond_18
aget v0, p2, v1
iput v0, p0, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_limitCE_:I
aget v0, p2, v2
iput v0, p0, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_limitContCE_:I
:goto_17
return-void
:cond_18
iput v1, p0, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_limitCE_:I
iput v1, p0, Lcom/ibm/icu/text/CollationRuleParser$IndirectBoundaries;->m_limitContCE_:I
goto :goto_17
.end method