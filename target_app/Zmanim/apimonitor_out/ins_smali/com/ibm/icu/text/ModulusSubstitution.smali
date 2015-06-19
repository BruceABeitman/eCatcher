.class  Lcom/ibm/icu/text/ModulusSubstitution;
.super Lcom/ibm/icu/text/NFSubstitution;
.source "NFSubstitution.java"
.field  divisor:D
.field  ruleToUse:Lcom/ibm/icu/text/NFRule;
.method constructor <init>(IDLcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
.registers 11
invoke-direct {p0, p1, p5, p6, p7}, Lcom/ibm/icu/text/NFSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
iput-wide p2, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:D
const-wide/16 v0, 0x0
cmpl-double v0, p2, v0
if-nez v0, :cond_41
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Substitution with bad divisor ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {p7, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " | "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p7, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_41
const-string v0, ">>>"
invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4c
iput-object p4, p0, Lcom/ibm/icu/text/ModulusSubstitution;->ruleToUse:Lcom/ibm/icu/text/NFRule;
:goto_4b
return-void
:cond_4c
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->ruleToUse:Lcom/ibm/icu/text/NFRule;
goto :goto_4b
.end method
.method public calcUpperBound(D)D
.registers 5
iget-wide v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:D
return-wide v0
.end method
.method public composeRuleValue(DD)D
.registers 7
iget-wide v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:D
rem-double v0, p3, v0
sub-double v0, p3, v0
add-double/2addr v0, p1
return-wide v0
.end method
.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
.registers 17
iget-object v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->ruleToUse:Lcom/ibm/icu/text/NFRule;
if-nez v0, :cond_9
invoke-super/range {p0 .. p7}, Lcom/ibm/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->ruleToUse:Lcom/ibm/icu/text/NFRule;
const/4 v3, 0x0
move-object v1, p1
move-object v2, p2
move-wide v4, p5
invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;
move-result-object v8
invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v0
if-eqz v0, :cond_34
invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D
move-result-wide v6
invoke-virtual {p0, v6, v7, p3, p4}, Lcom/ibm/icu/text/ModulusSubstitution;->composeRuleValue(DD)D
move-result-wide v6
double-to-long v0, v6
long-to-double v0, v0
cmpl-double v0, v6, v0
if-nez v0, :cond_2e
new-instance v0, Ljava/lang/Long;
double-to-long v1, v6
invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
goto :goto_8
:cond_2e
new-instance v0, Ljava/lang/Double;
invoke-direct {v0, v6, v7}, Ljava/lang/Double;-><init>(D)V
goto :goto_8
:cond_34
move-object v0, v8
goto :goto_8
.end method
.method public doSubstitution(DLjava/lang/StringBuffer;I)V
.registers 9
iget-object v2, p0, Lcom/ibm/icu/text/ModulusSubstitution;->ruleToUse:Lcom/ibm/icu/text/NFRule;
if-nez v2, :cond_8
invoke-super {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuffer;I)V
:goto_7
return-void
:cond_8
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/ModulusSubstitution;->transformNumber(D)D
move-result-wide v0
iget-object v2, p0, Lcom/ibm/icu/text/ModulusSubstitution;->ruleToUse:Lcom/ibm/icu/text/NFRule;
iget v3, p0, Lcom/ibm/icu/text/ModulusSubstitution;->pos:I
add-int/2addr v3, p4
invoke-virtual {v2, v0, v1, p3, v3}, Lcom/ibm/icu/text/NFRule;->doFormat(DLjava/lang/StringBuffer;I)V
goto :goto_7
.end method
.method public doSubstitution(JLjava/lang/StringBuffer;I)V
.registers 9
iget-object v2, p0, Lcom/ibm/icu/text/ModulusSubstitution;->ruleToUse:Lcom/ibm/icu/text/NFRule;
if-nez v2, :cond_8
invoke-super {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuffer;I)V
:goto_7
return-void
:cond_8
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/ModulusSubstitution;->transformNumber(J)J
move-result-wide v0
iget-object v2, p0, Lcom/ibm/icu/text/ModulusSubstitution;->ruleToUse:Lcom/ibm/icu/text/NFRule;
iget v3, p0, Lcom/ibm/icu/text/ModulusSubstitution;->pos:I
add-int/2addr v3, p4
invoke-virtual {v2, v0, v1, p3, v3}, Lcom/ibm/icu/text/NFRule;->doFormat(JLjava/lang/StringBuffer;I)V
goto :goto_7
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 9
const/4 v6, 0x0
invoke-super {p0, p1}, Lcom/ibm/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_17
move-object v0, p1
check-cast v0, Lcom/ibm/icu/text/ModulusSubstitution;
move-object v1, v0
iget-wide v2, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:D
iget-wide v4, v1, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:D
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
.method public isModulusSubstitution()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public setDivisor(II)V
.registers 7
int-to-double v0, p1
int-to-double v2, p2
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D
move-result-wide v0
iput-wide v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:D
iget-wide v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:D
const-wide/16 v2, 0x0
cmpl-double v0, v0, v2
if-nez v0, :cond_18
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Substitution with bad divisor"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
return-void
.end method
.method  tokenChar()C
.registers 2
const/16 v0, 0x3e
return v0
.end method
.method public transformNumber(D)D
.registers 5
iget-wide v0, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:D
rem-double v0, p1, v0
invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D
move-result-wide v0
return-wide v0
.end method
.method public transformNumber(J)J
.registers 7
long-to-double v0, p1
iget-wide v2, p0, Lcom/ibm/icu/text/ModulusSubstitution;->divisor:D
rem-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D
move-result-wide v0
double-to-long v0, v0
return-wide v0
.end method