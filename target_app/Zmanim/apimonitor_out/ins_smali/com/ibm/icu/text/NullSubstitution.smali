.class  Lcom/ibm/icu/text/NullSubstitution;
.super Lcom/ibm/icu/text/NFSubstitution;
.source "NFSubstitution.java"
.method constructor <init>(ILcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/NFSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
return-void
.end method
.method public calcUpperBound(D)D
.registers 5
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public composeRuleValue(DD)D
.registers 7
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
.registers 11
double-to-long v0, p3
long-to-double v0, v0
cmpl-double v0, p3, v0
if-nez v0, :cond_d
new-instance v0, Ljava/lang/Long;
double-to-long v1, p3
invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
:goto_c
return-object v0
:cond_d
new-instance v0, Ljava/lang/Double;
invoke-direct {v0, p3, p4}, Ljava/lang/Double;-><init>(D)V
goto :goto_c
.end method
.method public doSubstitution(DLjava/lang/StringBuffer;I)V
.registers 5
return-void
.end method
.method public doSubstitution(JLjava/lang/StringBuffer;I)V
.registers 5
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
invoke-super {p0, p1}, Lcom/ibm/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isNullSubstitution()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
const-string v0, ""
return-object v0
.end method
.method  tokenChar()C
.registers 2
const/16 v0, 0x20
return v0
.end method
.method public transformNumber(D)D
.registers 5
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public transformNumber(J)J
.registers 5
const-wide/16 v0, 0x0
return-wide v0
.end method