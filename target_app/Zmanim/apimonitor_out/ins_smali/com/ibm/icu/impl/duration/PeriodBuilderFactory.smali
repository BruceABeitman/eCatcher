.class public interface abstract Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
.super Ljava/lang/Object;
.source "PeriodBuilderFactory.java"
.method public abstract getFixedUnitBuilder(Lcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/PeriodBuilder;
.end method
.method public abstract getMultiUnitBuilder(I)Lcom/ibm/icu/impl/duration/PeriodBuilder;
.end method
.method public abstract getOneOrTwoUnitBuilder()Lcom/ibm/icu/impl/duration/PeriodBuilder;
.end method
.method public abstract getSingleUnitBuilder()Lcom/ibm/icu/impl/duration/PeriodBuilder;
.end method
.method public abstract setAllowMilliseconds(Z)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
.end method
.method public abstract setAllowZero(Z)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
.end method
.method public abstract setAvailableUnitRange(Lcom/ibm/icu/impl/duration/TimeUnit;Lcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
.end method
.method public abstract setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
.end method
.method public abstract setMaxLimit(F)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
.end method
.method public abstract setMinLimit(F)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
.end method
.method public abstract setTimeZone(Ljava/util/TimeZone;)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
.end method
.method public abstract setUnitIsAvailable(Lcom/ibm/icu/impl/duration/TimeUnit;Z)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
.end method
.method public abstract setWeeksAloneOnly(Z)Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
.end method