.class  Lcom/ibm/icu/text/NumeratorSubstitution;
.super Lcom/ibm/icu/text/NFSubstitution;
.source "NFSubstitution.java"
.field  denominator:D
.field  withZeros:Z
.method constructor <init>(IDLcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
.registers 8
invoke-static {p6}, Lcom/ibm/icu/text/NumeratorSubstitution;->fixdesc(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, p4, p5, v0}, Lcom/ibm/icu/text/NFSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
iput-wide p2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D
const-string v0, "<<"
invoke-virtual {p6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z
return-void
.end method
.method static fixdesc(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const-string v0, "<<"
invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_14
const/4 v0, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
const/4 v2, 0x1
sub-int/2addr v1, v2
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:goto_13
return-object v0
:cond_14
move-object v0, p0
goto :goto_13
.end method
.method public calcUpperBound(D)D
.registers 5
iget-wide v0, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D
return-wide v0
.end method
.method public composeRuleValue(DD)D
.registers 7
div-double v0, p1, p3
return-wide v0
.end method
.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
.registers 30
const/16 v21, 0x0
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z
move v5, v0
if-eqz v5, :cond_5a
new-instance v20, Ljava/lang/String;
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
new-instance v19, Ljava/text/ParsePosition;
const/4 v5, 0x1
move-object/from16 v0, v19
move v1, v5
invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V
:cond_1b
invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I
move-result v5
if-lez v5, :cond_48
invoke-virtual/range {v19 .. v19}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
if-eqz v5, :cond_48
const/4 v5, 0x0
move-object/from16 v0, v19
move v1, v5
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
move-object v5, v0
const-wide/high16 v6, 0x3ff0
move-object v0, v5
move-object/from16 v1, v20
move-object/from16 v2, v19
move-wide v3, v6
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
invoke-virtual/range {v19 .. v19}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
if-nez v5, :cond_8a
:cond_48
invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
move-object/from16 v0, p1
move v1, v5
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object p1
const/4 v5, 0x0
move-object/from16 v0, p2
move v1, v5
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
:cond_5a
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z
move v5, v0
if-eqz v5, :cond_cd
const-wide/high16 v5, 0x3ff0
move-wide v8, v5
:goto_64
const/4 v12, 0x0
move-object/from16 v5, p0
move-object/from16 v6, p1
move-object/from16 v7, p2
move-wide/from16 v10, p5
invoke-super/range {v5 .. v12}, Lcom/ibm/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
move-result-object v18
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z
move v5, v0
if-eqz v5, :cond_e3
invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->longValue()J
move-result-wide v15
const-wide/16 v13, 0x1
const/16 v17, 0x0
:goto_80
cmp-long v5, v13, v15
if-gtz v5, :cond_d0
const-wide/16 v5, 0xa
mul-long/2addr v13, v5
add-int/lit8 v17, v17, 0x1
goto :goto_80
:cond_8a
add-int/lit8 v21, v21, 0x1
invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
invoke-virtual/range {v19 .. v19}, Ljava/text/ParsePosition;->getIndex()I
move-result v6
add-int/2addr v5, v6
move-object/from16 v0, p2
move v1, v5
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
invoke-virtual/range {v19 .. v19}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
move-object/from16 v0, v20
move v1, v5
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v20
:goto_a6
invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I
move-result v5
if-lez v5, :cond_1b
const/4 v5, 0x0
move-object/from16 v0, v20
move v1, v5
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v5
const/16 v6, 0x20
if-ne v5, v6, :cond_1b
const/4 v5, 0x1
move-object/from16 v0, v20
move v1, v5
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v20
invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
add-int/lit8 v5, v5, 0x1
move-object/from16 v0, p2
move v1, v5
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
goto :goto_a6
:cond_cd
move-wide/from16 v8, p3
goto :goto_64
:goto_d0
:cond_d0
if-lez v21, :cond_d8
const-wide/16 v5, 0xa
mul-long/2addr v13, v5
add-int/lit8 v21, v21, -0x1
goto :goto_d0
:cond_d8
new-instance v18, Ljava/lang/Double;
long-to-double v5, v15
long-to-double v7, v13
div-double/2addr v5, v7
move-object/from16 v0, v18
move-wide v1, v5
invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V
:cond_e3
return-object v18
.end method
.method public doSubstitution(DLjava/lang/StringBuffer;I)V
.registers 14
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/NumeratorSubstitution;->transformNumber(D)D
move-result-wide v3
iget-boolean v5, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->withZeros:Z
if-eqz v5, :cond_34
iget-object v5, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
if-eqz v5, :cond_34
double-to-long v1, v3
invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I
move-result v0
:goto_11
const-wide/16 v5, 0xa
mul-long/2addr v1, v5
long-to-double v5, v1
iget-wide v7, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D
cmpg-double v5, v5, v7
if-gez v5, :cond_2e
iget v5, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->pos:I
add-int/2addr v5, p4
const/16 v6, 0x20
invoke-virtual {p3, v5, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;
iget-object v5, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
const-wide/16 v6, 0x0
iget v8, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->pos:I
add-int/2addr v8, p4
invoke-virtual {v5, v6, v7, p3, v8}, Lcom/ibm/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;I)V
goto :goto_11
:cond_2e
invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I
move-result v5
sub-int/2addr v5, v0
add-int/2addr p4, v5
:cond_34
invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D
move-result-wide v5
cmpl-double v5, v3, v5
if-nez v5, :cond_4a
iget-object v5, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
if-eqz v5, :cond_4a
iget-object v5, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
double-to-long v6, v3
iget v8, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->pos:I
add-int/2addr v8, p4
invoke-virtual {v5, v6, v7, p3, v8}, Lcom/ibm/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;I)V
:goto_49
return-void
:cond_4a
iget-object v5, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
if-eqz v5, :cond_57
iget-object v5, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
iget v6, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->pos:I
add-int/2addr v6, p4
invoke-virtual {v5, v3, v4, p3, v6}, Lcom/ibm/icu/text/NFRuleSet;->format(DLjava/lang/StringBuffer;I)V
goto :goto_49
:cond_57
iget v5, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->pos:I
add-int/2addr v5, p4
iget-object v6, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->numberFormat:Lcom/ibm/icu/text/DecimalFormat;
invoke-virtual {v6, v3, v4}, Lcom/ibm/icu/text/DecimalFormat;->format(D)Ljava/lang/String;
move-result-object v6
invoke-virtual {p3, v5, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_49
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 9
const/4 v6, 0x0
invoke-super {p0, p1}, Lcom/ibm/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_17
move-object v0, p1
check-cast v0, Lcom/ibm/icu/text/NumeratorSubstitution;
move-object v1, v0
iget-wide v2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D
iget-wide v4, v1, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D
cmpl-double v2, v2, v4
if-nez v2, :cond_15
const/4 v2, 0x1
:goto_14
return v2
:cond_15
move v2, v6
goto :goto_14
:cond_17
move v2, v6
goto :goto_14
.end method
.method  tokenChar()C
.registers 2
const/16 v0, 0x3c
return v0
.end method
.method public transformNumber(D)D
.registers 5
iget-wide v0, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D
mul-double/2addr v0, p1
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
long-to-double v0, v0
return-wide v0
.end method
.method public transformNumber(J)J
.registers 7
long-to-double v0, p1
iget-wide v2, p0, Lcom/ibm/icu/text/NumeratorSubstitution;->denominator:D
mul-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
return-wide v0
.end method