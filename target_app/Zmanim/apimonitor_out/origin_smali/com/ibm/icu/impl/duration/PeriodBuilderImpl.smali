.class abstract Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;
.super Ljava/lang/Object;
.source "BasicPeriodBuilderFactory.java"

# interfaces
.implements Lcom/ibm/icu/impl/duration/PeriodBuilder;


# instance fields
.field protected settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;


# direct methods
.method protected constructor <init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-void
.end method


# virtual methods
.method public approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J
    .registers 4

    invoke-static {p1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public create(J)Lcom/ibm/icu/impl/duration/Period;
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;->createWithReferenceDate(JJ)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public createWithReferenceDate(JJ)Lcom/ibm/icu/impl/duration/Period;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2d

    const/4 v0, 0x1

    move v5, v0

    :goto_8
    if-eqz v5, :cond_b

    neg-long p1, p1

    :cond_b
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1, p2, v5}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->createLimited(JZ)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v6

    if-nez v6, :cond_2c

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;->handleCreate(JJZ)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v6

    if-nez v6, :cond_2c

    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveMinUnit()Lcom/ibm/icu/impl/duration/TimeUnit;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/duration/Period;->lessThan(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/ibm/icu/impl/duration/Period;->inPast(Z)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v6

    :cond_2c
    return-object v6

    :cond_2d
    const/4 v0, 0x0

    move v5, v0

    goto :goto_8
.end method

.method protected abstract handleCreate(JJZ)Lcom/ibm/icu/impl/duration/Period;
.end method

.method public withLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodBuilder;
    .registers 4

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    if-eq v0, v1, :cond_f

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;->withSettings(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/PeriodBuilder;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    move-object v1, p0

    goto :goto_e
.end method

.method protected abstract withSettings(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/PeriodBuilder;
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Lcom/ibm/icu/impl/duration/PeriodBuilder;
    .registers 2

    return-object p0
.end method
