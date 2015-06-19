.class public Lcom/ibm/icu/impl/BOCU;
.super Ljava/lang/Object;
.source "BOCU.java"
.field private static final SLOPE_LEAD_2_:I = 0x2a
.field private static final SLOPE_LEAD_3_:I = 0x3
.field private static final SLOPE_MAX_:I = 0xff
.field private static final SLOPE_MIDDLE_:I = 0x81
.field private static final SLOPE_MIN_:I = 0x3
.field private static final SLOPE_REACH_NEG_1_:I = -0x50
.field private static final SLOPE_REACH_NEG_2_:I = -0x29ac
.field private static final SLOPE_REACH_NEG_3_:I = -0x2f112
.field private static final SLOPE_REACH_POS_1_:I = 0x50
.field private static final SLOPE_REACH_POS_2_:I = 0x29ab
.field private static final SLOPE_REACH_POS_3_:I = 0x2f111
.field private static final SLOPE_SINGLE_:I = 0x50
.field private static final SLOPE_START_NEG_2_:I = 0x31
.field private static final SLOPE_START_NEG_3_:I = 0x7
.field private static final SLOPE_START_POS_2_:I = 0xd2
.field private static final SLOPE_START_POS_3_:I = 0xfc
.field private static final SLOPE_TAIL_COUNT_:I = 0xfd
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static compress(Ljava/lang/String;[BI)I
.registers 8
const/4 v2, 0x0
invoke-static {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/UCharacterIterator;
move-result-object v1
invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I
move-result v0
:goto_9
const/4 v3, -0x1
if-eq v0, v3, :cond_2a
const/16 v3, 0x4e00
if-lt v2, v3, :cond_15
const v3, 0xa000
if-lt v2, v3, :cond_27
:cond_15
and-int/lit8 v3, v2, -0x80
const/16 v4, -0x50
sub-int v2, v3, v4
:goto_1b
sub-int v3, v0, v2
invoke-static {v3, p1, p2}, Lcom/ibm/icu/impl/BOCU;->writeDiff(I[BI)I
move-result p2
move v2, v0
invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I
move-result v0
goto :goto_9
:cond_27
const/16 v2, 0x7654
goto :goto_1b
:cond_2a
return p2
.end method
.method public static getCompressionLength(Ljava/lang/String;)I
.registers 7
const/4 v2, 0x0
const/4 v3, 0x0
invoke-static {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/UCharacterIterator;
move-result-object v1
invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I
move-result v0
:goto_a
const/4 v4, -0x1
if-eq v0, v4, :cond_2c
const/16 v4, 0x4e00
if-lt v2, v4, :cond_16
const v4, 0xa000
if-lt v2, v4, :cond_29
:cond_16
and-int/lit8 v4, v2, -0x80
const/16 v5, -0x50
sub-int v2, v4, v5
:goto_1c
invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I
move-result v0
sub-int v4, v0, v2
invoke-static {v4}, Lcom/ibm/icu/impl/BOCU;->lengthOfDiff(I)I
move-result v4
add-int/2addr v3, v4
move v2, v0
goto :goto_a
:cond_29
const/16 v2, 0x7654
goto :goto_1c
:cond_2c
return v3
.end method
.method private static final getNegDivMod(II)J
.registers 9
rem-int v0, p0, p1
div-int v3, p0, p1
int-to-long v1, v3
if-gez v0, :cond_b
const-wide/16 v3, 0x1
sub-long/2addr v1, v3
add-int/2addr v0, p1
:cond_b
const/16 v3, 0x20
shl-long v3, v1, v3
int-to-long v5, v0
or-long/2addr v3, v5
return-wide v3
.end method
.method private static final lengthOfDiff(I)I
.registers 5
const/4 v3, 0x4
const/4 v2, 0x3
const/4 v1, 0x2
const/16 v0, -0x50
if-lt p0, v0, :cond_1c
const/16 v0, 0x50
if-gt p0, v0, :cond_d
const/4 v0, 0x1
:goto_c
return v0
:cond_d
const/16 v0, 0x29ab
if-gt p0, v0, :cond_13
move v0, v1
goto :goto_c
:cond_13
const v0, 0x2f111
if-gt p0, v0, :cond_1a
move v0, v2
goto :goto_c
:cond_1a
move v0, v3
goto :goto_c
:cond_1c
const/16 v0, -0x29ac
if-lt p0, v0, :cond_22
move v0, v1
goto :goto_c
:cond_22
const v0, -0x2f112
if-lt p0, v0, :cond_29
move v0, v2
goto :goto_c
:cond_29
move v0, v3
goto :goto_c
.end method
.method private static final writeDiff(I[BI)I
.registers 11
const/16 v7, 0xfd
const/16 v6, 0x20
const/16 v4, -0x50
if-lt p0, v4, :cond_72
const/16 v4, 0x50
if-gt p0, v4, :cond_15
add-int/lit8 v3, p2, 0x1
add-int/lit16 v4, p0, 0x81
int-to-byte v4, v4
aput-byte v4, p1, p2
move p2, v3
:goto_14
return p2
:cond_15
const/16 v4, 0x29ab
if-gt p0, v4, :cond_2c
add-int/lit8 v3, p2, 0x1
div-int/lit16 v4, p0, 0xfd
add-int/lit16 v4, v4, 0xd2
int-to-byte v4, v4
aput-byte v4, p1, p2
add-int/lit8 p2, v3, 0x1
rem-int/lit16 v4, p0, 0xfd
add-int/lit8 v4, v4, 0x3
int-to-byte v4, v4
aput-byte v4, p1, v3
goto :goto_14
:cond_2c
const v4, 0x2f111
if-gt p0, v4, :cond_4f
add-int/lit8 v4, p2, 0x2
rem-int/lit16 v5, p0, 0xfd
add-int/lit8 v5, v5, 0x3
int-to-byte v5, v5
aput-byte v5, p1, v4
div-int/lit16 p0, p0, 0xfd
add-int/lit8 v4, p2, 0x1
rem-int/lit16 v5, p0, 0xfd
add-int/lit8 v5, v5, 0x3
int-to-byte v5, v5
aput-byte v5, p1, v4
div-int/lit16 v4, p0, 0xfd
add-int/lit16 v4, v4, 0xfc
int-to-byte v4, v4
aput-byte v4, p1, p2
add-int/lit8 p2, p2, 0x3
goto :goto_14
:cond_4f
add-int/lit8 v4, p2, 0x3
rem-int/lit16 v5, p0, 0xfd
add-int/lit8 v5, v5, 0x3
int-to-byte v5, v5
aput-byte v5, p1, v4
div-int/lit16 p0, p0, 0xfd
rem-int/lit16 v4, p0, 0xfd
add-int/lit8 v4, v4, 0x3
int-to-byte v4, v4
aput-byte v4, p1, p2
div-int/lit16 p0, p0, 0xfd
add-int/lit8 v4, p2, 0x1
rem-int/lit16 v5, p0, 0xfd
add-int/lit8 v5, v5, 0x3
int-to-byte v5, v5
aput-byte v5, p1, v4
const/4 v4, -0x1
aput-byte v4, p1, p2
add-int/lit8 p2, p2, 0x4
goto :goto_14
:cond_72
invoke-static {p0, v7}, Lcom/ibm/icu/impl/BOCU;->getNegDivMod(II)J
move-result-wide v0
long-to-int v2, v0
const/16 v4, -0x29ac
if-lt p0, v4, :cond_8d
shr-long v4, v0, v6
long-to-int p0, v4
add-int/lit8 v3, p2, 0x1
add-int/lit8 v4, p0, 0x31
int-to-byte v4, v4
aput-byte v4, p1, p2
add-int/lit8 p2, v3, 0x1
add-int/lit8 v4, v2, 0x3
int-to-byte v4, v4
aput-byte v4, p1, v3
goto :goto_14
:cond_8d
const v4, -0x2f112
if-lt p0, v4, :cond_b4
add-int/lit8 v4, p2, 0x2
add-int/lit8 v5, v2, 0x3
int-to-byte v5, v5
aput-byte v5, p1, v4
shr-long v4, v0, v6
long-to-int p0, v4
invoke-static {p0, v7}, Lcom/ibm/icu/impl/BOCU;->getNegDivMod(II)J
move-result-wide v0
long-to-int v2, v0
shr-long v4, v0, v6
long-to-int p0, v4
add-int/lit8 v4, p2, 0x1
add-int/lit8 v5, v2, 0x3
int-to-byte v5, v5
aput-byte v5, p1, v4
add-int/lit8 v4, p0, 0x7
int-to-byte v4, v4
aput-byte v4, p1, p2
add-int/lit8 p2, p2, 0x3
goto/16 :goto_14
:cond_b4
add-int/lit8 v4, p2, 0x3
add-int/lit8 v5, v2, 0x3
int-to-byte v5, v5
aput-byte v5, p1, v4
shr-long v4, v0, v6
long-to-int p0, v4
invoke-static {p0, v7}, Lcom/ibm/icu/impl/BOCU;->getNegDivMod(II)J
move-result-wide v0
long-to-int v2, v0
shr-long v4, v0, v6
long-to-int p0, v4
add-int/lit8 v4, p2, 0x2
add-int/lit8 v5, v2, 0x3
int-to-byte v5, v5
aput-byte v5, p1, v4
invoke-static {p0, v7}, Lcom/ibm/icu/impl/BOCU;->getNegDivMod(II)J
move-result-wide v0
long-to-int v2, v0
add-int/lit8 v4, p2, 0x1
add-int/lit8 v5, v2, 0x3
int-to-byte v5, v5
aput-byte v5, p1, v4
const/4 v4, 0x3
aput-byte v4, p1, p2
add-int/lit8 p2, p2, 0x4
goto/16 :goto_14
.end method