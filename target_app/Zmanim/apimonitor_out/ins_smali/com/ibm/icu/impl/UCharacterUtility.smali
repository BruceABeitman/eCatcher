.class public final Lcom/ibm/icu/impl/UCharacterUtility;
.super Ljava/lang/Object;
.source "UCharacterUtility.java"
.field private static final NON_CHARACTER_MAX_3_1_:I = 0xfdef
.field private static final NON_CHARACTER_MIN_3_1_:I = 0xfdd0
.field private static final NON_CHARACTER_SUFFIX_MIN_3_0_:I = 0xfffe
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static compareNullTermByteSubString(Ljava/lang/String;[BII)I
.registers 8
const/4 v0, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
:goto_5
if-eqz v0, :cond_d
aget-byte v0, p1, p3
add-int/lit8 p3, p3, 0x1
if-nez v0, :cond_f
:cond_d
move v2, p2
:goto_e
return v2
:cond_f
if-eq p2, v1, :cond_1a
invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C
move-result v2
and-int/lit16 v3, v0, 0xff
int-to-char v3, v3
if-eq v2, v3, :cond_1c
:cond_1a
const/4 v2, -0x1
goto :goto_e
:cond_1c
add-int/lit8 p2, p2, 0x1
goto :goto_5
.end method
.method static getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I
.registers 5
const/4 v0, 0x1
:goto_1
if-eqz v0, :cond_10
aget-byte v0, p1, p2
if-eqz v0, :cond_d
and-int/lit16 v1, v0, 0xff
int-to-char v1, v1
invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_d
add-int/lit8 p2, p2, 0x1
goto :goto_1
:cond_10
return p2
.end method
.method public static isNonCharacter(I)Z
.registers 4
const v2, 0xfffe
const/4 v1, 0x1
and-int v0, p0, v2
if-ne v0, v2, :cond_a
move v0, v1
:goto_9
return v0
:cond_a
const v0, 0xfdd0
if-lt p0, v0, :cond_16
const v0, 0xfdef
if-gt p0, v0, :cond_16
move v0, v1
goto :goto_9
:cond_16
const/4 v0, 0x0
goto :goto_9
.end method
.method static skipByteSubString([BIIB)I
.registers 7
const/4 v1, 0x0
:goto_1
if-ge v1, p2, :cond_b
add-int v2, p1, v1
aget-byte v0, p0, v2
if-ne v0, p3, :cond_c
add-int/lit8 v1, v1, 0x1
:cond_b
return v1
:cond_c
add-int/lit8 v1, v1, 0x1
goto :goto_1
.end method
.method static skipNullTermByteSubString([BII)I
.registers 5
const/4 v1, 0x0
:goto_1
if-ge v1, p2, :cond_e
const/4 v0, 0x1
:goto_4
if-eqz v0, :cond_b
aget-byte v0, p0, p1
add-int/lit8 p1, p1, 0x1
goto :goto_4
:cond_b
add-int/lit8 v1, v1, 0x1
goto :goto_1
:cond_e
return p1
.end method
.method static toInt(CC)I
.registers 3
shl-int/lit8 v0, p0, 0x10
or-int/2addr v0, p1
return v0
.end method