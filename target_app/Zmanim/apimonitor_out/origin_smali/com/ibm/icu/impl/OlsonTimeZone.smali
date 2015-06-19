.class public Lcom/ibm/icu/impl/OlsonTimeZone;
.super Lcom/ibm/icu/util/BasicTimeZone;
.source "OlsonTimeZone.java"


# static fields
.field private static final ASSERT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final UNSIGNED_BYTE_MASK:I = 0xff

.field static final serialVersionUID:J = -0x572e1120b9848270L


# instance fields
.field private finalMillis:D

.field private finalYear:I

.field private finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

.field private transient finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

.field private transient firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

.field private transient firstTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

.field private transient firstTZTransitionIdx:I

.field private transient historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

.field private transient initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

.field private transitionCount:I

.field private transient transitionRulesInitialized:Z

.field private transitionTimes:[I

.field private typeCount:I

.field private typeData:[B

.field private typeOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "olson"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/impl/OlsonTimeZone;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/ibm/icu/util/BasicTimeZone;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalYear:I

    const-wide v0, 0x7fefffffffffffffL

    iput-wide v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalMillis:D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->constructEmpty()V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)V
    .registers 5

    invoke-direct {p0}, Lcom/ibm/icu/util/BasicTimeZone;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalYear:I

    const-wide v0, 0x7fefffffffffffffL

    iput-wide v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalMillis:D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/OlsonTimeZone;->construct(Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Lcom/ibm/icu/util/BasicTimeZone;-><init>()V

    const v2, 0x7fffffff

    iput v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalYear:I

    const-wide v2, 0x7fefffffffffffffL

    iput-wide v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalMillis:D

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    const-string v2, "com/ibm/icu/impl/data/icudt42b"

    const-string v3, "zoneinfo"

    sget-object v4, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->openOlsonResource(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->construct(Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)V

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    :cond_2c
    invoke-super {p0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    return-void
.end method

.method private construct(Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)V
    .registers 24

    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_a
    sget-boolean v3, Lcom/ibm/icu/impl/OlsonTimeZone;->DEBUG:Z

    if-eqz v3, :cond_30

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OlsonTimeZone("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_30
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v20

    const/4 v3, 0x3

    move/from16 v0, v20

    move v1, v3

    if-lt v0, v1, :cond_40

    const/4 v3, 0x6

    move/from16 v0, v20

    move v1, v3

    if-le v0, v1, :cond_48

    :cond_40
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid Format"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_48
    const/4 v3, 0x0

    move-object/from16 v0, p2

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    move-object v3, v0

    array-length v3, v3

    if-ltz v3, :cond_6b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    move-object v3, v0

    array-length v3, v3

    const/16 v4, 0x7fff

    if-le v3, v4, :cond_73

    :cond_6b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid Format"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    move-object v3, v0

    array-length v3, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v3, 0x1

    move-object/from16 v0, p2

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    move-object v3, v0

    array-length v3, v3

    const/16 v4, 0x7ffe

    if-gt v3, v4, :cond_ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    move-object v3, v0

    array-length v3, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b4

    :cond_ac
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid Format"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    move-object v3, v0

    array-length v3, v3

    shr-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    const/4 v3, 0x2

    move-object/from16 v0, p2

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/util/UResourceBundle;->getBinary()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    move-object v3, v0

    array-length v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    move v4, v0

    if-eq v3, v4, :cond_eb

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid Format"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_eb
    const/4 v3, 0x5

    move/from16 v0, v20

    move v1, v3

    if-lt v0, v1, :cond_17e

    const/4 v3, 0x3

    move-object/from16 v0, p2

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v3, 0x4

    move-object/from16 v0, p2

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v17

    if-eqz v17, :cond_187

    move-object/from16 v0, v17

    array-length v0, v0

    move v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_187

    const/4 v3, 0x0

    aget v3, v17, v3

    mul-int/lit16 v4, v3, 0x3e8

    const/4 v3, 0x1

    aget v3, v17, v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalYear:I

    const/4 v3, 0x1

    aget v3, v17, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    mul-long/2addr v5, v7

    long-to-double v5, v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ibm/icu/impl/OlsonTimeZone;->finalMillis:D

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/OlsonTimeZone;->loadRule(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move v3, v0

    const/16 v5, 0xb

    if-ne v3, v5, :cond_17f

    new-instance v3, Lcom/ibm/icu/util/SimpleTimeZone;

    const-string v5, ""

    const/4 v6, 0x0

    aget v6, v17, v6

    const/4 v7, 0x1

    aget v7, v17, v7

    const/4 v8, 0x2

    aget v8, v17, v8

    const/4 v9, 0x3

    aget v9, v17, v9

    mul-int/lit16 v9, v9, 0x3e8

    const/4 v10, 0x4

    aget v10, v17, v10

    const/4 v11, 0x5

    aget v11, v17, v11

    const/4 v12, 0x6

    aget v12, v17, v12

    const/4 v13, 0x7

    aget v13, v17, v13

    const/16 v14, 0x8

    aget v14, v17, v14

    mul-int/lit16 v14, v14, 0x3e8

    const/16 v15, 0x9

    aget v15, v17, v15

    const/16 v16, 0xa

    aget v16, v17, v16

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    invoke-direct/range {v3 .. v16}, Lcom/ibm/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    :cond_17e
    return-void

    :cond_17f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid Format"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_187
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid Format"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private constructEmpty()V
    .registers 3

    const/4 v1, 0x2

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    new-array v0, v1, [I

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    return-void

    nop

    :array_16
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private dstOffset(I)I
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private getHistoricalOffset(JZII[I)V
    .registers 20

    iget v11, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-eqz v11, :cond_e8

    const-wide/16 v11, 0x3e8

    invoke-static {p1, p2, v11, v12}, Lcom/ibm/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v7

    const/4 v3, 0x0

    iget v11, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v12, 0x1

    sub-int v3, v11, v12

    :goto_10
    if-lez v3, :cond_7a

    iget-object v11, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    aget v10, v11, v3

    if-eqz p3, :cond_75

    iget-object v11, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    const/4 v12, 0x1

    sub-int v12, v3, v12

    aget-byte v11, v11, v12

    invoke-direct {p0, v11}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/ibm/icu/impl/OlsonTimeZone;->zoneOffset(I)I

    move-result v6

    iget-object v11, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    const/4 v12, 0x1

    sub-int v12, v3, v12

    aget-byte v11, v11, v12

    invoke-direct {p0, v11}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffset(I)I

    move-result v11

    if-eqz v11, :cond_95

    const/4 v11, 0x1

    move v1, v11

    :goto_3a
    iget-object v11, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    aget-byte v11, v11, v3

    invoke-direct {p0, v11}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/ibm/icu/impl/OlsonTimeZone;->zoneOffset(I)I

    move-result v5

    iget-object v11, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    aget-byte v11, v11, v3

    invoke-direct {p0, v11}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffset(I)I

    move-result v11

    if-eqz v11, :cond_98

    const/4 v11, 0x1

    move v0, v11

    :goto_56
    if-eqz v1, :cond_9b

    if-nez v0, :cond_9b

    const/4 v11, 0x1

    move v2, v11

    :goto_5c
    if-nez v1, :cond_9e

    if-eqz v0, :cond_9e

    const/4 v11, 0x1

    move v9, v11

    :goto_62
    sub-int v11, v5, v6

    if-ltz v11, :cond_bb

    and-int/lit8 v11, p4, 0x3

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6d

    if-nez v2, :cond_74

    :cond_6d
    and-int/lit8 v11, p4, 0x3

    const/4 v12, 0x3

    if-ne v11, v12, :cond_a1

    if-eqz v9, :cond_a1

    :cond_74
    add-int/2addr v10, v6

    :cond_75
    :goto_75
    int-to-long v11, v10

    cmp-long v11, v7, v11

    if-ltz v11, :cond_e4

    :cond_7a
    iget-object v11, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    aget-byte v11, v11, v3

    invoke-direct {p0, v11}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v4

    const/4 v11, 0x0

    invoke-direct {p0, v4}, Lcom/ibm/icu/impl/OlsonTimeZone;->rawOffset(I)I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    aput v12, p6, v11

    const/4 v11, 0x1

    invoke-direct {p0, v4}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffset(I)I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    aput v12, p6, v11

    :goto_94
    return-void

    :cond_95
    const/4 v11, 0x0

    move v1, v11

    goto :goto_3a

    :cond_98
    const/4 v11, 0x0

    move v0, v11

    goto :goto_56

    :cond_9b
    const/4 v11, 0x0

    move v2, v11

    goto :goto_5c

    :cond_9e
    const/4 v11, 0x0

    move v9, v11

    goto :goto_62

    :cond_a1
    and-int/lit8 v11, p4, 0x3

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a8

    if-nez v9, :cond_af

    :cond_a8
    and-int/lit8 v11, p4, 0x3

    const/4 v12, 0x3

    if-ne v11, v12, :cond_b1

    if-eqz v2, :cond_b1

    :cond_af
    add-int/2addr v10, v5

    goto :goto_75

    :cond_b1
    and-int/lit8 v11, p4, 0xc

    const/16 v12, 0xc

    if-ne v11, v12, :cond_b9

    add-int/2addr v10, v6

    goto :goto_75

    :cond_b9
    add-int/2addr v10, v5

    goto :goto_75

    :cond_bb
    and-int/lit8 v11, p5, 0x3

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c2

    if-nez v2, :cond_c9

    :cond_c2
    and-int/lit8 v11, p5, 0x3

    const/4 v12, 0x3

    if-ne v11, v12, :cond_cb

    if-eqz v9, :cond_cb

    :cond_c9
    add-int/2addr v10, v5

    goto :goto_75

    :cond_cb
    and-int/lit8 v11, p5, 0x3

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d2

    if-nez v9, :cond_d9

    :cond_d2
    and-int/lit8 v11, p5, 0x3

    const/4 v12, 0x3

    if-ne v11, v12, :cond_db

    if-eqz v2, :cond_db

    :cond_d9
    add-int/2addr v10, v6

    goto :goto_75

    :cond_db
    and-int/lit8 v11, p5, 0xc

    const/4 v12, 0x4

    if-ne v11, v12, :cond_e2

    add-int/2addr v10, v6

    goto :goto_75

    :cond_e2
    add-int/2addr v10, v5

    goto :goto_75

    :cond_e4
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_10

    :cond_e8
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/ibm/icu/impl/OlsonTimeZone;->rawOffset(I)I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    aput v12, p6, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffset(I)I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    aput v12, p6, v11

    goto :goto_94
.end method

.method private getInt(B)I
    .registers 3

    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private declared-synchronized initTransitionRules()V
    .registers 30

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    move v5, v0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_18b

    if-eqz v5, :cond_a

    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    const/4 v5, 0x0

    :try_start_b
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(STD)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(DST)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    move v5, v0

    if-lez v5, :cond_cd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    move-object v5, v0

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    move-object v5, v0

    mul-int/lit8 v6, v27, 0x2

    aget v5, v5, v6

    mul-int/lit16 v7, v5, 0x3e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    move-object v5, v0

    mul-int/lit8 v6, v27, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-int/lit16 v8, v5, 0x3e8

    new-instance v5, Lcom/ibm/icu/util/InitialTimeZoneRule;

    if-nez v8, :cond_18e

    move-object/from16 v6, v22

    :goto_90
    invoke-direct {v5, v6, v7, v8}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    const/16 v24, 0x1

    :goto_9a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    move v5, v0

    move/from16 v0, v24

    move v1, v5

    if-ge v0, v1, :cond_c3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    move-object v5, v0

    aget-byte v5, v5, v24

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v5

    move/from16 v0, v27

    move v1, v5

    if-eq v0, v1, :cond_192

    :cond_c3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    move v5, v0

    move/from16 v0, v24

    move v1, v5

    if-ne v0, v1, :cond_196

    :cond_cd
    :goto_cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    move-object v5, v0

    if-nez v5, :cond_f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    mul-int/lit16 v7, v5, 0x3e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    mul-int/lit16 v8, v5, 0x3e8

    new-instance v5, Lcom/ibm/icu/util/InitialTimeZoneRule;

    if-nez v8, :cond_286

    move-object/from16 v6, v22

    :goto_ee
    invoke-direct {v5, v6, v7, v8}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    move-object v5, v0

    if-eqz v5, :cond_183

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalMillis:D

    move-wide v5, v0

    move-wide v0, v5

    double-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v5

    if-eqz v5, :cond_28a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/util/SimpleTimeZone;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/util/SimpleTimeZone;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalYear:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartYear(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v5

    move-wide/from16 v1, v20

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/SimpleTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v10

    invoke-virtual/range {v28 .. v28}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v20

    :goto_146
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    move v5, v0

    if-lez v5, :cond_16b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    move v7, v0

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aget-byte v6, v6, v7

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v6

    aget-object v19, v5, v6

    :cond_16b
    if-nez v19, :cond_173

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    move-object/from16 v19, v0

    :cond_173
    new-instance v5, Lcom/ibm/icu/util/TimeZoneTransition;

    move-object v0, v5

    move-wide/from16 v1, v20

    move-object/from16 v3, v19

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    :cond_183
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z
    :try_end_189
    .catchall {:try_start_b .. :try_end_189} :catchall_18b

    goto/16 :goto_8

    :catchall_18b
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_18e
    move-object/from16 v6, v16

    goto/16 :goto_90

    :cond_192
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_9a

    :cond_196
    :try_start_196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    move v5, v0

    move v0, v5

    new-array v0, v0, [J

    move-object/from16 v23, v0

    const/16 v27, 0x0

    :goto_1a2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    move v5, v0

    move/from16 v0, v27

    move v1, v5

    if-ge v0, v1, :cond_24b

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    move/from16 v24, v0

    move/from16 v18, v17

    :goto_1b6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    move v5, v0

    move/from16 v0, v24

    move v1, v5

    if-ge v0, v1, :cond_1f5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    move-object v5, v0

    aget-byte v5, v5, v24

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v5

    move/from16 v0, v27

    move v1, v5

    if-ne v0, v1, :cond_2b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    move-object v5, v0

    aget v5, v5, v24

    int-to-long v5, v5

    const-wide/16 v9, 0x3e8

    mul-long v25, v5, v9

    move-wide/from16 v0, v25

    long-to-double v0, v0

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalMillis:D

    move-wide v9, v0

    cmpg-double v5, v5, v9

    if-gez v5, :cond_2b5

    add-int/lit8 v17, v18, 0x1

    aput-wide v25, v23, v18

    :goto_1f0
    add-int/lit8 v24, v24, 0x1

    move/from16 v18, v17

    goto :goto_1b6

    :cond_1f5
    if-lez v18, :cond_244

    move/from16 v0, v18

    new-array v0, v0, [J

    move-object v9, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    move v1, v5

    move-object v2, v9

    move v3, v6

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    move-object v5, v0

    mul-int/lit8 v6, v27, 0x2

    aget v5, v5, v6

    mul-int/lit16 v7, v5, 0x3e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    move-object v5, v0

    mul-int/lit8 v6, v27, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-int/lit16 v8, v5, 0x3e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    move-object v5, v0

    if-nez v5, :cond_233

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    move v5, v0

    new-array v5, v5, [Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    :cond_233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    move-object v11, v0

    new-instance v5, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    if-nez v8, :cond_248

    move-object/from16 v6, v22

    :goto_23e
    const/4 v10, 0x2

    invoke-direct/range {v5 .. v10}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    aput-object v5, v11, v27

    :cond_244
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1a2

    :cond_248
    move-object/from16 v6, v16

    goto :goto_23e

    :cond_24b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    move v6, v0

    aget-byte v5, v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v27

    new-instance v5, Lcom/ibm/icu/util/TimeZoneTransition;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    move v7, v0

    aget v6, v6, v7

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    move-object v9, v0

    aget-object v9, v9, v27

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    goto/16 :goto_cd

    :cond_286
    move-object/from16 v6, v16

    goto/16 :goto_ee

    :cond_28a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    new-instance v10, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v12

    const/4 v13, 0x0

    const/4 v5, 0x1

    new-array v14, v5, [J

    const/4 v5, 0x0

    aput-wide v20, v14, v5

    const/4 v15, 0x2

    invoke-direct/range {v10 .. v15}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V
    :try_end_2b3
    .catchall {:try_start_196 .. :try_end_2b3} :catchall_18b

    goto/16 :goto_146

    :cond_2b5
    move/from16 v17, v18

    goto/16 :goto_1f0
.end method

.method private static loadRule(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    .registers 4

    const-string v1, "Rules"

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method private rawOffset(I)I
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    shl-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private zoneOffset(I)I
    .registers 5

    shl-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    add-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/OlsonTimeZone;

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v1}, Lcom/ibm/icu/util/SimpleTimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/SimpleTimeZone;

    iput-object v1, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    :cond_1d
    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    iput-object v1, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    iget-object v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I

    iput-object p0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v4

    :goto_8
    return v2

    :cond_9
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/impl/OlsonTimeZone;

    move-object v1, v0

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    iget-object v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    iget v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalYear:I

    iget v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalYear:I

    if-ne v2, v3, :cond_63

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-nez v2, :cond_25

    iget-object v2, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_61

    :cond_25
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_63

    iget-object v2, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    iget-object v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/SimpleTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    iget v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v2, v3, :cond_63

    iget v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    iget v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    if-ne v2, v3, :cond_63

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    iget-object v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    iget-object v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    iget-object v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    :cond_61
    const/4 v2, 0x1

    goto :goto_8

    :cond_63
    move v2, v4

    goto :goto_8
.end method

.method public getDSTSavings()I
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->getDSTSavings()I

    move-result v0

    goto :goto_a
.end method

.method public getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .registers 15

    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initTransitionRules()V

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v7, :cond_31

    if-eqz p3, :cond_16

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v7}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v7

    cmp-long v7, p1, v7

    if-nez v7, :cond_16

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    :goto_15
    return-object v7

    :cond_16
    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v7}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v7

    cmp-long v7, p1, v7

    if-ltz v7, :cond_31

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v7}, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v7

    if-eqz v7, :cond_2f

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v7, p1, p2, p3}, Lcom/ibm/icu/util/SimpleTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v7

    goto :goto_15

    :cond_2f
    const/4 v7, 0x0

    goto :goto_15

    :cond_31
    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    if-eqz v7, :cond_b9

    iget v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v8, 0x1

    sub-int v6, v7, v8

    :goto_3a
    iget v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-lt v6, v7, :cond_51

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    aget v7, v7, v6

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long v3, v7, v9

    cmp-long v7, p1, v3

    if-gtz v7, :cond_51

    if-nez p3, :cond_5a

    cmp-long v7, p1, v3

    if-nez v7, :cond_5a

    :cond_51
    iget v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-ne v6, v7, :cond_5d

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    goto :goto_15

    :cond_5a
    add-int/lit8 v6, v6, -0x1

    goto :goto_3a

    :cond_5d
    iget v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-ge v6, v7, :cond_64

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    goto :goto_15

    :cond_64
    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    iget-object v8, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    add-int/lit8 v9, v6, 0x1

    aget-byte v8, v8, v9

    invoke-direct {p0, v8}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v8

    aget-object v5, v7, v8

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    iget-object v8, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    aget-byte v8, v8, v6

    invoke-direct {p0, v8}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v8

    aget-object v0, v7, v8

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    add-int/lit8 v8, v6, 0x1

    aget v7, v7, v8

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long v1, v7, v9

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b2

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v7

    invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v8

    if-ne v7, v8, :cond_b2

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v7

    invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    if-ne v7, v8, :cond_b2

    const/4 v7, 0x0

    invoke-virtual {p0, v1, v2, v7}, Lcom/ibm/icu/impl/OlsonTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v7

    goto/16 :goto_15

    :cond_b2
    new-instance v7, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-direct {v7, v1, v2, v0, v5}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    goto/16 :goto_15

    :cond_b9
    const/4 v7, 0x0

    goto/16 :goto_15
.end method

.method public getOffset(IIIIII)I
    .registers 15

    if-ltz p3, :cond_6

    const/16 v0, 0xb

    if-le p3, v0, :cond_1f

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Month is not in the legal range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/Grego;->monthLength(II)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/ibm/icu/impl/OlsonTimeZone;->getOffset(IIIIIII)I

    move-result v0

    return v0
.end method

.method public getOffset(IIIIIII)I
    .registers 15

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    if-nez p1, :cond_25

    :cond_5
    if-ltz p3, :cond_25

    const/16 v0, 0xb

    if-gt p3, v0, :cond_25

    const/4 v0, 0x1

    if-lt p4, v0, :cond_25

    if-gt p4, p7, :cond_25

    const/4 v0, 0x1

    if-lt p5, v0, :cond_25

    const/4 v0, 0x7

    if-gt p5, v0, :cond_25

    if-ltz p6, :cond_25

    const v0, 0x5265c00

    if-ge p6, v0, :cond_25

    const/16 v0, 0x1c

    if-lt p7, v0, :cond_25

    const/16 v0, 0x1f

    if-le p7, v0, :cond_2b

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2b
    if-nez p1, :cond_2e

    neg-int p2, p2

    :cond_2e
    iget v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalYear:I

    if-le p2, v0, :cond_3f

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v0

    :goto_3e
    return v0

    :cond_3f
    invoke-static {p2, p3, p4}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    int-to-long v5, p6

    add-long v1, v3, v5

    const/4 v0, 0x2

    new-array v6, v0, [I

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v1, 0x1

    aget v1, v6, v1

    add-int/2addr v0, v1

    goto :goto_3e
.end method

.method public getOffset(JZ[I)V
    .registers 12

    long-to-double v0, p1

    iget-wide v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalMillis:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(JZ[I)V

    :goto_10
    return-void

    :cond_11
    const/4 v4, 0x4

    const/16 v5, 0xc

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    goto :goto_10
.end method

.method public getOffsetFromLocal(JII[I)V
    .registers 13

    long-to-double v0, p1

    iget-wide v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalMillis:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_15

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffsetFromLocal(JII[I)V

    :goto_14
    return-void

    :cond_15
    const/4 v3, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    goto :goto_14
.end method

.method public getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .registers 15

    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initTransitionRules()V

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v7, :cond_32

    if-eqz p3, :cond_16

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v7}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v7

    cmp-long v7, p1, v7

    if-nez v7, :cond_16

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    :goto_15
    return-object v7

    :cond_16
    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v7}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v7

    cmp-long v7, p1, v7

    if-lez v7, :cond_32

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v7}, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v7

    if-eqz v7, :cond_2f

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v7, p1, p2, p3}, Lcom/ibm/icu/util/SimpleTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v7

    goto :goto_15

    :cond_2f
    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    goto :goto_15

    :cond_32
    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    if-eqz v7, :cond_b6

    iget v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v8, 0x1

    sub-int v6, v7, v8

    :goto_3b
    iget v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-lt v6, v7, :cond_52

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    aget v7, v7, v6

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long v3, v7, v9

    cmp-long v7, p1, v3

    if-gtz v7, :cond_52

    if-eqz p3, :cond_58

    cmp-long v7, p1, v3

    if-nez v7, :cond_58

    :cond_52
    iget v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-ge v6, v7, :cond_5b

    const/4 v7, 0x0

    goto :goto_15

    :cond_58
    add-int/lit8 v6, v6, -0x1

    goto :goto_3b

    :cond_5b
    iget v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-ne v6, v7, :cond_62

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->firstTZTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    goto :goto_15

    :cond_62
    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    iget-object v8, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    aget-byte v8, v8, v6

    invoke-direct {p0, v8}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v8

    aget-object v5, v7, v8

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    iget-object v8, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    const/4 v9, 0x1

    sub-int v9, v6, v9

    aget-byte v8, v8, v9

    invoke-direct {p0, v8}, Lcom/ibm/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v8

    aget-object v0, v7, v8

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    aget v7, v7, v6

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long v1, v7, v9

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_af

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v7

    invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v8

    if-ne v7, v8, :cond_af

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v7

    invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    if-ne v7, v8, :cond_af

    const/4 v7, 0x0

    invoke-virtual {p0, v1, v2, v7}, Lcom/ibm/icu/impl/OlsonTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v7

    goto/16 :goto_15

    :cond_af
    new-instance v7, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-direct {v7, v1, v2, v0, v5}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    goto/16 :goto_15

    :cond_b6
    const/4 v7, 0x0

    goto/16 :goto_15
.end method

.method public getRawOffset()I
    .registers 5

    const/4 v3, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getOffset(JZ[I)V

    aget v1, v0, v3

    return v1
.end method

.method public getTimeZoneRules()[Lcom/ibm/icu/util/TimeZoneRule;
    .registers 15

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->initTransitionRules()V

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    if-eqz v0, :cond_1c

    const/4 v6, 0x0

    :goto_c
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    array-length v0, v0

    if-ge v6, v0, :cond_1c

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    aget-object v0, v0, v6

    if-eqz v0, :cond_19

    add-int/lit8 v10, v10, 0x1

    :cond_19
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_1c
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_50

    add-int/lit8 v10, v10, 0x2

    :cond_2a
    :goto_2a
    new-array v9, v10, [Lcom/ibm/icu/util/TimeZoneRule;

    const/4 v7, 0x0

    add-int/lit8 v8, v7, 0x1

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    aput-object v0, v9, v7

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    if-eqz v0, :cond_53

    const/4 v6, 0x0

    move v7, v8

    :goto_39
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    array-length v0, v0

    if-ge v6, v0, :cond_54

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    aget-object v0, v0, v6

    if-eqz v0, :cond_4d

    add-int/lit8 v8, v7, 0x1

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->historicRules:[Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    aget-object v0, v0, v6

    aput-object v0, v9, v7

    move v7, v8

    :cond_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_50
    add-int/lit8 v10, v10, 0x1

    goto :goto_2a

    :cond_53
    move v7, v8

    :cond_54
    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/SimpleTimeZone;->getTimeZoneRules()[Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v11

    add-int/lit8 v8, v7, 0x1

    aget-object v0, v11, v4

    aput-object v0, v9, v7

    add-int/lit8 v7, v8, 0x1

    aget-object v0, v11, v5

    aput-object v0, v9, v8

    :cond_72
    :goto_72
    return-object v9

    :cond_73
    add-int/lit8 v8, v7, 0x1

    new-instance v0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(STD)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v2}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v2

    new-array v4, v4, [J

    iget-wide v12, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalMillis:D

    double-to-long v12, v12

    aput-wide v12, v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    aput-object v0, v9, v7

    move v7, v8

    goto :goto_72
.end method

.method public hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v4

    :goto_8
    return v2

    :cond_9
    instance-of v2, p1, Lcom/ibm/icu/impl/OlsonTimeZone;

    if-nez v2, :cond_f

    move v2, v4

    goto :goto_8

    :cond_f
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/impl/OlsonTimeZone;

    move-object v1, v0

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-nez v2, :cond_24

    iget-object v2, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_3a

    iget v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalYear:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_3a

    move v2, v4

    goto :goto_8

    :cond_24
    iget-object v2, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_38

    iget v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalYear:I

    iget v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalYear:I

    if-ne v2, v3, :cond_38

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    iget-object v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/SimpleTimeZone;->hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z

    move-result v2

    if-nez v2, :cond_3a

    :cond_38
    move v2, v4

    goto :goto_8

    :cond_3a
    iget v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    iget v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v2, v3, :cond_64

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    iget-object v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_64

    iget v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    iget v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    if-ne v2, v3, :cond_64

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    iget-object v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    iget-object v3, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_66

    :cond_64
    move v2, v4

    goto :goto_8

    :cond_66
    const/4 v2, 0x1

    goto :goto_8
.end method

.method public hashCode()I
    .registers 9

    iget v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalYear:I

    iget v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalYear:I

    ushr-int/lit8 v3, v3, 0x4

    iget v4, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/2addr v3, v4

    xor-int/2addr v2, v3

    iget v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    ushr-int/lit8 v3, v3, 0x6

    iget v4, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    add-int/2addr v3, v4

    xor-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    ushr-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalMillis:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-nez v6, :cond_43

    const/4 v6, 0x0

    :goto_24
    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->hashCode()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    const/4 v0, 0x0

    :goto_2f
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4a

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    aget v3, v3, v0

    ushr-int/lit8 v3, v3, 0x8

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_43
    iget-object v6, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v6}, Lcom/ibm/icu/util/SimpleTimeZone;->hashCode()I

    move-result v6

    goto :goto_24

    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5f

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v3, v3, v0

    ushr-int/lit8 v3, v3, 0x8

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_5f
    const/4 v0, 0x0

    :goto_60
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    array-length v2, v2

    if-ge v0, v2, :cond_6f

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    :cond_6f
    return v1
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getOffset(JZ[I)V

    aget v1, v0, v4

    if-eqz v1, :cond_12

    move v1, v4

    :goto_11
    return v1

    :cond_12
    move v1, v3

    goto :goto_11
.end method

.method public setID(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    :cond_9
    invoke-super {p0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    return-void
.end method

.method public setRawOffset(I)V
    .registers 25

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getRawOffset()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide v0, v6

    long-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalMillis:D

    move-wide/from16 v21, v0

    cmpg-double v19, v19, v21

    if-gez v19, :cond_16f

    new-instance v17, Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->useDaylightTime()Z

    move-result v5

    if-eqz v5, :cond_f2

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/OlsonTimeZone;->getSimpleTimeZoneRulesNear(J)[Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v8

    move-object v0, v8

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_62

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-wide v1, v6

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/OlsonTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v18

    if-eqz v18, :cond_62

    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v19

    const-wide/16 v21, 0x1

    sub-long v19, v19, v21

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/OlsonTimeZone;->getSimpleTimeZoneRulesNear(J)[Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v8

    :cond_62
    move-object v0, v8

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14b

    const/16 v19, 0x1

    aget-object v19, v8, v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move/from16 v19, v0

    if-eqz v19, :cond_14b

    const/16 v19, 0x2

    aget-object v19, v8, v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move/from16 v19, v0

    if-eqz v19, :cond_14b

    const/16 v19, 0x1

    aget-object v13, v8, v19

    check-cast v13, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/16 v19, 0x2

    aget-object v14, v8, v19

    check-cast v14, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v13}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v19

    invoke-virtual {v13}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v20

    add-int v11, v19, v20

    invoke-virtual {v14}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v19

    invoke-virtual {v14}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v20

    add-int v12, v19, v20

    if-le v11, v12, :cond_13f

    invoke-virtual {v13}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v16

    invoke-virtual {v14}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v9

    sub-int v15, v11, v12

    :goto_b2
    invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v19

    invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v20

    invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v21

    invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartRule(IIII)V

    invoke-virtual {v9}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v19

    invoke-virtual {v9}, Lcom/ibm/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v20

    invoke-virtual {v9}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v21

    invoke-virtual {v9}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/SimpleTimeZone;->setEndRule(IIII)V

    move-object/from16 v0, v17

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/SimpleTimeZone;->setDSTSavings(I)V

    :cond_f2
    :goto_f2
    const/16 v19, 0x0

    move-wide v0, v6

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v10

    const/16 v19, 0x0

    aget v19, v10, v19

    const/16 v20, 0x1

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalYear:I

    const/16 v19, 0x0

    aget v19, v10, v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ibm/icu/impl/OlsonTimeZone;->finalMillis:D

    if-eqz v5, :cond_12f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalYear:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartYear(I)V

    :cond_12f
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    :goto_135
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    goto/16 :goto_a

    :cond_13f
    invoke-virtual {v14}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v16

    invoke-virtual {v13}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v9

    sub-int v15, v12, v11

    goto/16 :goto_b2

    :cond_14b
    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartRule(III)V

    const/16 v19, 0xb

    const/16 v20, 0x1f

    const v21, 0x5265bff

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/SimpleTimeZone;->setEndRule(III)V

    goto :goto_f2

    :cond_16f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/SimpleTimeZone;->setRawOffset(I)V

    goto :goto_135
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const/16 v6, 0x2c

    const/16 v5, 0x5d

    const/16 v4, 0x5b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transitionCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",typeCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ",transitionTimes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    if-eqz v2, :cond_92

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_52
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6a

    if-lez v1, :cond_5c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5c
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    :cond_6a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6d
    const-string v2, ",typeOffsets="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    if-eqz v2, :cond_eb

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_7a
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v2, v2

    if-ge v1, v2, :cond_98

    if-lez v1, :cond_84

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_84
    iget-object v2, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    :cond_92
    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6d

    :cond_98
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_9b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",finalYear="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalYear:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",finalMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalMillis:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",finalZone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_eb
    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9b
.end method

.method public useDaylightTime()Z
    .registers 15

    const-wide/32 v12, 0x15180

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v0

    aget v6, v0, v10

    iget v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalYear:I

    if-le v6, v7, :cond_24

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    if-eqz v7, :cond_22

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->finalZone:Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v7}, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v7

    if-eqz v7, :cond_22

    move v7, v11

    :goto_21
    return v7

    :cond_22
    move v7, v10

    goto :goto_21

    :cond_24
    invoke-static {v6, v10, v11}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v7

    mul-long v4, v7, v12

    add-int/lit8 v7, v6, 0x1

    invoke-static {v7, v10, v11}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v7

    mul-long v2, v7, v12

    const/4 v1, 0x0

    :goto_33
    iget v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ge v1, v7, :cond_40

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    aget v7, v7, v1

    int-to-long v7, v7

    cmp-long v7, v7, v2

    if-ltz v7, :cond_42

    :cond_40
    move v7, v10

    goto :goto_21

    :cond_42
    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    aget v7, v7, v1

    int-to-long v7, v7

    cmp-long v7, v7, v4

    if-ltz v7, :cond_55

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    aget-byte v7, v7, v1

    invoke-direct {p0, v7}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffset(I)I

    move-result v7

    if-nez v7, :cond_6c

    :cond_55
    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->transitionTimes:[I

    aget v7, v7, v1

    int-to-long v7, v7

    cmp-long v7, v7, v4

    if-lez v7, :cond_6e

    if-lez v1, :cond_6e

    iget-object v7, p0, Lcom/ibm/icu/impl/OlsonTimeZone;->typeData:[B

    sub-int v8, v1, v11

    aget-byte v7, v7, v8

    invoke-direct {p0, v7}, Lcom/ibm/icu/impl/OlsonTimeZone;->dstOffset(I)I

    move-result v7

    if-eqz v7, :cond_6e

    :cond_6c
    move v7, v11

    goto :goto_21

    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_33
.end method
