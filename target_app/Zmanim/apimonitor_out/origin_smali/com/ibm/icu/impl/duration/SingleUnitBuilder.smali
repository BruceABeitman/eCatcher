.class Lcom/ibm/icu/impl/duration/SingleUnitBuilder;
.super Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;-><init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-void
.end method

.method public static get(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/SingleUnitBuilder;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ibm/icu/impl/duration/SingleUnitBuilder;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/duration/SingleUnitBuilder;-><init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    goto :goto_3
.end method


# virtual methods
.method protected handleCreate(JJZ)Lcom/ibm/icu/impl/duration/Period;
    .registers 15

    iget-object v5, p0, Lcom/ibm/icu/impl/duration/SingleUnitBuilder;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result v4

    const/4 v0, 0x0

    :goto_7
    sget-object v5, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    array-length v5, v5

    if-ge v0, v5, :cond_2d

    const/4 v5, 0x1

    shl-int/2addr v5, v0

    and-int/2addr v5, v4

    if-eqz v5, :cond_2a

    sget-object v5, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    aget-object v1, v5, v0

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/duration/SingleUnitBuilder;->approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J

    move-result-wide v2

    cmp-long v5, p1, v2

    if-ltz v5, :cond_2a

    long-to-double v5, p1

    long-to-double v7, v2

    div-double/2addr v5, v7

    double-to-float v5, v5

    invoke-static {v5, v1}, Lcom/ibm/icu/impl/duration/Period;->at(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v5

    invoke-virtual {v5, p5}, Lcom/ibm/icu/impl/duration/Period;->inPast(Z)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v5

    :goto_29
    return-object v5

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2d
    const/4 v5, 0x0

    goto :goto_29
.end method

.method protected withSettings(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/PeriodBuilder;
    .registers 3

    invoke-static {p1}, Lcom/ibm/icu/impl/duration/SingleUnitBuilder;->get(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/SingleUnitBuilder;

    move-result-object v0

    return-object v0
.end method
