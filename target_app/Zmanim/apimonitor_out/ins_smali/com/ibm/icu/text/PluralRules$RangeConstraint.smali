.class  Lcom/ibm/icu/text/PluralRules$RangeConstraint;
.super Ljava/lang/Object;
.source "PluralRules.java"
.implements Lcom/ibm/icu/text/PluralRules$Constraint;
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field private inRange:Z
.field private integersOnly:Z
.field private lowerBound:J
.field private mod:I
.field private upperBound:J
.method constructor <init>(IZZJJ)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I
iput-boolean p2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z
iput-boolean p3, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->integersOnly:Z
iput-wide p4, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->lowerBound:J
iput-wide p6, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:J
return-void
.end method
.method public isFulfilled(D)Z
.registers 9
const/4 v5, 0x1
const/4 v4, 0x0
iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->integersOnly:Z
if-eqz v0, :cond_18
double-to-long v0, p1
long-to-double v0, v0
sub-double v0, p1, v0
const-wide/16 v2, 0x0
cmpl-double v0, v0, v2
if-eqz v0, :cond_18
iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z
if-nez v0, :cond_16
move v0, v5
:goto_15
return v0
:cond_16
move v0, v4
goto :goto_15
:cond_18
iget v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I
if-eqz v0, :cond_20
iget v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I
int-to-double v0, v0
rem-double/2addr p1, v0
:cond_20
iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z
iget-wide v1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->lowerBound:J
long-to-double v1, v1
cmpl-double v1, p1, v1
if-ltz v1, :cond_35
iget-wide v1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:J
long-to-double v1, v1
cmpg-double v1, p1, v1
if-gtz v1, :cond_35
move v1, v5
:goto_31
if-ne v0, v1, :cond_37
move v0, v5
goto :goto_15
:cond_35
move v1, v4
goto :goto_31
:cond_37
move v0, v4
goto :goto_15
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "[mod: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " inRange: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " integersOnly: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->integersOnly:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " low: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->lowerBound:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " high: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public updateRepeatLimit(I)I
.registers 5
iget v1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I
if-nez v1, :cond_d
iget-wide v1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:J
long-to-int v1, v1
move v0, v1
:goto_8
invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I
move-result v1
return v1
:cond_d
iget v1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I
move v0, v1
goto :goto_8
.end method