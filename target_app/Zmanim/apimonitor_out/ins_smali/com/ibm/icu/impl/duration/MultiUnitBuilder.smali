.class  Lcom/ibm/icu/impl/duration/MultiUnitBuilder;
.super Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"
.field private nPeriods:I
.method constructor <init>(ILcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
.registers 3
invoke-direct {p0, p2}, Lcom/ibm/icu/impl/duration/PeriodBuilderImpl;-><init>(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
iput p1, p0, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;->nPeriods:I
return-void
.end method
.method public static get(ILcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/MultiUnitBuilder;
.registers 3
if-lez p0, :cond_a
if-eqz p1, :cond_a
new-instance v0, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;
invoke-direct {v0, p0, p1}, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;-><init>(ILcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
:goto_9
return-object v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method protected handleCreate(JJZ)Lcom/ibm/icu/impl/duration/Period;
.registers 21
const/4 v6, 0x0
const/4 v5, 0x0
iget-object v11, p0, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;->settings:Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
invoke-virtual {v11}, Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S
move-result v10
const/4 v4, 0x0
:goto_9
sget-object v11, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;
array-length v11, v11
if-ge v4, v11, :cond_1b
const/4 v11, 0x1
shl-int/2addr v11, v4
and-int/2addr v11, v10
if-eqz v11, :cond_4a
sget-object v11, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;
aget-object v7, v11, v4
iget v11, p0, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;->nPeriods:I
if-ne v5, v11, :cond_1c
:cond_1b
return-object v6
:cond_1c
invoke-virtual {p0, v7}, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;->approximateDurationOf(Lcom/ibm/icu/impl/duration/TimeUnit;)J
move-result-wide v8
cmp-long v11, p1, v8
if-gez v11, :cond_26
if-lez v5, :cond_4a
:cond_26
add-int/lit8 v5, v5, 0x1
move-wide/from16 v0, p1
long-to-double v0, v0
move-wide v11, v0
long-to-double v13, v8
div-double v2, v11, v13
iget v11, p0, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;->nPeriods:I
if-ge v5, v11, :cond_3c
invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D
move-result-wide v2
long-to-double v11, v8
mul-double/2addr v11, v2
double-to-long v11, v11
sub-long p1, p1, v11
:cond_3c
if-nez v6, :cond_4d
double-to-float v11, v2
invoke-static {v11, v7}, Lcom/ibm/icu/impl/duration/Period;->at(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;
move-result-object v11
move-object v0, v11
move/from16 v1, p5
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/duration/Period;->inPast(Z)Lcom/ibm/icu/impl/duration/Period;
move-result-object v6
:goto_4a
:cond_4a
add-int/lit8 v4, v4, 0x1
goto :goto_9
:cond_4d
double-to-float v11, v2
invoke-virtual {v6, v11, v7}, Lcom/ibm/icu/impl/duration/Period;->and(FLcom/ibm/icu/impl/duration/TimeUnit;)Lcom/ibm/icu/impl/duration/Period;
goto :goto_4a
.end method
.method protected withSettings(Lcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/PeriodBuilder;
.registers 3
iget v0, p0, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;->nPeriods:I
invoke-static {v0, p1}, Lcom/ibm/icu/impl/duration/MultiUnitBuilder;->get(ILcom/ibm/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Lcom/ibm/icu/impl/duration/MultiUnitBuilder;
move-result-object v0
return-object v0
.end method