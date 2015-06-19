.class public interface abstract Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
.super Ljava/lang/Object;
.source "DurationFormatterFactory.java"


# virtual methods
.method public abstract getFormatter()Lcom/ibm/icu/impl/duration/DurationFormatter;
.end method

.method public abstract setFallback(Lcom/ibm/icu/impl/duration/DateFormatter;)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
.end method

.method public abstract setFallbackLimit(J)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
.end method

.method public abstract setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
.end method

.method public abstract setPeriodBuilder(Lcom/ibm/icu/impl/duration/PeriodBuilder;)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
.end method

.method public abstract setPeriodFormatter(Lcom/ibm/icu/impl/duration/PeriodFormatter;)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
.end method

.method public abstract setTimeZone(Ljava/util/TimeZone;)Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
.end method
