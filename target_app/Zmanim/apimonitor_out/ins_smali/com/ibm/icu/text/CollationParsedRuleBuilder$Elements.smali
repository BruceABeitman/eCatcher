.class  Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
.super Ljava/lang/Object;
.source "CollationParsedRuleBuilder.java"
.field  m_CELength_:I
.field  m_CEs_:[I
.field  m_cPointsOffset_:I
.field  m_cPoints_:Ljava/lang/String;
.field  m_caseBit_:Z
.field  m_mapCE_:I
.field  m_prefixChars_:Ljava/lang/String;
.field  m_prefix_:I
.field  m_sizePrim_:[I
.field  m_sizeSec_:[I
.field  m_sizeTer_:[I
.field  m_uchars_:Ljava/lang/String;
.field  m_variableTop_:Z
.method constructor <init>()V
.registers 3
const/16 v1, 0x80
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-array v0, v1, [I
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizePrim_:[I
new-array v0, v1, [I
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizeSec_:[I
new-array v0, v1, [I
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizeTer_:[I
const/16 v0, 0x100
new-array v0, v0, [I
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
const/4 v0, 0x0
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
return-void
.end method
.method constructor <init>(Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CEs_:[I
iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
iget v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
iput v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizePrim_:[I
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizePrim_:[I
iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizeSec_:[I
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizeSec_:[I
iget-object v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizeTer_:[I
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizeTer_:[I
iget-boolean v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_variableTop_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_variableTop_:Z
iget-boolean v0, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_caseBit_:Z
iput-boolean v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_caseBit_:Z
return-void
.end method
.method public clear()V
.registers 3
const/4 v0, 0x0
const/4 v1, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefixChars_:Ljava/lang/String;
iput v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_prefix_:I
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_uchars_:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iput v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
iput v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_CELength_:I
iput v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_mapCE_:I
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizePrim_:[I
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizeSec_:[I
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V
iget-object v0, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_sizeTer_:[I
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V
iput-boolean v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_variableTop_:Z
iput-boolean v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_caseBit_:Z
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 9
if-ne p1, p0, :cond_4
const/4 v3, 0x1
:goto_3
return v3
:cond_4
instance-of v3, p1, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
if-eqz v3, :cond_2e
move-object v0, p1
check-cast v0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;
move-object v2, v0
iget-object v3, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
iget v4, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
sub-int v1, v3, v4
iget-object v3, v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
iget v4, v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
sub-int/2addr v3, v4
if-ne v1, v3, :cond_2e
iget-object v3, v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v4, v2, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
iget-object v5, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v6, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
invoke-virtual {v3, v4, v5, v6, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z
move-result v3
goto :goto_3
:cond_2e
const/4 v3, 0x0
goto :goto_3
.end method
.method public hashCode()I
.registers 4
iget-object v1, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPoints_:Ljava/lang/String;
iget v2, p0, Lcom/ibm/icu/text/CollationParsedRuleBuilder$Elements;->m_cPointsOffset_:I
invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v1
return v1
.end method