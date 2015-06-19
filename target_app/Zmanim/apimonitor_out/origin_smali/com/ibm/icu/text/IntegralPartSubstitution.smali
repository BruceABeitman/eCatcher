.class Lcom/ibm/icu/text/IntegralPartSubstitution;
.super Lcom/ibm/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# direct methods
.method constructor <init>(ILcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/NFSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public calcUpperBound(D)D
    .registers 5

    const-wide v0, 0x7fefffffffffffffL

    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .registers 7

    add-double v0, p1, p3

    return-wide v0
.end method

.method tokenChar()C
    .registers 2

    const/16 v0, 0x3c

    return v0
.end method

.method public transformNumber(D)D
    .registers 5

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public transformNumber(J)J
    .registers 3

    return-wide p1
.end method
