.class  Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;
.super Ljava/lang/Object;
.source "CollationParsedRuleBuilder.java"
.field  m_byteSize_:I
.field  m_count_:I
.field  m_current_:I
.field  m_fHigh_:I
.field  m_fLow_:I
.field  m_limit_:I
.field  m_maxCount_:I
.field  m_rangesLength_:I
.field  m_ranges_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
.field  m_start_:I
.method constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v1, 0x7
new-array v1, v1, [Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
iput-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_ranges_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
const/4 v0, 0x6
:goto_9
if-ltz v0, :cond_17
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$CEGenerator;->m_ranges_:[Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
new-instance v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
invoke-direct {v2}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;-><init>()V
aput-object v2, v1, v0
add-int/lit8 v0, v0, -0x1
goto :goto_9
:cond_17
return-void
.end method