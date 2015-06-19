.class Lcom/ibm/icu/text/SameValueSubstitution;
.super Lcom/ibm/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# direct methods
.method constructor <init>(ILcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/NFSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    const-string v0, "=="

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "== is not a legal token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    return-void
.end method


# virtual methods
.method public calcUpperBound(D)D
    .registers 3

    return-wide p1
.end method

.method public composeRuleValue(DD)D
    .registers 5

    return-wide p1
.end method

.method tokenChar()C
    .registers 2

    const/16 v0, 0x3d

    return v0
.end method

.method public transformNumber(D)D
    .registers 3

    return-wide p1
.end method

.method public transformNumber(J)J
    .registers 3

    return-wide p1
.end method
