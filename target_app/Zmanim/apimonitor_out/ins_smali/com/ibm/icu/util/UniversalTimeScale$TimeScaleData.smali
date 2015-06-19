.class final Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
.super Ljava/lang/Object;
.source "UniversalTimeScale.java"
.field  epochOffset:J
.field  epochOffsetM1:J
.field  epochOffsetP1:J
.field  fromMax:J
.field  fromMin:J
.field  maxRound:J
.field  minRound:J
.field  toMax:J
.field  toMin:J
.field  units:J
.field  unitsRound:J
.method constructor <init>(JJJJJJ)V
.registers 17
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->units:J
const-wide/16 v0, 0x2
div-long v0, p1, v0
iput-wide v0, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J
const-wide/high16 v0, -0x8000
iget-wide v2, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->minRound:J
const-wide v0, 0x7fffffffffffffffL
iget-wide v2, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J
sub-long/2addr v0, v2
iput-wide v0, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->maxRound:J
div-long v0, p3, p1
iput-wide v0, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J
const-wide/16 v0, 0x1
cmp-long v0, p1, v0
if-nez v0, :cond_35
iget-wide v0, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J
iput-wide v0, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J
iput-wide v0, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J
:goto_2c
iput-wide p5, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->toMin:J
iput-wide p7, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->toMax:J
iput-wide p9, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->fromMin:J
iput-wide p11, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->fromMax:J
return-void
:cond_35
iget-wide v0, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J
const-wide/16 v2, 0x1
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J
iget-wide v0, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J
const-wide/16 v2, 0x1
sub-long/2addr v0, v2
iput-wide v0, p0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J
goto :goto_2c
.end method