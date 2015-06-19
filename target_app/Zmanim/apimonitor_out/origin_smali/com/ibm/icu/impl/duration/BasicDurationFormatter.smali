.class Lcom/ibm/icu/impl/duration/BasicDurationFormatter;
.super Ljava/lang/Object;
.source "BasicDurationFormatter.java"

# interfaces
.implements Lcom/ibm/icu/impl/duration/DurationFormatter;


# instance fields
.field private builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

.field private fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

.field private fallbackLimit:J

.field private formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

.field private localeName:Ljava/lang/String;

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/duration/PeriodFormatter;Lcom/ibm/icu/impl/duration/PeriodBuilder;Lcom/ibm/icu/impl/duration/DateFormatter;J)V
    .registers 9

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    iput-object p2, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    iput-object p3, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    cmp-long v0, p4, v1

    if-gez v0, :cond_13

    move-wide v0, v1

    :goto_10
    iput-wide v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    return-void

    :cond_13
    move-wide v0, p4

    goto :goto_10
.end method

.method protected constructor <init>(Lcom/ibm/icu/impl/duration/PeriodFormatter;Lcom/ibm/icu/impl/duration/PeriodBuilder;Lcom/ibm/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    iput-object p2, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    iput-object p3, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    iput-wide p4, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    iput-object p6, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->localeName:Ljava/lang/String;

    iput-object p7, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->timeZone:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method protected doBuild(JJ)Lcom/ibm/icu/impl/duration/Period;
    .registers 6

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/duration/PeriodBuilder;->createWithReferenceDate(JJ)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method protected doFallback(JJ)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    if-eqz v0, :cond_1f

    iget-wide v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1f

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    add-long v1, p3, p1

    invoke-interface {v0, v1, v2}, Lcom/ibm/icu/impl/duration/DateFormatter;->format(J)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method protected doFormat(Lcom/ibm/icu/impl/duration/Period;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcom/ibm/icu/impl/duration/Period;->isSet()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "period is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/duration/PeriodFormatter;->format(Lcom/ibm/icu/impl/duration/Period;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDurationFrom(JJ)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->doFallback(JJ)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->doBuild(JJ)Lcom/ibm/icu/impl/duration/Period;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->doFormat(Lcom/ibm/icu/impl/duration/Period;)Ljava/lang/String;

    move-result-object v1

    :cond_e
    return-object v1
.end method

.method public formatDurationFromNow(J)Ljava/lang/String;
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->formatDurationFrom(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->formatDurationFrom(JJ)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public withLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/DurationFormatter;
    .registers 10

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->localeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/duration/PeriodFormatter;->withLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodFormatter;

    move-result-object v1

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/duration/PeriodBuilder;->withLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    if-nez v0, :cond_25

    const/4 v0, 0x0

    move-object v3, v0

    :goto_1a
    new-instance v0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;

    iget-wide v4, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    iget-object v7, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->timeZone:Ljava/util/TimeZone;

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;-><init>(Lcom/ibm/icu/impl/duration/PeriodFormatter;Lcom/ibm/icu/impl/duration/PeriodBuilder;Lcom/ibm/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V

    :goto_24
    return-object v0

    :cond_25
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/duration/DateFormatter;->withLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/DateFormatter;

    move-result-object v0

    move-object v3, v0

    goto :goto_1a

    :cond_2d
    move-object v0, p0

    goto :goto_24
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Lcom/ibm/icu/impl/duration/DurationFormatter;
    .registers 10

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->builder:Lcom/ibm/icu/impl/duration/PeriodBuilder;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/duration/PeriodBuilder;->withTimeZone(Ljava/util/TimeZone;)Lcom/ibm/icu/impl/duration/PeriodBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    if-nez v0, :cond_21

    const/4 v0, 0x0

    move-object v3, v0

    :goto_14
    new-instance v0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->formatter:Lcom/ibm/icu/impl/duration/PeriodFormatter;

    iget-wide v4, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    iget-object v6, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->localeName:Ljava/lang/String;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;-><init>(Lcom/ibm/icu/impl/duration/PeriodFormatter;Lcom/ibm/icu/impl/duration/PeriodBuilder;Lcom/ibm/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V

    :goto_20
    return-object v0

    :cond_21
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicDurationFormatter;->fallback:Lcom/ibm/icu/impl/duration/DateFormatter;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/duration/DateFormatter;->withTimeZone(Ljava/util/TimeZone;)Lcom/ibm/icu/impl/duration/DateFormatter;

    move-result-object v0

    move-object v3, v0

    goto :goto_14

    :cond_29
    move-object v0, p0

    goto :goto_20
.end method
