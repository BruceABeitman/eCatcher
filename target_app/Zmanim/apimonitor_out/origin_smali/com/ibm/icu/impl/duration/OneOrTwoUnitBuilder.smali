.class Lcom/ibm/icu/impl/duration/OneOrTwoUnitBuilder;
.super Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;-><init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-void
.end method

.method public static get(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/OneOrTwoUnitBuilder;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ibm/icu/impl/duration/OneOrTwoUnitBuilder;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/duration/OneOrTwoUnitBuilder;-><init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    goto :goto_3
.end method


# virtual methods
.method protected handleCreate(JJZ)Lcom/ibm/icu/impl/duration/Period;
    .registers 20

    const/4 v5, 0x0

    iget-object v10, p0, Lcom/ibm/icu/impl/duration/OneOrTwoUnitBuilder;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v10}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result v9

    const/4 v4, 0x0

    :goto_8
    sget-object v10, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    array-length v10, v10

    if-ge v4, v10, :cond_31

    const/4 v10, 0x1

    shl-int/2addr v10, v4

    and-int/2addr v10, v9

    if-eqz v10, :cond_40

    sget-object v10, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    aget-object v6, v10, v4

    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/duration/OneOrTwoUnitBuilder;->approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J

    move-result-wide v7

    cmp-long v10, p1, v7

    if-gez v10, :cond_20

    if-eqz v5, :cond_40

    :cond_20
    long-to-double v10, p1

    long-to-double v12, v7

    div-double v2, v10, v12

    if-nez v5, :cond_43

    const-wide/high16 v10, 0x4000

    cmpl-double v10, v2, v10

    if-ltz v10, :cond_32

    double-to-float v10, v2

    invoke-static {v10, v6}, Lcom/ibm/icu/impl/duration/Period;->at(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v5

    :cond_31
    :goto_31
    return-object v5

    :cond_32
    const/high16 v10, 0x3f80

    invoke-static {v10, v6}, Lcom/ibm/icu/impl/duration/Period;->at(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v10

    move-object v0, v10

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/duration/Period;->inPast(Z)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v5

    sub-long/2addr p1, v7

    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_43
    const-wide/high16 v10, 0x3ff0

    cmpl-double v10, v2, v10

    if-ltz v10, :cond_31

    double-to-float v10, v2

    invoke-virtual {v5, v10, v6}, Lcom/ibm/icu/impl/duration/Period;->and(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    goto :goto_31
.end method

.method protected withSettings(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/PeriodBuilder;
    .registers 3

    invoke-static {p1}, Lcom/ibm/icu/impl/duration/OneOrTwoUnitBuilder;->get(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/OneOrTwoUnitBuilder;

    move-result-object v0

    return-object v0
.end method
