.class abstract Lcom/ibm/icu/text/NFSubstitution;
.super Ljava/lang/Object;
.source "NFSubstitution.java"
.field  numberFormat:Lcom/ibm/icu/text/DecimalFormat;
.field  pos:I
.field  rbnf:Lcom/ibm/icu/text/RuleBasedNumberFormat;
.field  ruleSet:Lcom/ibm/icu/text/NFRuleSet;
.method constructor <init>(ILcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
.registers 10
const/4 v4, 0x1
const/4 v3, 0x0
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v3, p0, Lcom/ibm/icu/text/NFSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
iput-object v3, p0, Lcom/ibm/icu/text/NFSubstitution;->numberFormat:Lcom/ibm/icu/text/DecimalFormat;
iput-object v3, p0, Lcom/ibm/icu/text/NFSubstitution;->rbnf:Lcom/ibm/icu/text/RuleBasedNumberFormat;
iput p1, p0, Lcom/ibm/icu/text/NFSubstitution;->pos:I
iput-object p3, p0, Lcom/ibm/icu/text/NFSubstitution;->rbnf:Lcom/ibm/icu/text/RuleBasedNumberFormat;
invoke-virtual {p4}, Ljava/lang/String;->length()I
move-result v0
const/4 v1, 0x2
if-lt v0, v1, :cond_38
invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-virtual {p4}, Ljava/lang/String;->length()I
move-result v1
sub-int/2addr v1, v4
invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
if-ne v0, v1, :cond_38
invoke-virtual {p4}, Ljava/lang/String;->length()I
move-result v0
sub-int/2addr v0, v4
invoke-virtual {p4, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p4
:cond_2f
invoke-virtual {p4}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_46
iput-object p2, p0, Lcom/ibm/icu/text/NFSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
:goto_37
return-void
:cond_38
invoke-virtual {p4}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_2f
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Illegal substitution syntax"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_46
invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v1, 0x25
if-ne v0, v1, :cond_55
invoke-virtual {p3, p4}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Lcom/ibm/icu/text/NFRuleSet;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/NFSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
goto :goto_37
:cond_55
invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v1, 0x23
if-eq v0, v1, :cond_65
invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v1, 0x30
if-ne v0, v1, :cond_76
:cond_65
new-instance v0, Lcom/ibm/icu/text/DecimalFormat;
invoke-direct {v0, p4}, Lcom/ibm/icu/text/DecimalFormat;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/ibm/icu/text/NFSubstitution;->numberFormat:Lcom/ibm/icu/text/DecimalFormat;
iget-object v0, p0, Lcom/ibm/icu/text/NFSubstitution;->numberFormat:Lcom/ibm/icu/text/DecimalFormat;
invoke-virtual {p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setDecimalFormatSymbols(Lcom/ibm/icu/text/DecimalFormatSymbols;)V
goto :goto_37
:cond_76
invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v1, 0x3e
if-ne v0, v1, :cond_83
iput-object p2, p0, Lcom/ibm/icu/text/NFSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
iput-object v3, p0, Lcom/ibm/icu/text/NFSubstitution;->numberFormat:Lcom/ibm/icu/text/DecimalFormat;
goto :goto_37
:cond_83
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Illegal substitution syntax"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static makeSubstitution(ILcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)Lcom/ibm/icu/text/NFSubstitution;
.registers 16
const-wide/16 v8, -0x1
const-wide/16 v6, -0x2
const-wide/16 v4, -0x3
const-wide/16 v2, -0x4
invoke-virtual {p5}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_14
new-instance v0, Lcom/ibm/icu/text/NullSubstitution;
invoke-direct {v0, p0, p3, p4, p5}, Lcom/ibm/icu/text/NullSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
:goto_13
return-object v0
:cond_14
const/4 v0, 0x0
invoke-virtual {p5, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
packed-switch v0, :pswitch_data_ca
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Illegal substitution character"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_24
invoke-virtual {p1}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J
move-result-wide v0
cmp-long v0, v0, v8
if-nez v0, :cond_34
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "<< not allowed in negative-number rule"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_34
invoke-virtual {p1}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J
move-result-wide v0
cmp-long v0, v0, v6
if-eqz v0, :cond_4c
invoke-virtual {p1}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J
move-result-wide v0
cmp-long v0, v0, v4
if-eqz v0, :cond_4c
invoke-virtual {p1}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J
move-result-wide v0
cmp-long v0, v0, v2
if-nez v0, :cond_52
:cond_4c
new-instance v0, Lcom/ibm/icu/text/IntegralPartSubstitution;
invoke-direct {v0, p0, p3, p4, p5}, Lcom/ibm/icu/text/IntegralPartSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
goto :goto_13
:cond_52
invoke-virtual {p3}, Lcom/ibm/icu/text/NFRuleSet;->isFractionSet()Z
move-result v0
if-eqz v0, :cond_6a
new-instance v0, Lcom/ibm/icu/text/NumeratorSubstitution;
invoke-virtual {p1}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J
move-result-wide v1
long-to-double v2, v1
invoke-virtual {p4}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getDefaultRuleSet()Lcom/ibm/icu/text/NFRuleSet;
move-result-object v4
move v1, p0
move-object v5, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/NumeratorSubstitution;-><init>(IDLcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
goto :goto_13
:cond_6a
new-instance v0, Lcom/ibm/icu/text/MultiplierSubstitution;
invoke-virtual {p1}, Lcom/ibm/icu/text/NFRule;->getDivisor()D
move-result-wide v2
move v1, p0
move-object v4, p3
move-object v5, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/MultiplierSubstitution;-><init>(IDLcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
goto :goto_13
:pswitch_78
invoke-virtual {p1}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J
move-result-wide v0
cmp-long v0, v0, v8
if-nez v0, :cond_86
new-instance v0, Lcom/ibm/icu/text/AbsoluteValueSubstitution;
invoke-direct {v0, p0, p3, p4, p5}, Lcom/ibm/icu/text/AbsoluteValueSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
goto :goto_13
:cond_86
invoke-virtual {p1}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J
move-result-wide v0
cmp-long v0, v0, v6
if-eqz v0, :cond_9e
invoke-virtual {p1}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J
move-result-wide v0
cmp-long v0, v0, v4
if-eqz v0, :cond_9e
invoke-virtual {p1}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J
move-result-wide v0
cmp-long v0, v0, v2
if-nez v0, :cond_a5
:cond_9e
new-instance v0, Lcom/ibm/icu/text/FractionalPartSubstitution;
invoke-direct {v0, p0, p3, p4, p5}, Lcom/ibm/icu/text/FractionalPartSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
goto/16 :goto_13
:cond_a5
invoke-virtual {p3}, Lcom/ibm/icu/text/NFRuleSet;->isFractionSet()Z
move-result v0
if-eqz v0, :cond_b3
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, ">> not allowed in fraction rule set"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b3
new-instance v0, Lcom/ibm/icu/text/ModulusSubstitution;
invoke-virtual {p1}, Lcom/ibm/icu/text/NFRule;->getDivisor()D
move-result-wide v2
move v1, p0
move-object v4, p2
move-object v5, p3
move-object v6, p4
move-object v7, p5
invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/ModulusSubstitution;-><init>(IDLcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
goto/16 :goto_13
:pswitch_c3
new-instance v0, Lcom/ibm/icu/text/SameValueSubstitution;
invoke-direct {v0, p0, p3, p4, p5}, Lcom/ibm/icu/text/SameValueSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
goto/16 :goto_13
:pswitch_data_ca
.packed-switch 0x3c
:pswitch_24
:pswitch_c3
:pswitch_78
.end packed-switch
.end method
.method public abstract calcUpperBound(D)D
.end method
.method public abstract composeRuleValue(DD)D
.end method
.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
.registers 14
invoke-virtual {p0, p5, p6}, Lcom/ibm/icu/text/NFSubstitution;->calcUpperBound(D)D
move-result-wide p5
iget-object v3, p0, Lcom/ibm/icu/text/NFSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
if-eqz v3, :cond_43
iget-object v3, p0, Lcom/ibm/icu/text/NFSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
invoke-virtual {v3, p1, p2, p5, p6}, Lcom/ibm/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;
move-result-object v2
if-eqz p7, :cond_28
iget-object v3, p0, Lcom/ibm/icu/text/NFSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
invoke-virtual {v3}, Lcom/ibm/icu/text/NFRuleSet;->isFractionSet()Z
move-result v3
if-nez v3, :cond_28
invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v3
if-nez v3, :cond_28
iget-object v3, p0, Lcom/ibm/icu/text/NFSubstitution;->rbnf:Lcom/ibm/icu/text/RuleBasedNumberFormat;
invoke-virtual {v3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Lcom/ibm/icu/text/DecimalFormat;
move-result-object v3
invoke-virtual {v3, p1, p2}, Lcom/ibm/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
move-result-object v2
:cond_28
:goto_28
invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v3
if-eqz v3, :cond_50
invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D
move-result-wide v0
invoke-virtual {p0, v0, v1, p3, p4}, Lcom/ibm/icu/text/NFSubstitution;->composeRuleValue(DD)D
move-result-wide v0
double-to-long v3, v0
long-to-double v3, v3
cmpl-double v3, v0, v3
if-nez v3, :cond_4a
new-instance v3, Ljava/lang/Long;
double-to-long v4, v0
invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V
:goto_42
return-object v3
:cond_43
iget-object v3, p0, Lcom/ibm/icu/text/NFSubstitution;->numberFormat:Lcom/ibm/icu/text/DecimalFormat;
invoke-virtual {v3, p1, p2}, Lcom/ibm/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
move-result-object v2
goto :goto_28
:cond_4a
new-instance v3, Ljava/lang/Double;
invoke-direct {v3, v0, v1}, Ljava/lang/Double;-><init>(D)V
goto :goto_42
:cond_50
move-object v3, v2
goto :goto_42
.end method
.method public doSubstitution(DLjava/lang/StringBuffer;I)V
.registers 11
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/NFSubstitution;->transformNumber(D)D
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D
move-result-wide v2
cmpl-double v2, v0, v2
if-nez v2, :cond_1a
iget-object v2, p0, Lcom/ibm/icu/text/NFSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
if-eqz v2, :cond_1a
iget-object v2, p0, Lcom/ibm/icu/text/NFSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
double-to-long v3, v0
iget v5, p0, Lcom/ibm/icu/text/NFSubstitution;->pos:I
add-int/2addr v5, p4
invoke-virtual {v2, v3, v4, p3, v5}, Lcom/ibm/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;I)V
:goto_19
return-void
:cond_1a
iget-object v2, p0, Lcom/ibm/icu/text/NFSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
if-eqz v2, :cond_27
iget-object v2, p0, Lcom/ibm/icu/text/NFSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
iget v3, p0, Lcom/ibm/icu/text/NFSubstitution;->pos:I
add-int/2addr v3, p4
invoke-virtual {v2, v0, v1, p3, v3}, Lcom/ibm/icu/text/NFRuleSet;->format(DLjava/lang/StringBuffer;I)V
goto :goto_19
:cond_27
iget v2, p0, Lcom/ibm/icu/text/NFSubstitution;->pos:I
add-int/2addr v2, p4
iget-object v3, p0, Lcom/ibm/icu/text/NFSubstitution;->numberFormat:Lcom/ibm/icu/text/DecimalFormat;
invoke-virtual {v3, v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->format(D)Ljava/lang/String;
move-result-object v3
invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_19
.end method
.method public doSubstitution(JLjava/lang/StringBuffer;I)V
.registers 9
iget-object v2, p0, Lcom/ibm/icu/text/NFSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
if-eqz v2, :cond_11
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/NFSubstitution;->transformNumber(J)J
move-result-wide v0
iget-object v2, p0, Lcom/ibm/icu/text/NFSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
iget v3, p0, Lcom/ibm/icu/text/NFSubstitution;->pos:I
add-int/2addr v3, p4
invoke-virtual {v2, v0, v1, p3, v3}, Lcom/ibm/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;I)V
:goto_10
return-void
:cond_11
long-to-double v2, p1
invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/text/NFSubstitution;->transformNumber(D)D
move-result-wide v0
iget-object v2, p0, Lcom/ibm/icu/text/NFSubstitution;->numberFormat:Lcom/ibm/icu/text/DecimalFormat;
invoke-virtual {v2}, Lcom/ibm/icu/text/DecimalFormat;->getMaximumFractionDigits()I
move-result v2
if-nez v2, :cond_22
invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D
move-result-wide v0
:cond_22
iget v2, p0, Lcom/ibm/icu/text/NFSubstitution;->pos:I
add-int/2addr v2, p4
iget-object v3, p0, Lcom/ibm/icu/text/NFSubstitution;->numberFormat:Lcom/ibm/icu/text/DecimalFormat;
invoke-virtual {v3, v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->format(D)Ljava/lang/String;
move-result-object v3
invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_10
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v4, 0x0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-ne v2, v3, :cond_33
move-object v0, p1
check-cast v0, Lcom/ibm/icu/text/NFSubstitution;
move-object v1, v0
iget v2, p0, Lcom/ibm/icu/text/NFSubstitution;->pos:I
iget v3, v1, Lcom/ibm/icu/text/NFSubstitution;->pos:I
if-ne v2, v3, :cond_31
iget-object v2, p0, Lcom/ibm/icu/text/NFSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
if-nez v2, :cond_1d
iget-object v2, v1, Lcom/ibm/icu/text/NFSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
if-nez v2, :cond_31
:cond_1d
iget-object v2, p0, Lcom/ibm/icu/text/NFSubstitution;->numberFormat:Lcom/ibm/icu/text/DecimalFormat;
if-nez v2, :cond_27
iget-object v2, v1, Lcom/ibm/icu/text/NFSubstitution;->numberFormat:Lcom/ibm/icu/text/DecimalFormat;
if-nez v2, :cond_31
:cond_25
const/4 v2, 0x1
:goto_26
return v2
:cond_27
iget-object v2, p0, Lcom/ibm/icu/text/NFSubstitution;->numberFormat:Lcom/ibm/icu/text/DecimalFormat;
iget-object v3, v1, Lcom/ibm/icu/text/NFSubstitution;->numberFormat:Lcom/ibm/icu/text/DecimalFormat;
invoke-virtual {v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_25
:cond_31
move v2, v4
goto :goto_26
:cond_33
move v2, v4
goto :goto_26
.end method
.method public final getPos()I
.registers 2
iget v0, p0, Lcom/ibm/icu/text/NFSubstitution;->pos:I
return v0
.end method
.method public isModulusSubstitution()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isNullSubstitution()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public setDivisor(II)V
.registers 3
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/NFSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
if-eqz v0, :cond_28
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/ibm/icu/text/NFSubstitution;->tokenChar()C
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/ibm/icu/text/NFSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
invoke-virtual {v1}, Lcom/ibm/icu/text/NFRuleSet;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/ibm/icu/text/NFSubstitution;->tokenChar()C
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_27
return-object v0
:cond_28
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/ibm/icu/text/NFSubstitution;->tokenChar()C
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/ibm/icu/text/NFSubstitution;->numberFormat:Lcom/ibm/icu/text/DecimalFormat;
invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/ibm/icu/text/NFSubstitution;->tokenChar()C
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_27
.end method
.method abstract tokenChar()C
.end method
.method public abstract transformNumber(D)D
.end method
.method public abstract transformNumber(J)J
.end method