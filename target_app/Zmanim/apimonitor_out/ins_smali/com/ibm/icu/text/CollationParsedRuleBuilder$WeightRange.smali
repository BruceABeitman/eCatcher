.class  Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
.super Ljava/lang/Object;
.source "CollationParsedRuleBuilder.java"
.implements Ljava/lang/Comparable;
.field  m_count2_:I
.field  m_count_:I
.field  m_end_:I
.field  m_length2_:I
.field  m_length_:I
.field  m_start_:I
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p0}, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->clear()V
return-void
.end method
.method constructor <init>(Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length_:I
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length_:I
iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length2_:I
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length2_:I
iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count2_:I
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count2_:I
return-void
.end method
.method public clear()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_end_:I
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length_:I
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count_:I
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_length2_:I
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_count2_:I
return-void
.end method
.method public compareTo(Ljava/lang/Object;)I
.registers 5
const/4 v2, 0x0
if-ne p0, p1, :cond_5
move v1, v2
:goto_4
return v1
:cond_5
check-cast p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;
iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
iget v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
if-ne v1, v0, :cond_f
move v1, v2
goto :goto_4
:cond_f
iget v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$WeightRange;->m_start_:I
if-le v1, v0, :cond_15
const/4 v1, 0x1
goto :goto_4
:cond_15
const/4 v1, -0x1
goto :goto_4
.end method