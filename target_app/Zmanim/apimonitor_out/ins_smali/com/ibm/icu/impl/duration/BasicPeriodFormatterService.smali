.class public Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;
.super Ljava/lang/Object;
.source "BasicPeriodFormatterService.java"
.implements Lcom/ibm/icu/impl/duration/PeriodFormatterService;
.field private static instance:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;
.field private ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;
.method public constructor <init>(Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;
return-void
.end method
.method public static getInstance()Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;
.registers 2
sget-object v1, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->instance:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;
if-nez v1, :cond_f
invoke-static {}, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->getInstance()Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
move-result-object v0
new-instance v1, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;
invoke-direct {v1, v0}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;-><init>(Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;)V
sput-object v1, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->instance:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;
:cond_f
sget-object v1, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->instance:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;
return-object v1
.end method
.method public getAvailableLocaleNames()Ljava/util/Collection;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;
invoke-virtual {v0}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;->getAvailableLocales()Ljava/util/Collection;
move-result-object v0
return-object v0
.end method
.method public newDurationFormatterFactory()Lcom/ibm/icu/impl/duration/DurationFormatterFactory;
.registers 2
new-instance v0, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;
invoke-direct {v0, p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormatterFactory;-><init>(Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;)V
return-object v0
.end method
.method public newPeriodBuilderFactory()Lcom/ibm/icu/impl/duration/PeriodBuilderFactory;
.registers 3
new-instance v0, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;
iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;
invoke-direct {v0, v1}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory;-><init>(Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;)V
return-object v0
.end method
.method public newPeriodFormatterFactory()Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;
.registers 3
new-instance v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;
iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;
invoke-direct {v0, v1}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;-><init>(Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;)V
return-object v0
.end method