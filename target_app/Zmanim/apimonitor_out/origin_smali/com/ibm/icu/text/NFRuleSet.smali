.class final Lcom/ibm/icu/text/NFRuleSet;
.super Ljava/lang/Object;
.source "NFRuleSet.java"


# static fields
.field private static final RECURSION_LIMIT:I = 0x32


# instance fields
.field private fractionRules:[Lcom/ibm/icu/text/NFRule;

.field private isFractionRuleSet:Z

.field private name:Ljava/lang/String;

.field private negativeNumberRule:Lcom/ibm/icu/text/NFRule;

.field private recursionCount:I

.field private rules:[Lcom/ibm/icu/text/NFRule;


# direct methods
.method public constructor <init>([Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->negativeNumberRule:Lcom/ibm/icu/text/NFRule;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/ibm/icu/text/NFRule;

    iput-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    iput-boolean v4, p0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    iput v4, p0, Lcom/ibm/icu/text/NFRuleSet;->recursionCount:I

    aget-object v0, p1, p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_20

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Empty rule set description"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_20
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_65

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_39

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Rule set name doesn\'t end in colon"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_39
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    :cond_3f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_51

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z

    move-result v2

    if-nez v2, :cond_3f

    :cond_51
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    :goto_57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Empty rule set description"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_65
    const-string v2, "%default"

    iput-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    goto :goto_57

    :cond_6a
    return-void
.end method

.method private findFractionRuleSetRule(D)Lcom/ibm/icu/text/NFRule;
    .registers 17

    iget-object v10, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v3

    const/4 v2, 0x1

    :goto_a
    iget-object v10, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v10, v10

    if-ge v2, v10, :cond_1e

    iget-object v10, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Lcom/ibm/icu/text/NFRuleSet;->lcm(JJ)J

    move-result-wide v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1e
    long-to-double v10, v3

    mul-double/2addr v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    const-wide v0, 0x7fffffffffffffffL

    const/4 v9, 0x0

    const/4 v2, 0x0

    :goto_2b
    iget-object v10, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v10, v10

    if-ge v2, v10, :cond_4f

    iget-object v10, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v10

    mul-long/2addr v10, v5

    rem-long v7, v10, v3

    sub-long v10, v3, v7

    cmp-long v10, v10, v7

    if-gez v10, :cond_43

    sub-long v7, v3, v7

    :cond_43
    cmp-long v10, v7, v0

    if-gez v10, :cond_9b

    move-wide v0, v7

    move v9, v2

    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-nez v10, :cond_9b

    :cond_4f
    add-int/lit8 v10, v9, 0x1

    iget-object v11, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v11, v11

    if-ge v10, v11, :cond_96

    iget-object v10, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    add-int/lit8 v11, v9, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v10

    iget-object v12, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v12, v12, v9

    invoke-virtual {v12}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_96

    iget-object v10, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v10

    long-to-double v10, v10

    mul-double/2addr v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-ltz v10, :cond_94

    iget-object v10, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v10

    long-to-double v10, v10

    mul-double/2addr v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    const-wide/16 v12, 0x2

    cmp-long v10, v10, v12

    if-ltz v10, :cond_96

    :cond_94
    add-int/lit8 v9, v9, 0x1

    :cond_96
    iget-object v10, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v10, v10, v9

    return-object v10

    :cond_9b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b
.end method

.method private findNormalRule(J)Lcom/ibm/icu/text/NFRule;
    .registers 11

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget-boolean v4, p0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-eqz v4, :cond_c

    long-to-double v4, p1

    invoke-direct {p0, v4, v5}, Lcom/ibm/icu/text/NFRuleSet;->findFractionRuleSetRule(D)Lcom/ibm/icu/text/NFRule;

    move-result-object v4

    :goto_b
    return-object v4

    :cond_c
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_1a

    iget-object v4, p0, Lcom/ibm/icu/text/NFRuleSet;->negativeNumberRule:Lcom/ibm/icu/text/NFRule;

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/ibm/icu/text/NFRuleSet;->negativeNumberRule:Lcom/ibm/icu/text/NFRule;

    goto :goto_b

    :cond_19
    neg-long p1, p1

    :cond_1a
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v0, v4

    if-lez v0, :cond_b2

    :goto_20
    if-ge v1, v0, :cond_48

    add-int v4, v1, v0

    div-int/lit8 v2, v4, 0x2

    iget-object v4, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_37

    iget-object v4, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v4, v4, v2

    goto :goto_b

    :cond_37
    iget-object v4, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-lez v4, :cond_45

    move v0, v2

    goto :goto_20

    :cond_45
    add-int/lit8 v1, v2, 0x1

    goto :goto_20

    :cond_48
    if-nez v0, :cond_6f

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The rule set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot format the value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6f
    iget-object v4, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    sub-int v5, v0, v6

    aget-object v3, v4, v5

    long-to-double v4, p1

    invoke-virtual {v3, v4, v5}, Lcom/ibm/icu/text/NFRule;->shouldRollBack(D)Z

    move-result v4

    if-eqz v4, :cond_af

    if-ne v0, v6, :cond_a9

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The rule set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot roll back from the rule \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a9
    iget-object v4, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    sub-int v5, v0, v7

    aget-object v3, v4, v5

    :cond_af
    move-object v4, v3

    goto/16 :goto_b

    :cond_b2
    iget-object v4, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v4, v4, v7

    goto/16 :goto_b
.end method

.method private findRule(D)Lcom/ibm/icu/text/NFRule;
    .registers 8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/NFRuleSet;->findFractionRuleSetRule(D)Lcom/ibm/icu/text/NFRule;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1a

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->negativeNumberRule:Lcom/ibm/icu/text/NFRule;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->negativeNumberRule:Lcom/ibm/icu/text/NFRule;

    goto :goto_b

    :cond_19
    neg-double p1, p1

    :cond_1a
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_3e

    const-wide/high16 v0, 0x3ff0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_33

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v3

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v3

    goto :goto_b

    :cond_33
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v2

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v2

    goto :goto_b

    :cond_3e
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v4

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v4

    goto :goto_b

    :cond_49
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/NFRuleSet;->findNormalRule(J)Lcom/ibm/icu/text/NFRule;

    move-result-object v0

    goto :goto_b
.end method

.method private static lcm(JJ)J
    .registers 15

    move-wide v1, p0

    move-wide v3, p2

    const/4 v0, 0x0

    move-wide v5, v3

    move-wide v3, v1

    :goto_5
    const-wide/16 v1, 0x1

    and-long/2addr v1, v3

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-nez v1, :cond_22

    const-wide/16 v1, 0x1

    and-long/2addr v1, v5

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-nez v1, :cond_22

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    shr-long v1, v3, v1

    const/4 v3, 0x1

    shr-long v3, v5, v3

    move-wide v5, v3

    move-wide v3, v1

    goto :goto_5

    :cond_22
    const-wide/16 v1, 0x1

    and-long/2addr v1, v3

    const-wide/16 v7, 0x1

    cmp-long v1, v1, v7

    if-nez v1, :cond_3e

    neg-long v1, v5

    :goto_2c
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-eqz v7, :cond_4e

    :goto_32
    const-wide/16 v7, 0x1

    and-long/2addr v7, v1

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_40

    const/4 v7, 0x1

    shr-long/2addr v1, v7

    goto :goto_32

    :cond_3e
    move-wide v1, v3

    goto :goto_2c

    :cond_40
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_4b

    move-wide v1, v1

    move-wide v3, v1

    :goto_48
    sub-long v1, v3, v5

    goto :goto_2c

    :cond_4b
    neg-long v1, v1

    move-wide v5, v1

    goto :goto_48

    :cond_4e
    shl-long v0, v3, v0

    div-long/2addr p0, v0

    mul-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    instance-of v3, p1, Lcom/ibm/icu/text/NFRuleSet;

    if-nez v3, :cond_9

    move v3, v5

    :goto_8
    return v3

    :cond_9
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/text/NFRuleSet;

    move-object v2, v0

    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->negativeNumberRule:Lcom/ibm/icu/text/NFRule;

    iget-object v4, v2, Lcom/ibm/icu/text/NFRuleSet;->negativeNumberRule:Lcom/ibm/icu/text/NFRule;

    invoke-static {v3, v4}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v3, v3, v5

    iget-object v4, v2, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v3, v3, v6

    iget-object v4, v2, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v4, v4, v6

    invoke-static {v3, v4}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v3, v3, v7

    iget-object v4, v2, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v4, v4, v7

    invoke-static {v3, v4}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v3, v3

    iget-object v4, v2, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v4, v4

    if-ne v3, v4, :cond_59

    iget-boolean v3, p0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    iget-boolean v4, v2, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-eq v3, v4, :cond_5b

    :cond_59
    move v3, v5

    goto :goto_8

    :cond_5b
    const/4 v1, 0x0

    :goto_5c
    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v3, v3

    if-ge v1, v3, :cond_74

    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v3, v3, v1

    iget-object v4, v2, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/ibm/icu/text/NFRule;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    move v3, v5

    goto :goto_8

    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    :cond_74
    move v3, v6

    goto :goto_8
.end method

.method public format(DLjava/lang/StringBuffer;I)V
    .registers 9

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/NFRuleSet;->findRule(D)Lcom/ibm/icu/text/NFRule;

    move-result-object v0

    iget v1, p0, Lcom/ibm/icu/text/NFRuleSet;->recursionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ibm/icu/text/NFRuleSet;->recursionCount:I

    const/16 v2, 0x32

    if-lt v1, v2, :cond_2c

    const/4 v1, 0x0

    iput v1, p0, Lcom/ibm/icu/text/NFRuleSet;->recursionCount:I

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recursion limit exceeded when applying ruleSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu/text/NFRule;->doFormat(DLjava/lang/StringBuffer;I)V

    iget v1, p0, Lcom/ibm/icu/text/NFRuleSet;->recursionCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/text/NFRuleSet;->recursionCount:I

    return-void
.end method

.method public format(JLjava/lang/StringBuffer;I)V
    .registers 9

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/NFRuleSet;->findNormalRule(J)Lcom/ibm/icu/text/NFRule;

    move-result-object v0

    iget v1, p0, Lcom/ibm/icu/text/NFRuleSet;->recursionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ibm/icu/text/NFRuleSet;->recursionCount:I

    const/16 v2, 0x32

    if-lt v1, v2, :cond_2c

    const/4 v1, 0x0

    iput v1, p0, Lcom/ibm/icu/text/NFRuleSet;->recursionCount:I

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recursion limit exceeded when applying ruleSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu/text/NFRule;->doFormat(JLjava/lang/StringBuffer;I)V

    iget v1, p0, Lcom/ibm/icu/text/NFRuleSet;->recursionCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/text/NFRuleSet;->recursionCount:I

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isFractionSet()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    return v0
.end method

.method public isParseable()Z
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    const-string v1, "-prefixpart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    const-string v1, "-postfixpart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    const-string v1, "-postfx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public isPublic()Z
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    const-string v1, "%%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public makeIntoFractionRuleSet()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    return-void
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;
    .registers 16

    new-instance v6, Ljava/text/ParsePosition;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/text/ParsePosition;-><init>(I)V

    new-instance v8, Ljava/lang/Long;

    const-wide/16 v0, 0x0

    invoke-direct {v8, v0, v1}, Ljava/lang/Long;-><init>(J)V

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    move-object v9, v8

    :goto_15
    return-object v9

    :cond_16
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->negativeNumberRule:Lcom/ibm/icu/text/NFRule;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->negativeNumberRule:Lcom/ibm/icu/text/NFRule;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    move-result-object v10

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-le v0, v1, :cond_36

    move-object v8, v10

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_36
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_3a
    const/4 v7, 0x0

    :goto_3b
    const/4 v0, 0x3

    if-ge v7, v0, :cond_69

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v7

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v7

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    move-result-object v10

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-le v0, v1, :cond_62

    move-object v8, v10

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_62
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_66
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    :cond_69
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int v7, v0, v1

    :goto_6f
    if-ltz v7, :cond_b3

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_b3

    iget-boolean v0, p0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-nez v0, :cond_8f

    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v0

    long-to-double v0, v0

    cmpl-double v0, v0, p3

    if-ltz v0, :cond_8f

    :goto_8c
    add-int/lit8 v7, v7, -0x1

    goto :goto_6f

    :cond_8f
    iget-object v0, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v0, v0, v7

    iget-boolean v3, p0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    move-result-object v10

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-le v0, v1, :cond_ae

    move-object v8, v10

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_ae
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_8c

    :cond_b3
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v9, v8

    goto/16 :goto_15
.end method

.method public parseRules(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedNumberFormat;)V
    .registers 23

    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    const/4 v8, 0x0

    const/16 v16, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    :goto_10
    const/16 v16, -0x1

    move v0, v8

    move/from16 v1, v16

    if-eq v0, v1, :cond_55

    const/16 v16, -0x1

    move v0, v9

    move/from16 v1, v16

    if-eq v0, v1, :cond_3d

    move-object/from16 v0, p1

    move v1, v8

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v8, v9, 0x1

    :goto_2e
    const/16 v16, 0x3b

    add-int/lit8 v17, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    goto :goto_10

    :cond_3d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    move v0, v8

    move/from16 v1, v16

    if-ge v0, v1, :cond_53

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_53
    move v8, v9

    goto :goto_2e

    :cond_55
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    const/4 v10, 0x0

    const/4 v6, 0x0

    :goto_5c
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v16

    move v0, v6

    move/from16 v1, v16

    if-ge v0, v1, :cond_a8

    invoke-virtual {v12, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/text/NFRule;->makeRules(Ljava/lang/String;Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/RuleBasedNumberFormat;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    instance-of v0, v0, Lcom/ibm/icu/text/NFRule;

    move/from16 v16, v0

    if-eqz v16, :cond_87

    invoke-virtual {v15, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v0, v14

    check-cast v0, Lcom/ibm/icu/text/NFRule;

    move-object v10, v0

    :cond_84
    add-int/lit8 v6, v6, 0x1

    goto :goto_5c

    :cond_87
    move-object v0, v14

    instance-of v0, v0, [Lcom/ibm/icu/text/NFRule;

    move/from16 v16, v0

    if-eqz v16, :cond_84

    check-cast v14, [Lcom/ibm/icu/text/NFRule;

    move-object v0, v14

    check-cast v0, [Lcom/ibm/icu/text/NFRule;

    move-object v13, v0

    const/4 v7, 0x0

    :goto_95
    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    move v0, v7

    move/from16 v1, v16

    if-ge v0, v1, :cond_84

    aget-object v16, v13, v7

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    aget-object v10, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_95

    :cond_a8
    const/4 v12, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_ac
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v16

    move v0, v6

    move/from16 v1, v16

    if-ge v0, v1, :cond_154

    invoke-virtual {v15, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ibm/icu/text/NFRule;

    invoke-virtual {v11}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_174

    invoke-virtual {v11}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-gez v16, :cond_140

    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Rules are not in order, base: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " < "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    :pswitch_f9
    invoke-virtual {v11, v4, v5}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    move/from16 v16, v0

    if-nez v16, :cond_108

    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    :cond_108
    add-int/lit8 v6, v6, 0x1

    goto :goto_ac

    :pswitch_10b
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/NFRuleSet;->negativeNumberRule:Lcom/ibm/icu/text/NFRule;

    invoke-virtual {v15, v6}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_ac

    :pswitch_114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    invoke-virtual {v15, v6}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_ac

    :pswitch_122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aput-object v11, v16, v17

    invoke-virtual {v15, v6}, Ljava/util/Vector;->removeElementAt(I)V

    goto/16 :goto_ac

    :pswitch_131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aput-object v11, v16, v17

    invoke-virtual {v15, v6}, Ljava/util/Vector;->removeElementAt(I)V

    goto/16 :goto_ac

    :cond_140
    invoke-virtual {v11}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/NFRuleSet;->isFractionRuleSet:Z

    move/from16 v16, v0

    if-nez v16, :cond_150

    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    :cond_150
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_ac

    :cond_154
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Lcom/ibm/icu/text/NFRule;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    move-object/from16 p0, v0

    check-cast p0, [Ljava/lang/Object;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_174
    .packed-switch -0x4
        :pswitch_131
        :pswitch_122
        :pswitch_114
        :pswitch_10b
        :pswitch_f9
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_21
    iget-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    array-length v2, v2

    if-ge v0, v2, :cond_4d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->rules:[Lcom/ibm/icu/text/NFRule;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/ibm/icu/text/NFRule;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_4d
    iget-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->negativeNumberRule:Lcom/ibm/icu/text/NFRule;

    if-eqz v2, :cond_73

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->negativeNumberRule:Lcom/ibm/icu/text/NFRule;

    invoke-virtual {v3}, Lcom/ibm/icu/text/NFRule;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_73
    iget-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v2, v2, v4

    if-eqz v2, :cond_9d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/ibm/icu/text/NFRule;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9d
    iget-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v2, v2, v5

    if-eqz v2, :cond_c7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/ibm/icu/text/NFRule;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c7
    iget-object v2, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v2, v2, v6

    if-eqz v2, :cond_f1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/text/NFRuleSet;->fractionRules:[Lcom/ibm/icu/text/NFRule;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/ibm/icu/text/NFRule;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
