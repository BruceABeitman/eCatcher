.class  Lcom/ibm/icu/text/CollationRuleParser$Token;
.super Ljava/lang/Object;
.source "CollationRuleParser.java"
.field  m_CELength_:I
.field  m_CE_:[I
.field  m_expCELength_:I
.field  m_expCE_:[I
.field  m_expansion_:I
.field  m_flags_:C
.field  m_listHeader_:Lcom/ibm/icu/text/CollationRuleParser$TokenListHeader;
.field  m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;
.field  m_polarity_:I
.field  m_prefix_:I
.field  m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;
.field  m_rules_:Ljava/lang/StringBuffer;
.field  m_source_:I
.field  m_strength_:I
.field  m_toInsert_:I
.method constructor <init>()V
.registers 5
const/4 v3, 0x0
const/16 v2, 0x80
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-array v0, v2, [I
iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CE_:[I
new-array v0, v2, [I
iput-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expCE_:[I
const/4 v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_polarity_:I
iput-object v3, p0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_next_:Lcom/ibm/icu/text/CollationRuleParser$Token;
iput-object v3, p0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_previous_:Lcom/ibm/icu/text/CollationRuleParser$Token;
iput v1, p0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_CELength_:I
iput v1, p0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_expCELength_:I
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 14
const v11, 0xffffff
const/high16 v8, -0x100
const/4 v10, 0x0
const/4 v9, 0x1
if-ne p1, p0, :cond_b
move v7, v9
:goto_a
return v7
:cond_b
instance-of v7, p1, Lcom/ibm/icu/text/CollationRuleParser$Token;
if-eqz v7, :cond_64
move-object v0, p1
check-cast v0, Lcom/ibm/icu/text/CollationRuleParser$Token;
move-object v4, v0
iget v7, p0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
and-int v3, v7, v11
iget v7, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
and-int v6, v7, v11
iget v7, p0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
and-int/2addr v7, v8
shr-int/lit8 v2, v7, 0x18
iget v7, p0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
and-int/2addr v7, v8
shr-int/lit8 v5, v7, 0x18
add-int v7, v3, v2
sub-int v1, v7, v9
iget v7, p0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
if-eqz v7, :cond_31
iget v7, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
if-nez v7, :cond_33
:cond_31
move v7, v10
goto :goto_a
:cond_33
if-eq v2, v5, :cond_37
move v7, v10
goto :goto_a
:cond_37
iget v7, p0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
iget v8, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
if-ne v7, v8, :cond_3f
move v7, v9
goto :goto_a
:cond_3f
:goto_3f
if-ge v3, v1, :cond_54
iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_rules_:Ljava/lang/StringBuffer;
invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v7
iget-object v8, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_rules_:Ljava/lang/StringBuffer;
invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v8
if-ne v7, v8, :cond_54
add-int/lit8 v3, v3, 0x1
add-int/lit8 v6, v6, 0x1
goto :goto_3f
:cond_54
iget-object v7, p0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_rules_:Ljava/lang/StringBuffer;
invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v7
iget-object v8, v4, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_rules_:Ljava/lang/StringBuffer;
invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v8
if-ne v7, v8, :cond_64
move v7, v9
goto :goto_a
:cond_64
move v7, v10
goto :goto_a
.end method
.method public hashCode()I
.registers 8
const/4 v3, 0x0
iget v5, p0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
const/high16 v6, -0x100
and-int/2addr v5, v6
ushr-int/lit8 v1, v5, 0x18
const/16 v5, 0x20
sub-int v5, v1, v5
div-int/lit8 v5, v5, 0x20
add-int/lit8 v0, v5, 0x1
iget v5, p0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_source_:I
const v6, 0xffffff
and-int v4, v5, v6
add-int v2, v4, v1
:goto_19
if-ge v4, v2, :cond_27
mul-int/lit8 v5, v3, 0x25
iget-object v6, p0, Lcom/ibm/icu/text/CollationRuleParser$Token;->m_rules_:Ljava/lang/StringBuffer;
invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v6
add-int v3, v5, v6
add-int/2addr v4, v0
goto :goto_19
:cond_27
return v3
.end method