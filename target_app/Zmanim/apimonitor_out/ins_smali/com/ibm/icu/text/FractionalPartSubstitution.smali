.class  Lcom/ibm/icu/text/FractionalPartSubstitution;
.super Lcom/ibm/icu/text/NFSubstitution;
.source "NFSubstitution.java"
.field private byDigits:Z
.field private useSpaces:Z
.method constructor <init>(ILcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
.registers 8
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/NFSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
iput-boolean v1, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->byDigits:Z
iput-boolean v2, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->useSpaces:Z
const-string v0, ">>"
invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1d
const-string v0, ">>>"
invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1d
iget-object v0, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
if-ne p2, v0, :cond_2a
:cond_1d
iput-boolean v2, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->byDigits:Z
const-string v0, ">>>"
invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_29
iput-boolean v1, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->useSpaces:Z
:goto_29
:cond_29
return-void
:cond_2a
iget-object v0, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
invoke-virtual {v0}, Lcom/ibm/icu/text/NFRuleSet;->makeIntoFractionRuleSet()V
goto :goto_29
.end method
.method public calcUpperBound(D)D
.registers 5
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public composeRuleValue(DD)D
.registers 7
add-double v0, p1, p3
return-wide v0
.end method
.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
.registers 28
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/FractionalPartSubstitution;->byDigits:Z
move v5, v0
if-nez v5, :cond_18
const-wide/16 v10, 0x0
move-object/from16 v5, p0
move-object/from16 v6, p1
move-object/from16 v7, p2
move-wide/from16 v8, p3
move/from16 v12, p7
invoke-super/range {v5 .. v12}, Lcom/ibm/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
move-result-object v5
:goto_17
return-object v5
:cond_18
new-instance v19, Ljava/lang/String;
move-object/from16 v0, v19
move-object/from16 v1, p1
invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
new-instance v18, Ljava/text/ParsePosition;
const/4 v5, 0x1
move-object/from16 v0, v18
move v1, v5
invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V
const-wide/16 v16, 0x0
new-instance v14, Lcom/ibm/icu/text/DigitList;
invoke-direct {v14}, Lcom/ibm/icu/text/DigitList;-><init>()V
:cond_31
invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I
move-result v5
if-lez v5, :cond_c5
invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
if-eqz v5, :cond_c5
const/4 v5, 0x0
move-object/from16 v0, v18
move v1, v5
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/FractionalPartSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
move-object v5, v0
const-wide/high16 v6, 0x4024
move-object v0, v5
move-object/from16 v1, v19
move-object/from16 v2, v18
move-wide v3, v6
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
move-result v13
if-eqz p7, :cond_79
invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
if-nez v5, :cond_79
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/FractionalPartSubstitution;->rbnf:Lcom/ibm/icu/text/RuleBasedNumberFormat;
move-object v5, v0
invoke-virtual {v5}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Lcom/ibm/icu/text/DecimalFormat;
move-result-object v5
move-object v0, v5
move-object/from16 v1, v19
move-object/from16 v2, v18
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
move-result-object v15
if-eqz v15, :cond_79
invoke-virtual {v15}, Ljava/lang/Number;->intValue()I
move-result v13
:cond_79
invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
if-eqz v5, :cond_31
add-int/lit8 v5, v13, 0x30
invoke-virtual {v14, v5}, Lcom/ibm/icu/text/DigitList;->append(I)V
invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I
move-result v6
add-int/2addr v5, v6
move-object/from16 v0, p2
move v1, v5
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
move-object/from16 v0, v19
move v1, v5
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v19
:goto_9e
invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I
move-result v5
if-lez v5, :cond_31
const/4 v5, 0x0
move-object/from16 v0, v19
move v1, v5
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v5
const/16 v6, 0x20
if-ne v5, v6, :cond_31
const/4 v5, 0x1
move-object/from16 v0, v19
move v1, v5
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v19
invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
add-int/lit8 v5, v5, 0x1
move-object/from16 v0, p2
move v1, v5
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
goto :goto_9e
:cond_c5
iget v5, v14, Lcom/ibm/icu/text/DigitList;->count:I
if-nez v5, :cond_e1
const-wide/16 v5, 0x0
move-wide/from16 v16, v5
:goto_cd
move-object/from16 v0, p0
move-wide/from16 v1, v16
move-wide/from16 v3, p3
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/FractionalPartSubstitution;->composeRuleValue(DD)D
move-result-wide v16
new-instance v5, Ljava/lang/Double;
move-object v0, v5
move-wide/from16 v1, v16
invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V
goto/16 :goto_17
:cond_e1
invoke-virtual {v14}, Lcom/ibm/icu/text/DigitList;->getDouble()D
move-result-wide v5
move-wide/from16 v16, v5
goto :goto_cd
.end method
.method public doSubstitution(DLjava/lang/StringBuffer;I)V
.registers 13
const/16 v7, 0x20
const/4 v6, 0x1
iget-boolean v2, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->byDigits:Z
if-nez v2, :cond_b
invoke-super {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuffer;I)V
:cond_a
return-void
:cond_b
new-instance v0, Lcom/ibm/icu/text/DigitList;
invoke-direct {v0}, Lcom/ibm/icu/text/DigitList;-><init>()V
const/16 v2, 0x14
invoke-virtual {v0, p1, p2, v2, v6}, Lcom/ibm/icu/text/DigitList;->set(DIZ)V
const/4 v1, 0x0
:goto_16
iget v2, v0, Lcom/ibm/icu/text/DigitList;->count:I
const/4 v3, 0x0
iget v4, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I
invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
move-result v3
if-le v2, v3, :cond_45
if-eqz v1, :cond_43
iget-boolean v2, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->useSpaces:Z
if-eqz v2, :cond_43
iget v2, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->pos:I
add-int/2addr v2, p4
invoke-virtual {p3, v2, v7}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;
:goto_2d
iget-object v2, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
iget-object v3, v0, Lcom/ibm/icu/text/DigitList;->digits:[B
iget v4, v0, Lcom/ibm/icu/text/DigitList;->count:I
sub-int/2addr v4, v6
iput v4, v0, Lcom/ibm/icu/text/DigitList;->count:I
aget-byte v3, v3, v4
const/16 v4, 0x30
sub-int/2addr v3, v4
int-to-long v3, v3
iget v5, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->pos:I
add-int/2addr v5, p4
invoke-virtual {v2, v3, v4, p3, v5}, Lcom/ibm/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;I)V
goto :goto_16
:cond_43
const/4 v1, 0x1
goto :goto_2d
:goto_45
:cond_45
iget v2, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I
if-gez v2, :cond_a
if-eqz v1, :cond_66
iget-boolean v2, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->useSpaces:Z
if-eqz v2, :cond_66
iget v2, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->pos:I
add-int/2addr v2, p4
invoke-virtual {p3, v2, v7}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;
:goto_55
iget-object v2, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
const-wide/16 v3, 0x0
iget v5, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->pos:I
add-int/2addr v5, p4
invoke-virtual {v2, v3, v4, p3, v5}, Lcom/ibm/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;I)V
iget v2, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I
add-int/lit8 v2, v2, 0x1
iput v2, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I
goto :goto_45
:cond_66
const/4 v1, 0x1
goto :goto_55
.end method
.method  tokenChar()C
.registers 2
const/16 v0, 0x3e
return v0
.end method
.method public transformNumber(D)D
.registers 5
invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D
move-result-wide v0
sub-double v0, p1, v0
return-wide v0
.end method
.method public transformNumber(J)J
.registers 5
const-wide/16 v0, 0x0
return-wide v0
.end method