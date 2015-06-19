.class Lcom/ibm/icu/text/PluralRules$ConstrainedRule;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Lcom/ibm/icu/text/PluralRules$Rule;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConstrainedRule"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

.field private final keyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$Constraint;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/PluralRules$ConstrainedRule;->keyword:Ljava/lang/String;

    iput-object p2, p0, Lcom/ibm/icu/text/PluralRules$ConstrainedRule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    return-void
.end method


# virtual methods
.method public and(Lcom/ibm/icu/text/PluralRules$Constraint;)Lcom/ibm/icu/text/PluralRules$Rule;
    .registers 6

    new-instance v0, Lcom/ibm/icu/text/PluralRules$ConstrainedRule;

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$ConstrainedRule;->keyword:Ljava/lang/String;

    new-instance v2, Lcom/ibm/icu/text/PluralRules$AndConstraint;

    iget-object v3, p0, Lcom/ibm/icu/text/PluralRules$ConstrainedRule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-direct {v2, v3, p1}, Lcom/ibm/icu/text/PluralRules$AndConstraint;-><init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/PluralRules$ConstrainedRule;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$Constraint;)V

    return-object v0
.end method

.method public appliesTo(D)Z
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$ConstrainedRule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-interface {v0, p1, p2}, Lcom/ibm/icu/text/PluralRules$Constraint;->isFulfilled(D)Z

    move-result v0

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$ConstrainedRule;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public or(Lcom/ibm/icu/text/PluralRules$Constraint;)Lcom/ibm/icu/text/PluralRules$Rule;
    .registers 6

    new-instance v0, Lcom/ibm/icu/text/PluralRules$ConstrainedRule;

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$ConstrainedRule;->keyword:Ljava/lang/String;

    new-instance v2, Lcom/ibm/icu/text/PluralRules$OrConstraint;

    iget-object v3, p0, Lcom/ibm/icu/text/PluralRules$ConstrainedRule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-direct {v2, v3, p1}, Lcom/ibm/icu/text/PluralRules$OrConstraint;-><init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/PluralRules$ConstrainedRule;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$Constraint;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$ConstrainedRule;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$ConstrainedRule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRepeatLimit(I)I
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$ConstrainedRule;->constraint:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-interface {v0, p1}, Lcom/ibm/icu/text/PluralRules$Constraint;->updateRepeatLimit(I)I

    move-result v0

    return v0
.end method
