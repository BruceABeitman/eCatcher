.class Lcom/ibm/icu/text/PluralRules$OrConstraint;
.super Lcom/ibm/icu/text/PluralRules$BinaryConstraint;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrConstraint"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13814c681722a76eL


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V
    .registers 4

    const-string v0, " || "

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/PluralRules$BinaryConstraint;-><init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isFulfilled(D)Z
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$OrConstraint;->a:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-interface {v0, p1, p2}, Lcom/ibm/icu/text/PluralRules$Constraint;->isFulfilled(D)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$OrConstraint;->b:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-interface {v0, p1, p2}, Lcom/ibm/icu/text/PluralRules$Constraint;->isFulfilled(D)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
