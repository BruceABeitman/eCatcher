.class public final Lcom/ibm/icu/util/UniversalTimeScale;
.super Ljava/lang/Object;
.source "UniversalTimeScale.java"
.field public static final DB2_TIME:I = 0x8
.field public static final DOTNET_DATE_TIME:I = 0x4
.field public static final EPOCH_OFFSET_MINUS_1_VALUE:I = 0x7
.field public static final EPOCH_OFFSET_PLUS_1_VALUE:I = 0x6
.field public static final EPOCH_OFFSET_VALUE:I = 0x1
.field public static final EXCEL_TIME:I = 0x7
.field public static final FROM_MAX_VALUE:I = 0x3
.field public static final FROM_MIN_VALUE:I = 0x2
.field public static final ICU4C_TIME:I = 0x2
.field public static final JAVA_TIME:I = 0x0
.field public static final MAC_OLD_TIME:I = 0x5
.field public static final MAC_TIME:I = 0x6
.field public static final MAX_ROUND_VALUE:I = 0xa
.field public static final MAX_SCALE:I = 0xa
.field public static final MAX_SCALE_VALUE:I = 0xb
.field public static final MIN_ROUND_VALUE:I = 0x9
.field public static final TO_MAX_VALUE:I = 0x5
.field public static final TO_MIN_VALUE:I = 0x4
.field public static final UNITS_ROUND_VALUE:I = 0x8
.field public static final UNITS_VALUE:I = 0x0
.field public static final UNIX_MICROSECONDS_TIME:I = 0x9
.field public static final UNIX_TIME:I = 0x1
.field public static final WINDOWS_FILE_TIME:I = 0x3
.field private static final days:J = 0xc92a69c000L
.field private static final hours:J = 0x861c46800L
.field private static final microseconds:J = 0xaL
.field private static final milliseconds:J = 0x2710L
.field private static final minutes:J = 0x23c34600L
.field private static final seconds:J = 0x989680L
.field private static final ticks:J = 0x1L
.field private static final timeScaleTable:[Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
.method static constructor <clinit>()V
.registers 15
const/16 v0, 0xa
new-array v13, v0, [Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
const/4 v14, 0x0
new-instance v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
const-wide/16 v1, 0x2710
const-wide v3, 0x89f7ff5f7b58000L
const-wide v5, -0x7ffffffffffffcd7L
const-wide v7, 0x7ffffffffffffcd7L
const-wide v9, -0x37f5f6f906065L
const-wide v11, 0x30e594b36b065L
invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V
aput-object v0, v13, v14
const/4 v14, 0x1
new-instance v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
const-wide/32 v1, 0x989680
const-wide v3, 0x89f7ff5f7b58000L
const-wide/high16 v5, -0x8000
const-wide v7, 0x7fffffffffffffffL
const-wide v9, -0xe53726cce5L
const-wide v11, 0xc84802dee5L
invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V
aput-object v0, v13, v14
const/4 v14, 0x2
new-instance v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
const-wide/16 v1, 0x2710
const-wide v3, 0x89f7ff5f7b58000L
const-wide v5, -0x7ffffffffffffcd7L
const-wide v7, 0x7ffffffffffffcd7L
const-wide v9, -0x37f5f6f906065L
const-wide v11, 0x30e594b36b065L
invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V
aput-object v0, v13, v14
const/4 v14, 0x3
new-instance v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
const-wide/16 v1, 0x1
const-wide v3, 0x701ce1722770000L
const-wide v5, -0x78fe31e8dd890000L
const-wide v7, 0x7fffffffffffffffL
const-wide/high16 v9, -0x8000
const-wide v11, 0x78fe31e8dd88ffffL
invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V
aput-object v0, v13, v14
const/4 v14, 0x4
new-instance v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
const-wide/16 v1, 0x1
const-wide/16 v3, 0x0
const-wide/high16 v5, -0x8000
const-wide v7, 0x7fffffffffffffffL
const-wide/high16 v9, -0x8000
const-wide v11, 0x7fffffffffffffffL
invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V
aput-object v0, v13, v14
const/4 v14, 0x5
new-instance v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
const-wide/32 v1, 0x989680
const-wide v3, 0x855809903724000L
const-wide/high16 v5, -0x8000
const-wide v7, 0x7fffffffffffffffL
const-wide v9, -0xe4bb011c65L
const-wide v11, 0xc8c4288f65L
invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V
aput-object v0, v13, v14
const/4 v14, 0x6
new-instance v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
const-wide/32 v1, 0x989680
const-wide v3, 0x8c2419ceb14c000L
const-wide/high16 v5, -0x8000
const-wide v7, 0x7fffffffffffffffL
const-wide v9, -0xe571769565L
const-wide v11, 0xc80db31665L
invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V
aput-object v0, v13, v14
const/4 v14, 0x7
new-instance v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
const-wide v1, 0xc92a69c000L
const-wide v3, 0x8510489f5ed8000L
const-wide/high16 v5, -0x8000
const-wide v7, 0x7fffffffffffffffL
const-wide/32 v9, -0xad7959
const-wide/32 v11, 0x984ea5
invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V
aput-object v0, v13, v14
const/16 v14, 0x8
new-instance v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
const-wide v1, 0xc92a69c000L
const-wide v3, 0x8510489f5ed8000L
const-wide/high16 v5, -0x8000
const-wide v7, 0x7fffffffffffffffL
const-wide/32 v9, -0xad7959
const-wide/32 v11, 0x984ea5
invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V
aput-object v0, v13, v14
const/16 v14, 0x9
new-instance v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
const-wide/16 v1, 0xa
const-wide v3, 0x89f7ff5f7b58000L
const-wide v5, -0x7ffffffffffffffcL
const-wide v7, 0x7ffffffffffffffcL
const-wide v9, -0xda98ccbcbf88cccL
const-wide v11, 0xbf00ccdcda10cccL
invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V
aput-object v0, v13, v14
sput-object v13, Lcom/ibm/icu/util/UniversalTimeScale;->timeScaleTable:[Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static bigDecimalFrom(DI)Lcom/ibm/icu/math/BigDecimal;
.registers 9
invoke-static {p2}, Lcom/ibm/icu/util/UniversalTimeScale;->getTimeScaleData(I)Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
move-result-object v0
new-instance v2, Lcom/ibm/icu/math/BigDecimal;
invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v4}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V
new-instance v3, Lcom/ibm/icu/math/BigDecimal;
iget-wide v4, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->units:J
invoke-direct {v3, v4, v5}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V
new-instance v1, Lcom/ibm/icu/math/BigDecimal;
iget-wide v4, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J
invoke-direct {v1, v4, v5}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V
invoke-virtual {v2, v1}, Lcom/ibm/icu/math/BigDecimal;->add(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v4
invoke-virtual {v4, v3}, Lcom/ibm/icu/math/BigDecimal;->multiply(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v4
return-object v4
.end method
.method public static bigDecimalFrom(JI)Lcom/ibm/icu/math/BigDecimal;
.registers 9
invoke-static {p2}, Lcom/ibm/icu/util/UniversalTimeScale;->getTimeScaleData(I)Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
move-result-object v0
new-instance v2, Lcom/ibm/icu/math/BigDecimal;
invoke-direct {v2, p0, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V
new-instance v3, Lcom/ibm/icu/math/BigDecimal;
iget-wide v4, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->units:J
invoke-direct {v3, v4, v5}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V
new-instance v1, Lcom/ibm/icu/math/BigDecimal;
iget-wide v4, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J
invoke-direct {v1, v4, v5}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V
invoke-virtual {v2, v1}, Lcom/ibm/icu/math/BigDecimal;->add(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v4
invoke-virtual {v4, v3}, Lcom/ibm/icu/math/BigDecimal;->multiply(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v4
return-object v4
.end method
.method public static bigDecimalFrom(Lcom/ibm/icu/math/BigDecimal;I)Lcom/ibm/icu/math/BigDecimal;
.registers 7
invoke-static {p1}, Lcom/ibm/icu/util/UniversalTimeScale;->getTimeScaleData(I)Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
move-result-object v0
new-instance v2, Lcom/ibm/icu/math/BigDecimal;
iget-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->units:J
invoke-direct {v2, v3, v4}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V
new-instance v1, Lcom/ibm/icu/math/BigDecimal;
iget-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J
invoke-direct {v1, v3, v4}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V
invoke-virtual {p0, v1}, Lcom/ibm/icu/math/BigDecimal;->add(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v3
invoke-virtual {v3, v2}, Lcom/ibm/icu/math/BigDecimal;->multiply(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v3
return-object v3
.end method
.method public static from(JI)J
.registers 8
invoke-static {p0, p1, p2}, Lcom/ibm/icu/util/UniversalTimeScale;->fromRangeCheck(JI)Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
move-result-object v0
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J
add-long/2addr v1, p0
iget-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->units:J
mul-long/2addr v1, v3
return-wide v1
.end method
.method private static fromRangeCheck(JI)Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
.registers 7
invoke-static {p2}, Lcom/ibm/icu/util/UniversalTimeScale;->getTimeScaleData(I)Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
move-result-object v0
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->fromMin:J
cmp-long v1, p0, v1
if-ltz v1, :cond_11
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->fromMax:J
cmp-long v1, p0, v1
if-gtz v1, :cond_11
return-object v0
:cond_11
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "otherTime out of range:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method private static getTimeScaleData(I)Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
.registers 4
if-ltz p0, :cond_6
const/16 v0, 0xa
if-lt p0, v0, :cond_1f
:cond_6
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "scale out of range: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1f
sget-object v0, Lcom/ibm/icu/util/UniversalTimeScale;->timeScaleTable:[Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
aget-object v0, v0, p0
return-object v0
.end method
.method public static getTimeScaleValue(II)J
.registers 6
invoke-static {p0}, Lcom/ibm/icu/util/UniversalTimeScale;->getTimeScaleData(I)Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
move-result-object v0
packed-switch p1, :pswitch_data_42
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "value out of range: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:pswitch_20
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->units:J
:goto_22
return-wide v1
:pswitch_23
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J
goto :goto_22
:pswitch_26
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->fromMin:J
goto :goto_22
:pswitch_29
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->fromMax:J
goto :goto_22
:pswitch_2c
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->toMin:J
goto :goto_22
:pswitch_2f
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->toMax:J
goto :goto_22
:pswitch_32
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J
goto :goto_22
:pswitch_35
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J
goto :goto_22
:pswitch_38
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J
goto :goto_22
:pswitch_3b
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->minRound:J
goto :goto_22
:pswitch_3e
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->maxRound:J
goto :goto_22
nop
:pswitch_data_42
.packed-switch 0x0
:pswitch_20
:pswitch_23
:pswitch_26
:pswitch_29
:pswitch_2c
:pswitch_2f
:pswitch_32
:pswitch_35
:pswitch_38
:pswitch_3b
:pswitch_3e
.end packed-switch
.end method
.method public static toBigDecimal(JI)Lcom/ibm/icu/math/BigDecimal;
.registers 9
invoke-static {p2}, Lcom/ibm/icu/util/UniversalTimeScale;->getTimeScaleData(I)Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
move-result-object v0
new-instance v3, Lcom/ibm/icu/math/BigDecimal;
invoke-direct {v3, p0, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V
new-instance v2, Lcom/ibm/icu/math/BigDecimal;
iget-wide v4, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->units:J
invoke-direct {v2, v4, v5}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V
new-instance v1, Lcom/ibm/icu/math/BigDecimal;
iget-wide v4, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J
invoke-direct {v1, v4, v5}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V
const/4 v4, 0x4
invoke-virtual {v3, v2, v4}, Lcom/ibm/icu/math/BigDecimal;->divide(Lcom/ibm/icu/math/BigDecimal;I)Lcom/ibm/icu/math/BigDecimal;
move-result-object v4
invoke-virtual {v4, v1}, Lcom/ibm/icu/math/BigDecimal;->subtract(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v4
return-object v4
.end method
.method public static toBigDecimal(Lcom/ibm/icu/math/BigDecimal;I)Lcom/ibm/icu/math/BigDecimal;
.registers 7
invoke-static {p1}, Lcom/ibm/icu/util/UniversalTimeScale;->getTimeScaleData(I)Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
move-result-object v0
new-instance v2, Lcom/ibm/icu/math/BigDecimal;
iget-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->units:J
invoke-direct {v2, v3, v4}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V
new-instance v1, Lcom/ibm/icu/math/BigDecimal;
iget-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J
invoke-direct {v1, v3, v4}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V
const/4 v3, 0x4
invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/math/BigDecimal;->divide(Lcom/ibm/icu/math/BigDecimal;I)Lcom/ibm/icu/math/BigDecimal;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/ibm/icu/math/BigDecimal;->subtract(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v3
return-object v3
.end method
.method public static toBigDecimalTrunc(Lcom/ibm/icu/math/BigDecimal;I)Lcom/ibm/icu/math/BigDecimal;
.registers 7
invoke-static {p1}, Lcom/ibm/icu/util/UniversalTimeScale;->getTimeScaleData(I)Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
move-result-object v0
new-instance v2, Lcom/ibm/icu/math/BigDecimal;
iget-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->units:J
invoke-direct {v2, v3, v4}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V
new-instance v1, Lcom/ibm/icu/math/BigDecimal;
iget-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J
invoke-direct {v1, v3, v4}, Lcom/ibm/icu/math/BigDecimal;-><init>(J)V
const/4 v3, 0x1
invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/math/BigDecimal;->divide(Lcom/ibm/icu/math/BigDecimal;I)Lcom/ibm/icu/math/BigDecimal;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/ibm/icu/math/BigDecimal;->subtract(Lcom/ibm/icu/math/BigDecimal;)Lcom/ibm/icu/math/BigDecimal;
move-result-object v3
return-object v3
.end method
.method public static toLong(JI)J
.registers 8
invoke-static {p0, p1, p2}, Lcom/ibm/icu/util/UniversalTimeScale;->toRangeCheck(JI)Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
move-result-object v0
const-wide/16 v1, 0x0
cmp-long v1, p0, v1
if-gez v1, :cond_25
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->minRound:J
cmp-long v1, p0, v1
if-gez v1, :cond_1a
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J
add-long/2addr v1, p0
iget-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->units:J
div-long/2addr v1, v3
iget-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J
sub-long/2addr v1, v3
:goto_19
return-wide v1
:cond_1a
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J
sub-long v1, p0, v1
iget-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->units:J
div-long/2addr v1, v3
iget-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J
sub-long/2addr v1, v3
goto :goto_19
:cond_25
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->maxRound:J
cmp-long v1, p0, v1
if-lez v1, :cond_36
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J
sub-long v1, p0, v1
iget-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->units:J
div-long/2addr v1, v3
iget-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J
sub-long/2addr v1, v3
goto :goto_19
:cond_36
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J
add-long/2addr v1, p0
iget-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->units:J
div-long/2addr v1, v3
iget-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J
sub-long/2addr v1, v3
goto :goto_19
.end method
.method private static toRangeCheck(JI)Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
.registers 7
invoke-static {p2}, Lcom/ibm/icu/util/UniversalTimeScale;->getTimeScaleData(I)Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
move-result-object v0
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->toMin:J
cmp-long v1, p0, v1
if-ltz v1, :cond_11
iget-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->toMax:J
cmp-long v1, p0, v1
if-gtz v1, :cond_11
return-object v0
:cond_11
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "universalTime out of range:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
.end method