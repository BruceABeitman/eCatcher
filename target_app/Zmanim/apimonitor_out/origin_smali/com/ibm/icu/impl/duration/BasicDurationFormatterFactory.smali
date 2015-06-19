.class Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;
.super Ljava/lang/Object;
.source "BasicDurationFormatterFactory.java"

# interfaces
.implements Lcom/ibm/icu/impl/duration/DurationFormatterFactory;


# instance fields
.field private builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

.field private f:Lcom/ibm/icu/impl/duration/BasicDurationFormatter;

.field private fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

.field private fallbackLimit:J

.field private formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

.field private localeName:Ljava/lang/String;

.field private ps:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->ps:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method protected createFormatter()Lcom/ibm/icu/impl/duration/BasicDurationFormatter;
    .registers 9

    new-instance v0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    iget-object v2, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    iget-object v3, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    iget-wide v4, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    iget-object v6, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    iget-object v7, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;-><init>(Lcom/ibm/icu/impl/duration/PeriodFormatter;Lcom/ibm/icu/impl/duration/PeriodBuilder;Lcom/ibm/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public getFallback()Lcom/ibm/icu/impl/duration/DateFormatter;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    return-object v0
.end method

.method public getFallbackLimit()J
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-wide v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    goto :goto_6
.end method

.method public getFormatter()Lcom/ibm/icu/impl/duration/DurationFormatter;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->f:Lcom/ibm/icu/impl/duration/BasicDurationFormatter;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/duration/DateFormatter;->withLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/DateFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/duration/DateFormatter;->withTimeZone(Ljava/util/TimeZone;)Lcom/ibm/icu/impl/duration/DateFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    :cond_18
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->getPeriodFormatter()Lcom/ibm/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->getPeriodBuilder()Lcom/ibm/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->createFormatter()Lcom/ibm/icu/impl/duration/BasicDurationFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->f:Lcom/ibm/icu/impl/duration/BasicDurationFormatter;

    :cond_2a
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->f:Lcom/ibm/icu/impl/duration/BasicDurationFormatter;

    return-object v0
.end method

.method public getLocaleName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodBuilder()Lcom/ibm/icu/impl/duration/PeriodBuilder;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->ps:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->newPeriodBuilderFactory()Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;->setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;->setTimeZone(Ljava/util/TimeZone;)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;->getSingleUnitBuilder()Lcom/ibm/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    :cond_1c
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    return-object v0
.end method

.method public getPeriodFormatter()Lcom/ibm/icu/impl/duration/PeriodFormatter;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->ps:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->newPeriodFormatterFactory()Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;->setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Lcom/ibm/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    :cond_16
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method protected reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->f:Lcom/ibm/icu/impl/duration/BasicDurationFormatter;

    return-void
.end method

.method public setFallback(Lcom/ibm/icu/impl/duration/DateFormatter;)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_13

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    if-eqz v1, :cond_11

    move v0, v3

    :goto_9
    if-eqz v0, :cond_10

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_10
    return-object p0

    :cond_11
    move v0, v2

    goto :goto_9

    :cond_13
    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    move v0, v3

    goto :goto_9

    :cond_1d
    move v0, v2

    goto :goto_9
.end method

.method public setFallbackLimit(J)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    const-wide/16 p1, 0x0

    :cond_8
    iget-wide v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_13

    iput-wide p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_13
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/duration/PeriodBuilder;->withLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    :cond_16
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/duration/PeriodFormatter;->withLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    :cond_22
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_25
    return-object p0
.end method

.method public setPeriodBuilder(Lcom/ibm/icu/impl/duration/PeriodBuilder;)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    if-eq p1, v0, :cond_9

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_9
    return-object p0
.end method

.method public setPeriodFormatter(Lcom/ibm/icu/impl/duration/PeriodFormatter;)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    if-eq p1, v0, :cond_9

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_9
    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/duration/PeriodBuilder;->withTimeZone(Ljava/util/TimeZone;)Lcom/ibm/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    :cond_16
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_19
    return-object p0
.end method
