.class  Lcom/ibm/icu/text/PluralRules$AndConstraint;
.super Lcom/ibm/icu/text/PluralRules$BinaryConstraint;
.source "PluralRules.java"
.field private static final serialVersionUID:J = 0x6bc9ed26013a36e3L
.method constructor <init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V
.registers 4
const-string v0, " && "
invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/PluralRules$BinaryConstraint;-><init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;Ljava/lang/String;)V
return-void
.end method
.method public isFulfilled(D)Z
.registers 4
iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$AndConstraint;->a:Lcom/ibm/icu/text/PluralRules$Constraint;
invoke-interface {v0, p1, p2}, Lcom/ibm/icu/text/PluralRules$Constraint;->isFulfilled(D)Z
move-result v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$AndConstraint;->b:Lcom/ibm/icu/text/PluralRules$Constraint;
invoke-interface {v0, p1, p2}, Lcom/ibm/icu/text/PluralRules$Constraint;->isFulfilled(D)Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method