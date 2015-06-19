.class  Lcom/ibm/icu/text/MultiplierSubstitution;
.super Lcom/ibm/icu/text/NFSubstitution;
.source "NFSubstitution.java"
.field  divisor:D
.method constructor <init>(IDLcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
.registers 10
invoke-direct {p0, p1, p4, p5, p6}, Lcom/ibm/icu/text/NFSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
iput-wide p2, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:D
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
invoke-virtual {p6, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " | "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p6, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_41
return-void
.end method
.method public calcUpperBound(D)D
.registers 5
iget-wide v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:D
return-wide v0
.end method
.method public composeRuleValue(DD)D
.registers 7
iget-wide v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:D
mul-double/2addr v0, p1
return-wide v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 9
const/4 v6, 0x0
invoke-super {p0, p1}, Lcom/ibm/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_17
move-object v0, p1
check-cast v0, Lcom/ibm/icu/text/MultiplierSubstitution;
move-object v1, v0
iget-wide v2, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:D
iget-wide v4, v1, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:D
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
.method public setDivisor(II)V
.registers 7
int-to-double v0, p1
int-to-double v2, p2
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D
move-result-wide v0
iput-wide v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:D
iget-wide v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:D
const-wide/16 v2, 0x0
cmpl-double v0, v0, v2
if-nez v0, :cond_18
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Substitution with divisor 0"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
return-void
.end method
.method  tokenChar()C
.registers 2
const/16 v0, 0x3c
return v0
.end method
.method public transformNumber(D)D
.registers 5
iget-object v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;
if-nez v0, :cond_9
iget-wide v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:D
div-double v0, p1, v0
:goto_8
return-wide v0
:cond_9
iget-wide v0, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:D
div-double v0, p1, v0
invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D
move-result-wide v0
goto :goto_8
.end method
.method public transformNumber(J)J
.registers 7
long-to-double v0, p1
iget-wide v2, p0, Lcom/ibm/icu/text/MultiplierSubstitution;->divisor:D
div-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D
move-result-wide v0
double-to-long v0, v0
return-wide v0
.end method