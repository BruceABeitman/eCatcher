.class Lcom/ibm/icu/impl/duration/FixedUnitBuilder;
.super Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# instance fields
.field private unit:Lcom/ibm/icu/impl/duration/TimeUnit;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/duration/TimeUnit;Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;-><init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;->unit:Lcom/ibm/icu/impl/duration/TimeUnit;

    return-void
.end method

.method public static get(Lcom/ibm/icu/impl/duration/TimeUnit;Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/FixedUnitBuilder;
    .registers 5

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result v0

    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    new-instance v0, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;-><init>(Lcom/ibm/icu/impl/duration/TimeUnit;Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method protected handleCreate(JJZ)Lcom/ibm/icu/impl/duration/Period;
    .registers 12

    iget-object v2, p0, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;->unit:Lcom/ibm/icu/impl/duration/TimeUnit;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    :goto_5
    return-object v2

    :cond_6
    iget-object v2, p0, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;->unit:Lcom/ibm/icu/impl/duration/TimeUnit;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;->approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J

    move-result-wide v0

    long-to-double v2, p1

    long-to-double v4, v0

    div-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;->unit:Lcom/ibm/icu/impl/duration/TimeUnit;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/duration/Period;->at(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/ibm/icu/impl/duration/Period;->inPast(Z)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v2

    goto :goto_5
.end method

.method protected withSettings(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/PeriodBuilder;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;->unit:Lcom/ibm/icu/impl/duration/TimeUnit;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/duration/FixedUnitBuilder;->get(Lcom/ibm/icu/impl/duration/TimeUnit;Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/FixedUnitBuilder;

    move-result-object v0

    return-object v0
.end method
