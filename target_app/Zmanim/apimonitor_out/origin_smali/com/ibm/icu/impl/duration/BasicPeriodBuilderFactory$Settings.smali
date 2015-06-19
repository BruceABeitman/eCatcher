.class Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
.super Ljava/lang/Object;
.source "BasicPeriodBuilderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Settings"
.end annotation


# instance fields
.field allowMillis:Z

.field allowZero:Z

.field inUse:Z

.field maxLimit:I

.field maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

.field minLimit:I

.field minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

.field final synthetic this$0:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;

.field uset:S

.field weeksAloneOnly:Z


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;)V
    .registers 4

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->this$0:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput-short v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    sget-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->YEAR:Lcom/ibm/icu/impl/duration/TimeUnit;

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    sget-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->MILLISECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    iput-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    iput-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    return-void
.end method


# virtual methods
.method public copy()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 3

    new-instance v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->this$0:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;-><init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;)V

    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    iput-boolean v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    iget-short v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    iput-short v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    iput-object v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    iput-object v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    iget v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    iput v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    iget v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    iput v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    iput-boolean v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    iput-boolean v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    iput-boolean v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    return-object v0
.end method

.method createLimited(JZ)Lcom/ibm/icu/impl/duration/Period;
    .registers 19

    iget v9, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    if-lez v9, :cond_2a

    iget-object v9, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    invoke-static {v9}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v9, v9, p1

    iget v11, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    int-to-long v11, v11

    mul-long/2addr v11, v7

    cmp-long v9, v9, v11

    if-lez v9, :cond_2a

    iget v9, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    int-to-float v9, v9

    const/high16 v10, 0x447a

    div-float/2addr v9, v10

    iget-object v10, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    invoke-static {v9, v10}, Lcom/ibm/icu/impl/duration/Period;->moreThan(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v9

    move-object v0, v9

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/duration/Period;->inPast(Z)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v9

    :goto_29
    return-object v9

    :cond_2a
    iget v9, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    if-lez v9, :cond_6b

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveMinUnit()Lcom/ibm/icu/impl/duration/TimeUnit;

    move-result-object v4

    invoke-static {v4}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J

    move-result-wide v5

    iget-object v9, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    if-ne v4, v9, :cond_58

    iget v9, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    int-to-long v9, v9

    move-wide v2, v9

    :goto_3e
    const-wide/16 v9, 0x3e8

    mul-long v9, v9, p1

    mul-long v11, v2, v5

    cmp-long v9, v9, v11

    if-gez v9, :cond_6b

    long-to-float v9, v2

    const/high16 v10, 0x447a

    div-float/2addr v9, v10

    invoke-static {v9, v4}, Lcom/ibm/icu/impl/duration/Period;->lessThan(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v9

    move-object v0, v9

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/duration/Period;->inPast(Z)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v9

    goto :goto_29

    :cond_58
    const-wide/16 v9, 0x3e8

    iget-object v11, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    invoke-static {v11}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J

    move-result-wide v11

    iget v13, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    int-to-long v13, v13

    mul-long/2addr v11, v13

    div-long/2addr v11, v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    move-wide v2, v9

    goto :goto_3e

    :cond_6b
    const/4 v9, 0x0

    goto :goto_29
.end method

.method effectiveMinUnit()Lcom/ibm/icu/impl/duration/TimeUnit;
    .registers 5

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    sget-object v2, Lcom/ibm/icu/impl/duration/TimeUnit;->MILLISECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    if-eq v1, v2, :cond_e

    :cond_b
    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    :goto_d
    return-object v1

    :cond_e
    sget-object v1, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    array-length v1, v1

    sub-int v0, v1, v3

    :cond_13
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_23

    iget-short v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    shl-int v2, v3, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    sget-object v1, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    aget-object v1, v1, v0

    goto :goto_d

    :cond_23
    sget-object v1, Lcom/ibm/icu/impl/duration/TimeUnit;->SECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    goto :goto_d
.end method

.method effectiveSet()S
    .registers 4

    iget-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    if-eqz v0, :cond_7

    iget-short v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    :goto_6
    return v0

    :cond_7
    iget-short v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    const/4 v1, 0x1

    sget-object v2, Lcom/ibm/icu/impl/duration/TimeUnit;->MILLISECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    iget-byte v2, v2, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int/2addr v1, v2

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_6
.end method

.method setAllowMilliseconds(Z)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 4

    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    if-ne v1, p1, :cond_6

    move-object v1, p0

    :goto_5
    return-object v1

    :cond_6
    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v1

    move-object v0, v1

    :goto_f
    iput-boolean p1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    move-object v1, v0

    goto :goto_5

    :cond_13
    move-object v0, p0

    goto :goto_f
.end method

.method setAllowZero(Z)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 4

    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    if-ne v1, p1, :cond_6

    move-object v1, p0

    :goto_5
    return-object v1

    :cond_6
    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v1

    move-object v0, v1

    :goto_f
    iput-boolean p1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    move-object v1, v0

    goto :goto_5

    :cond_13
    move-object v0, p0

    goto :goto_f
.end method

.method setInUse()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    return-object p0
.end method

.method setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 6

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->this$0:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;

    #getter for: Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;
    invoke-static {v1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->access$000(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;)Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;->get(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->allowZero()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowZero(Z)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->weeksAloneOnly()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setWeeksAloneOnly(Z)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->useMilliseconds()I

    move-result v2

    if-eq v2, v3, :cond_27

    move v2, v3

    :goto_22
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowMilliseconds(Z)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v1

    return-object v1

    :cond_27
    const/4 v2, 0x0

    goto :goto_22
.end method

.method setMaxLimit(F)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 5

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_e

    const/4 v2, 0x0

    move v1, v2

    :goto_7
    int-to-float v2, v1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_14

    move-object v2, p0

    :goto_d
    return-object v2

    :cond_e
    const/high16 v2, 0x447a

    mul-float/2addr v2, p1

    float-to-int v2, v2

    move v1, v2

    goto :goto_7

    :cond_14
    iget-boolean v2, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v2, :cond_21

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v2

    move-object v0, v2

    :goto_1d
    iput v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    move-object v2, v0

    goto :goto_d

    :cond_21
    move-object v0, p0

    goto :goto_1d
.end method

.method setMinLimit(F)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 5

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_e

    const/4 v2, 0x0

    move v1, v2

    :goto_7
    int-to-float v2, v1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_14

    move-object v2, p0

    :goto_d
    return-object v2

    :cond_e
    const/high16 v2, 0x447a

    mul-float/2addr v2, p1

    float-to-int v2, v2

    move v1, v2

    goto :goto_7

    :cond_14
    iget-boolean v2, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v2, :cond_21

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v2

    move-object v0, v2

    :goto_1d
    iput v1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    move-object v2, v0

    goto :goto_d

    :cond_21
    move-object v0, p0

    goto :goto_1d
.end method

.method setUnits(I)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 8

    const/16 v5, 0xff

    const/4 v4, -0x1

    iget-short v3, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    if-ne v3, p1, :cond_9

    move-object v3, p0

    :goto_8
    return-object v3

    :cond_9
    iget-boolean v3, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v3, :cond_25

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v3

    move-object v2, v3

    :goto_12
    int-to-short v3, p1

    iput-short v3, v2, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    and-int/lit16 v3, p1, 0xff

    if-ne v3, v5, :cond_27

    iput-short v5, v2, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    sget-object v3, Lcom/ibm/icu/impl/duration/TimeUnit;->YEAR:Lcom/ibm/icu/impl/duration/TimeUnit;

    iput-object v3, v2, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    sget-object v3, Lcom/ibm/icu/impl/duration/TimeUnit;->MILLISECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    iput-object v3, v2, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    :goto_23
    move-object v3, v2

    goto :goto_8

    :cond_25
    move-object v2, p0

    goto :goto_12

    :cond_27
    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_29
    sget-object v3, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    array-length v3, v3

    if-ge v0, v3, :cond_3f

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    and-int/2addr v3, p1

    if-eqz v3, :cond_3c

    if-ne v1, v4, :cond_3b

    sget-object v3, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    aget-object v3, v3, v0

    iput-object v3, v2, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    :cond_3b
    move v1, v0

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_3f
    if-ne v1, v4, :cond_47

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    iput-object v3, v2, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    goto :goto_23

    :cond_47
    sget-object v3, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    aget-object v3, v3, v1

    iput-object v3, v2, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Lcom/ibm/icu/impl/duration/TimeUnit;

    goto :goto_23
.end method

.method setWeeksAloneOnly(Z)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .registers 4

    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    if-ne v1, p1, :cond_6

    move-object v1, p0

    :goto_5
    return-object v1

    :cond_6
    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v1

    move-object v0, v1

    :goto_f
    iput-boolean p1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    move-object v1, v0

    goto :goto_5

    :cond_13
    move-object v0, p0

    goto :goto_f
.end method
