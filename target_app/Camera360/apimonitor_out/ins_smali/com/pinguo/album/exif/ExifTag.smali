.class public Lcom/pinguo/album/exif/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"
.field private static final LONG_MAX:J = 0x7fffffffL
.field private static final LONG_MIN:J = -0x80000000L
.field static final SIZE_UNDEFINED:I = 0x0
.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat; = null
.field public static final TYPE_ASCII:S = 0x2s
.field public static final TYPE_LONG:S = 0x9s
.field public static final TYPE_RATIONAL:S = 0xas
.field private static final TYPE_TO_SIZE_MAP:[I = null
.field public static final TYPE_UNDEFINED:S = 0x7s
.field public static final TYPE_UNSIGNED_BYTE:S = 0x1s
.field public static final TYPE_UNSIGNED_LONG:S = 0x4s
.field public static final TYPE_UNSIGNED_RATIONAL:S = 0x5s
.field public static final TYPE_UNSIGNED_SHORT:S = 0x3s
.field private static final UNSIGNED_LONG_MAX:J = 0xffffffffL
.field private static final UNSIGNED_SHORT_MAX:I = 0xffff
.field private static US_ASCII:Ljava/nio/charset/Charset;
.field private mComponentCountActual:I
.field private final mDataType:S
.field private mHasDefinedDefaultComponentCount:Z
.field private mIfd:I
.field private mOffset:I
.field private final mTagId:S
.field private mValue:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 6
const/16 v5, 0x8
const/4 v4, 0x2
const/4 v3, 0x4
const/4 v2, 0x1
const-string/jumbo v0, "US-ASCII"
invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
sput-object v0, Lcom/pinguo/album/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;
const/16 v0, 0xb
new-array v0, v0, [I
sput-object v0, Lcom/pinguo/album/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I
sget-object v0, Lcom/pinguo/album/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I
aput v2, v0, v2
sget-object v0, Lcom/pinguo/album/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I
aput v2, v0, v4
sget-object v0, Lcom/pinguo/album/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I
const/4 v1, 0x3
aput v4, v0, v1
sget-object v0, Lcom/pinguo/album/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I
aput v3, v0, v3
sget-object v0, Lcom/pinguo/album/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I
const/4 v1, 0x5
aput v5, v0, v1
sget-object v0, Lcom/pinguo/album/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I
const/4 v1, 0x7
aput v2, v0, v1
sget-object v0, Lcom/pinguo/album/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I
const/16 v1, 0x9
aput v3, v0, v1
sget-object v0, Lcom/pinguo/album/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I
const/16 v1, 0xa
aput v5, v0, v1
new-instance v0, Ljava/text/SimpleDateFormat;
const-string/jumbo v1, "yyyy:MM:dd kk:mm:ss"
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/pinguo/album/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;
return-void
.end method
.method constructor <init>(SSIIZ)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-short p1, p0, Lcom/pinguo/album/exif/ExifTag;->mTagId:S
iput-short p2, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
iput p3, p0, Lcom/pinguo/album/exif/ExifTag;->mComponentCountActual:I
iput-boolean p5, p0, Lcom/pinguo/album/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z
iput p4, p0, Lcom/pinguo/album/exif/ExifTag;->mIfd:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
return-void
.end method
.method private checkBadComponentCount(I)Z
.registers 3
iget-boolean v0, p0, Lcom/pinguo/album/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z
if-eqz v0, :cond_a
iget v0, p0, Lcom/pinguo/album/exif/ExifTag;->mComponentCountActual:I
if-eq v0, p1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private checkOverflowForRational([Lcom/pinguo/album/exif/Rational;)Z
.registers 12
const-wide/32 v8, 0x7fffffff
const-wide/32 v6, -0x80000000
const/4 v1, 0x0
array-length v3, p1
move v2, v1
:goto_9
if-lt v2, v3, :cond_c
:goto_b
return v1
:cond_c
aget-object v0, p1, v2
invoke-virtual {v0}, Lcom/pinguo/album/exif/Rational;->getNumerator()J
move-result-wide v4
cmp-long v4, v4, v6
if-ltz v4, :cond_2e
invoke-virtual {v0}, Lcom/pinguo/album/exif/Rational;->getDenominator()J
move-result-wide v4
cmp-long v4, v4, v6
if-ltz v4, :cond_2e
invoke-virtual {v0}, Lcom/pinguo/album/exif/Rational;->getNumerator()J
move-result-wide v4
cmp-long v4, v4, v8
if-gtz v4, :cond_2e
invoke-virtual {v0}, Lcom/pinguo/album/exif/Rational;->getDenominator()J
move-result-wide v4
cmp-long v4, v4, v8
if-lez v4, :cond_30
:cond_2e
const/4 v1, 0x1
goto :goto_b
:cond_30
add-int/lit8 v2, v2, 0x1
goto :goto_9
.end method
.method private checkOverflowForUnsignedLong([I)Z
.registers 6
const/4 v1, 0x0
array-length v3, p1
move v2, v1
:goto_3
if-lt v2, v3, :cond_6
:goto_5
return v1
:cond_6
aget v0, p1, v2
if-gez v0, :cond_c
const/4 v1, 0x1
goto :goto_5
:cond_c
add-int/lit8 v2, v2, 0x1
goto :goto_3
.end method
.method private checkOverflowForUnsignedLong([J)Z
.registers 9
const/4 v2, 0x0
array-length v4, p1
move v3, v2
:goto_3
if-lt v3, v4, :cond_6
:goto_5
return v2
:cond_6
aget-wide v0, p1, v3
const-wide/16 v5, 0x0
cmp-long v5, v0, v5
if-ltz v5, :cond_17
const-wide v5, 0xffffffffL
cmp-long v5, v0, v5
if-lez v5, :cond_19
:cond_17
const/4 v2, 0x1
goto :goto_5
:cond_19
add-int/lit8 v3, v3, 0x1
goto :goto_3
.end method
.method private checkOverflowForUnsignedRational([Lcom/pinguo/album/exif/Rational;)Z
.registers 12
const-wide v8, 0xffffffffL
const-wide/16 v6, 0x0
const/4 v1, 0x0
array-length v3, p1
move v2, v1
:goto_a
if-lt v2, v3, :cond_d
:goto_c
return v1
:cond_d
aget-object v0, p1, v2
invoke-virtual {v0}, Lcom/pinguo/album/exif/Rational;->getNumerator()J
move-result-wide v4
cmp-long v4, v4, v6
if-ltz v4, :cond_2f
invoke-virtual {v0}, Lcom/pinguo/album/exif/Rational;->getDenominator()J
move-result-wide v4
cmp-long v4, v4, v6
if-ltz v4, :cond_2f
invoke-virtual {v0}, Lcom/pinguo/album/exif/Rational;->getNumerator()J
move-result-wide v4
cmp-long v4, v4, v8
if-gtz v4, :cond_2f
invoke-virtual {v0}, Lcom/pinguo/album/exif/Rational;->getDenominator()J
move-result-wide v4
cmp-long v4, v4, v8
if-lez v4, :cond_31
:cond_2f
const/4 v1, 0x1
goto :goto_c
:cond_31
add-int/lit8 v2, v2, 0x1
goto :goto_a
.end method
.method private checkOverflowForUnsignedShort([I)Z
.registers 7
const/4 v1, 0x0
array-length v3, p1
move v2, v1
:goto_3
if-lt v2, v3, :cond_6
:goto_5
return v1
:cond_6
aget v0, p1, v2
const v4, 0xffff
if-gt v0, v4, :cond_f
if-gez v0, :cond_11
:cond_f
const/4 v1, 0x1
goto :goto_5
:cond_11
add-int/lit8 v2, v2, 0x1
goto :goto_3
.end method
.method private static convertTypeToString(S)Ljava/lang/String;
.registers 2
packed-switch p0, :pswitch_data_28
:pswitch_3
const-string/jumbo v0, ""
:goto_6
return-object v0
:pswitch_7
const-string/jumbo v0, "UNSIGNED_BYTE"
goto :goto_6
:pswitch_b
const-string/jumbo v0, "ASCII"
goto :goto_6
:pswitch_f
const-string/jumbo v0, "UNSIGNED_SHORT"
goto :goto_6
:pswitch_13
const-string/jumbo v0, "UNSIGNED_LONG"
goto :goto_6
:pswitch_17
const-string/jumbo v0, "UNSIGNED_RATIONAL"
goto :goto_6
:pswitch_1b
const-string/jumbo v0, "UNDEFINED"
goto :goto_6
:pswitch_1f
const-string/jumbo v0, "LONG"
goto :goto_6
:pswitch_23
const-string/jumbo v0, "RATIONAL"
goto :goto_6
nop
:pswitch_data_28
.packed-switch 0x1
:pswitch_7
:pswitch_b
:pswitch_f
:pswitch_13
:pswitch_17
:pswitch_3
:pswitch_1b
:pswitch_3
:pswitch_1f
:pswitch_23
.end packed-switch
.end method
.method public static getElementSize(S)I
.registers 2
sget-object v0, Lcom/pinguo/album/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I
aget v0, v0, p0
return v0
.end method
.method public static isValidIfd(I)Z
.registers 3
const/4 v0, 0x1
if-eqz p0, :cond_f
if-eq p0, v0, :cond_f
const/4 v1, 0x2
if-eq p0, v1, :cond_f
const/4 v1, 0x3
if-eq p0, v1, :cond_f
const/4 v1, 0x4
if-eq p0, v1, :cond_f
const/4 v0, 0x0
:cond_f
return v0
.end method
.method public static isValidType(S)Z
.registers 3
const/4 v0, 0x1
if-eq p0, v0, :cond_1b
const/4 v1, 0x2
if-eq p0, v1, :cond_1b
const/4 v1, 0x3
if-eq p0, v1, :cond_1b
const/4 v1, 0x4
if-eq p0, v1, :cond_1b
const/4 v1, 0x5
if-eq p0, v1, :cond_1b
const/4 v1, 0x7
if-eq p0, v1, :cond_1b
const/16 v1, 0x9
if-eq p0, v1, :cond_1b
const/16 v1, 0xa
if-eq p0, v1, :cond_1b
const/4 v0, 0x0
:cond_1b
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x0
if-nez p1, :cond_4
:goto_3
:cond_3
return v1
:cond_4
instance-of v2, p1, Lcom/pinguo/album/exif/ExifTag;
if-eqz v2, :cond_3
move-object v0, p1
check-cast v0, Lcom/pinguo/album/exif/ExifTag;
iget-short v2, v0, Lcom/pinguo/album/exif/ExifTag;->mTagId:S
iget-short v3, p0, Lcom/pinguo/album/exif/ExifTag;->mTagId:S
if-ne v2, v3, :cond_3
iget v2, v0, Lcom/pinguo/album/exif/ExifTag;->mComponentCountActual:I
iget v3, p0, Lcom/pinguo/album/exif/ExifTag;->mComponentCountActual:I
if-ne v2, v3, :cond_3
iget-short v2, v0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
iget-short v3, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
if-ne v2, v3, :cond_3
iget-object v2, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
if-eqz v2, :cond_79
iget-object v2, v0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
if-eqz v2, :cond_3
iget-object v2, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
instance-of v2, v2, [J
if-eqz v2, :cond_3e
iget-object v2, v0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
instance-of v2, v2, [J
if-eqz v2, :cond_3
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v1, [J
iget-object v2, v0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v2, [J
invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z
move-result v1
goto :goto_3
:cond_3e
iget-object v2, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
instance-of v2, v2, [Lcom/pinguo/album/exif/Rational;
if-eqz v2, :cond_57
iget-object v2, v0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
instance-of v2, v2, [Lcom/pinguo/album/exif/Rational;
if-eqz v2, :cond_3
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v1, [Lcom/pinguo/album/exif/Rational;
iget-object v2, v0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v2, [Lcom/pinguo/album/exif/Rational;
invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v1
goto :goto_3
:cond_57
iget-object v2, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
instance-of v2, v2, [B
if-eqz v2, :cond_70
iget-object v2, v0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
instance-of v2, v2, [B
if-eqz v2, :cond_3
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v1, [B
iget-object v2, v0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v2, [B
invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z
move-result v1
goto :goto_3
:cond_70
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
iget-object v2, v0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
goto :goto_3
:cond_79
iget-object v2, v0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
if-nez v2, :cond_3
const/4 v1, 0x1
goto :goto_3
.end method
.method public forceGetValueAsLong(J)J
.registers 11
const/4 v4, 0x1
const/4 v7, 0x0
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->getValueAsLongs()[J
move-result-object v1
if-eqz v1, :cond_e
array-length v3, v1
if-lt v3, v4, :cond_e
aget-wide p1, v1, v7
:goto_d
:cond_d
return-wide p1
:cond_e
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->getValueAsBytes()[B
move-result-object v0
if-eqz v0, :cond_1b
array-length v3, v0
if-lt v3, v4, :cond_1b
aget-byte v3, v0, v7
int-to-long p1, v3
goto :goto_d
:cond_1b
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->getValueAsRationals()[Lcom/pinguo/album/exif/Rational;
move-result-object v2
if-eqz v2, :cond_d
array-length v3, v2
if-lt v3, v4, :cond_d
aget-object v3, v2, v7
invoke-virtual {v3}, Lcom/pinguo/album/exif/Rational;->getDenominator()J
move-result-wide v3
const-wide/16 v5, 0x0
cmp-long v3, v3, v5
if-eqz v3, :cond_d
aget-object v3, v2, v7
invoke-virtual {v3}, Lcom/pinguo/album/exif/Rational;->toDouble()D
move-result-wide v3
double-to-long p1, v3
goto :goto_d
.end method
.method public forceGetValueAsString()Ljava/lang/String;
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
if-nez v1, :cond_a
const-string/jumbo v1, ""
:goto_9
return-object v1
:cond_a
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
instance-of v1, v1, [B
if-eqz v1, :cond_2b
iget-short v1, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
const/4 v2, 0x2
if-ne v1, v2, :cond_22
new-instance v2, Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v1, [B
sget-object v3, Lcom/pinguo/album/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;
invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
move-object v1, v2
goto :goto_9
:cond_22
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v1, [B
invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;
move-result-object v1
goto :goto_9
:cond_2b
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
instance-of v1, v1, [J
if-eqz v1, :cond_4c
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v1, [J
array-length v1, v1
if-ne v1, v3, :cond_43
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v1, [J
aget-wide v1, v1, v2
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
goto :goto_9
:cond_43
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v1, [J
invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;
move-result-object v1
goto :goto_9
:cond_4c
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
instance-of v1, v1, [Ljava/lang/Object;
if-eqz v1, :cond_73
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v1, [Ljava/lang/Object;
array-length v1, v1
if-ne v1, v3, :cond_6a
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v1, [Ljava/lang/Object;
aget-object v0, v1, v2
if-nez v0, :cond_65
const-string/jumbo v1, ""
goto :goto_9
:cond_65
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_9
:cond_6a
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v1, [Ljava/lang/Object;
invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_9
:cond_73
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_9
.end method
.method protected forceSetComponentCount(I)V
.registers 2
iput p1, p0, Lcom/pinguo/album/exif/ExifTag;->mComponentCountActual:I
return-void
.end method
.method protected getBytes([B)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lcom/pinguo/album/exif/ExifTag;->getBytes([BII)V
return-void
.end method
.method protected getBytes([BII)V
.registers 7
iget-short v0, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
const/4 v1, 0x7
if-eq v0, v1, :cond_26
iget-short v0, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
const/4 v1, 0x1
if-eq v0, v1, :cond_26
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Cannot get BYTE value from "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-short v2, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
invoke-static {v2}, Lcom/pinguo/album/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_26
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
const/4 v1, 0x0
iget v2, p0, Lcom/pinguo/album/exif/ExifTag;->mComponentCountActual:I
if-le p3, v2, :cond_2f
iget p3, p0, Lcom/pinguo/album/exif/ExifTag;->mComponentCountActual:I
:cond_2f
invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method public getComponentCount()I
.registers 2
iget v0, p0, Lcom/pinguo/album/exif/ExifTag;->mComponentCountActual:I
return v0
.end method
.method public getDataSize()I
.registers 3
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v0
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->getDataType()S
move-result v1
invoke-static {v1}, Lcom/pinguo/album/exif/ExifTag;->getElementSize(S)I
move-result v1
mul-int/2addr v0, v1
return v0
.end method
.method public getDataType()S
.registers 2
iget-short v0, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
return v0
.end method
.method public getIfd()I
.registers 2
iget v0, p0, Lcom/pinguo/album/exif/ExifTag;->mIfd:I
return v0
.end method
.method protected getOffset()I
.registers 2
iget v0, p0, Lcom/pinguo/album/exif/ExifTag;->mOffset:I
return v0
.end method
.method protected getRational(I)Lcom/pinguo/album/exif/Rational;
.registers 5
iget-short v0, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
const/16 v1, 0xa
if-eq v0, v1, :cond_27
iget-short v0, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
const/4 v1, 0x5
if-eq v0, v1, :cond_27
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Cannot get RATIONAL value from "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-short v2, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
invoke-static {v2}, Lcom/pinguo/album/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_27
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v0, [Lcom/pinguo/album/exif/Rational;
aget-object v0, v0, p1
return-object v0
.end method
.method protected getString()Ljava/lang/String;
.registers 4
iget-short v0, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
const/4 v1, 0x2
if-eq v0, v1, :cond_21
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Cannot get ASCII value from "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-short v2, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
invoke-static {v2}, Lcom/pinguo/album/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
new-instance v1, Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v0, [B
sget-object v2, Lcom/pinguo/album/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;
invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
return-object v1
.end method
.method protected getStringByte()[B
.registers 2
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v0, [B
return-object v0
.end method
.method public getTagId()S
.registers 2
iget-short v0, p0, Lcom/pinguo/album/exif/ExifTag;->mTagId:S
return v0
.end method
.method public getValue()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
return-object v0
.end method
.method public getValueAsByte(B)B
.registers 5
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->getValueAsBytes()[B
move-result-object v0
if-eqz v0, :cond_a
array-length v1, v0
const/4 v2, 0x1
if-ge v1, v2, :cond_b
:cond_a
:goto_a
return p1
:cond_b
const/4 v1, 0x0
aget-byte p1, v0, v1
goto :goto_a
.end method
.method public getValueAsBytes()[B
.registers 2
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
instance-of v0, v0, [B
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v0, [B
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getValueAsInt(I)I
.registers 5
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->getValueAsInts()[I
move-result-object v0
if-eqz v0, :cond_a
array-length v1, v0
const/4 v2, 0x1
if-ge v1, v2, :cond_b
:cond_a
:goto_a
return p1
:cond_b
const/4 v1, 0x0
aget p1, v0, v1
goto :goto_a
.end method
.method public getValueAsInts()[I
.registers 6
const/4 v0, 0x0
iget-object v3, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
if-nez v3, :cond_6
:cond_5
return-object v0
:cond_6
iget-object v3, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
instance-of v3, v3, [J
if-eqz v3, :cond_5
iget-object v2, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v2, [J
array-length v3, v2
new-array v0, v3, [I
const/4 v1, 0x0
:goto_14
array-length v3, v2
if-ge v1, v3, :cond_5
aget-wide v3, v2, v1
long-to-int v3, v3
aput v3, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_14
.end method
.method public getValueAsLong(J)J
.registers 6
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->getValueAsLongs()[J
move-result-object v0
if-eqz v0, :cond_a
array-length v1, v0
const/4 v2, 0x1
if-ge v1, v2, :cond_b
:cond_a
:goto_a
return-wide p1
:cond_b
const/4 v1, 0x0
aget-wide p1, v0, v1
goto :goto_a
.end method
.method public getValueAsLongs()[J
.registers 2
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
instance-of v0, v0, [J
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v0, [J
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getValueAsRational(J)Lcom/pinguo/album/exif/Rational;
.registers 6
new-instance v0, Lcom/pinguo/album/exif/Rational;
const-wide/16 v1, 0x1
invoke-direct {v0, p1, p2, v1, v2}, Lcom/pinguo/album/exif/Rational;-><init>(JJ)V
invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/ExifTag;->getValueAsRational(Lcom/pinguo/album/exif/Rational;)Lcom/pinguo/album/exif/Rational;
move-result-object v1
return-object v1
.end method
.method public getValueAsRational(Lcom/pinguo/album/exif/Rational;)Lcom/pinguo/album/exif/Rational;
.registers 5
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->getValueAsRationals()[Lcom/pinguo/album/exif/Rational;
move-result-object v0
if-eqz v0, :cond_a
array-length v1, v0
const/4 v2, 0x1
if-ge v1, v2, :cond_b
:cond_a
:goto_a
return-object p1
:cond_b
const/4 v1, 0x0
aget-object p1, v0, v1
goto :goto_a
.end method
.method public getValueAsRationals()[Lcom/pinguo/album/exif/Rational;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
instance-of v0, v0, [Lcom/pinguo/album/exif/Rational;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v0, [Lcom/pinguo/album/exif/Rational;
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getValueAsString()Ljava/lang/String;
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
if-nez v1, :cond_6
:cond_5
:goto_5
return-object v0
:cond_6
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
instance-of v1, v1, Ljava/lang/String;
if-eqz v1, :cond_11
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
goto :goto_5
:cond_11
iget-object v1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
instance-of v1, v1, [B
if-eqz v1, :cond_5
new-instance v1, Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v0, [B
sget-object v2, Lcom/pinguo/album/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;
invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
move-object v0, v1
goto :goto_5
.end method
.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->getValueAsString()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_7
:goto_6
return-object p1
:cond_7
move-object p1, v0
goto :goto_6
.end method
.method protected getValueAt(I)J
.registers 5
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
instance-of v0, v0, [J
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v0, [J
aget-wide v0, v0, p1
:goto_c
return-wide v0
:cond_d
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
instance-of v0, v0, [B
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
check-cast v0, [B
aget-byte v0, v0, p1
int-to-long v0, v0
goto :goto_c
:cond_1b
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Cannot get integer value from "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-short v2, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
invoke-static {v2}, Lcom/pinguo/album/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected hasDefinedCount()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z
return v0
.end method
.method public hasValue()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method protected setHasDefinedCount(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/album/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z
return-void
.end method
.method protected setIfd(I)V
.registers 2
iput p1, p0, Lcom/pinguo/album/exif/ExifTag;->mIfd:I
return-void
.end method
.method protected setOffset(I)V
.registers 2
iput p1, p0, Lcom/pinguo/album/exif/ExifTag;->mOffset:I
return-void
.end method
.method public setTimeValue(J)Z
.registers 6
sget-object v1, Lcom/pinguo/album/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/pinguo/album/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;
new-instance v2, Ljava/util/Date;
invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/ExifTag;->setValue(Ljava/lang/String;)Z
move-result v0
monitor-exit v1
return v0
:catchall_14
move-exception v0
monitor-exit v1
:try_end_16
.catchall {:try_start_3 .. :try_end_16} :catchall_14
throw v0
.end method
.method public setValue(B)Z
.registers 4
const/4 v0, 0x1
new-array v0, v0, [B
const/4 v1, 0x0
aput-byte p1, v0, v1
invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/ExifTag;->setValue([B)Z
move-result v0
return v0
.end method
.method public setValue(I)Z
.registers 4
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
aput p1, v0, v1
invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/ExifTag;->setValue([I)Z
move-result v0
return v0
.end method
.method public setValue(J)Z
.registers 5
const/4 v0, 0x1
new-array v0, v0, [J
const/4 v1, 0x0
aput-wide p1, v0, v1
invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/ExifTag;->setValue([J)Z
move-result v0
return v0
.end method
.method public setValue(Lcom/pinguo/album/exif/Rational;)Z
.registers 4
const/4 v0, 0x1
new-array v0, v0, [Lcom/pinguo/album/exif/Rational;
const/4 v1, 0x0
aput-object p1, v0, v1
invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/ExifTag;->setValue([Lcom/pinguo/album/exif/Rational;)Z
move-result v0
return v0
.end method
.method public setValue(Ljava/lang/Object;)Z
.registers 8
const v5, 0xffff
const/4 v4, 0x0
if-nez p1, :cond_7
:goto_6
:cond_6
return v4
:cond_7
instance-of v3, p1, Ljava/lang/Short;
if-eqz v3, :cond_17
check-cast p1, Ljava/lang/Short;
invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S
move-result v3
and-int/2addr v3, v5
invoke-virtual {p0, v3}, Lcom/pinguo/album/exif/ExifTag;->setValue(I)Z
move-result v4
goto :goto_6
:cond_17
instance-of v3, p1, Ljava/lang/String;
if-eqz v3, :cond_22
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifTag;->setValue(Ljava/lang/String;)Z
move-result v4
goto :goto_6
:cond_22
instance-of v3, p1, [I
if-eqz v3, :cond_2d
check-cast p1, [I
invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifTag;->setValue([I)Z
move-result v4
goto :goto_6
:cond_2d
instance-of v3, p1, [J
if-eqz v3, :cond_38
check-cast p1, [J
invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifTag;->setValue([J)Z
move-result v4
goto :goto_6
:cond_38
instance-of v3, p1, Lcom/pinguo/album/exif/Rational;
if-eqz v3, :cond_43
check-cast p1, Lcom/pinguo/album/exif/Rational;
invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifTag;->setValue(Lcom/pinguo/album/exif/Rational;)Z
move-result v4
goto :goto_6
:cond_43
instance-of v3, p1, [Lcom/pinguo/album/exif/Rational;
if-eqz v3, :cond_4e
check-cast p1, [Lcom/pinguo/album/exif/Rational;
invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifTag;->setValue([Lcom/pinguo/album/exif/Rational;)Z
move-result v4
goto :goto_6
:cond_4e
instance-of v3, p1, [B
if-eqz v3, :cond_59
check-cast p1, [B
invoke-virtual {p0, p1}, Lcom/pinguo/album/exif/ExifTag;->setValue([B)Z
move-result v4
goto :goto_6
:cond_59
instance-of v3, p1, Ljava/lang/Integer;
if-eqz v3, :cond_68
check-cast p1, Ljava/lang/Integer;
invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
move-result v3
invoke-virtual {p0, v3}, Lcom/pinguo/album/exif/ExifTag;->setValue(I)Z
move-result v4
goto :goto_6
:cond_68
instance-of v3, p1, Ljava/lang/Long;
if-eqz v3, :cond_77
check-cast p1, Ljava/lang/Long;
invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
move-result-wide v3
invoke-virtual {p0, v3, v4}, Lcom/pinguo/album/exif/ExifTag;->setValue(J)Z
move-result v4
goto :goto_6
:cond_77
instance-of v3, p1, Ljava/lang/Byte;
if-eqz v3, :cond_86
check-cast p1, Ljava/lang/Byte;
invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B
move-result v3
invoke-virtual {p0, v3}, Lcom/pinguo/album/exif/ExifTag;->setValue(B)Z
move-result v4
goto :goto_6
:cond_86
instance-of v3, p1, [Ljava/lang/Short;
if-eqz v3, :cond_ac
move-object v0, p1
check-cast v0, [Ljava/lang/Short;
array-length v3, v0
new-array v1, v3, [I
const/4 v2, 0x0
:goto_91
array-length v3, v0
if-lt v2, v3, :cond_9a
invoke-virtual {p0, v1}, Lcom/pinguo/album/exif/ExifTag;->setValue([I)Z
move-result v4
goto/16 :goto_6
:cond_9a
aget-object v3, v0, v2
if-nez v3, :cond_a4
move v3, v4
:goto_9f
aput v3, v1, v2
add-int/lit8 v2, v2, 0x1
goto :goto_91
:cond_a4
aget-object v3, v0, v2
invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S
move-result v3
and-int/2addr v3, v5
goto :goto_9f
:cond_ac
instance-of v3, p1, [Ljava/lang/Integer;
if-eqz v3, :cond_d1
move-object v0, p1
check-cast v0, [Ljava/lang/Integer;
array-length v3, v0
new-array v1, v3, [I
const/4 v2, 0x0
:goto_b7
array-length v3, v0
if-lt v2, v3, :cond_c0
invoke-virtual {p0, v1}, Lcom/pinguo/album/exif/ExifTag;->setValue([I)Z
move-result v4
goto/16 :goto_6
:cond_c0
aget-object v3, v0, v2
if-nez v3, :cond_ca
move v3, v4
:goto_c5
aput v3, v1, v2
add-int/lit8 v2, v2, 0x1
goto :goto_b7
:cond_ca
aget-object v3, v0, v2
invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
move-result v3
goto :goto_c5
:cond_d1
instance-of v3, p1, [Ljava/lang/Long;
if-eqz v3, :cond_f7
move-object v0, p1
check-cast v0, [Ljava/lang/Long;
array-length v3, v0
new-array v1, v3, [J
const/4 v2, 0x0
:goto_dc
array-length v3, v0
if-lt v2, v3, :cond_e5
invoke-virtual {p0, v1}, Lcom/pinguo/album/exif/ExifTag;->setValue([J)Z
move-result v4
goto/16 :goto_6
:cond_e5
aget-object v3, v0, v2
if-nez v3, :cond_f0
const-wide/16 v3, 0x0
:goto_eb
aput-wide v3, v1, v2
add-int/lit8 v2, v2, 0x1
goto :goto_dc
:cond_f0
aget-object v3, v0, v2
invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
move-result-wide v3
goto :goto_eb
:cond_f7
instance-of v3, p1, [Ljava/lang/Byte;
if-eqz v3, :cond_6
move-object v0, p1
check-cast v0, [Ljava/lang/Byte;
array-length v3, v0
new-array v1, v3, [B
const/4 v2, 0x0
:goto_102
array-length v3, v0
if-lt v2, v3, :cond_10b
invoke-virtual {p0, v1}, Lcom/pinguo/album/exif/ExifTag;->setValue([B)Z
move-result v4
goto/16 :goto_6
:cond_10b
aget-object v3, v0, v2
if-nez v3, :cond_115
move v3, v4
:goto_110
aput-byte v3, v1, v2
add-int/lit8 v2, v2, 0x1
goto :goto_102
:cond_115
aget-object v3, v0, v2
invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B
move-result v3
goto :goto_110
.end method
.method public setValue(Ljava/lang/String;)Z
.registers 10
const/4 v7, 0x7
const/4 v6, 0x2
const/4 v3, 0x0
const/4 v4, 0x1
iget-short v5, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
if-eq v5, v6, :cond_d
iget-short v5, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
if-eq v5, v7, :cond_d
:cond_c
:goto_c
return v3
:cond_d
sget-object v5, Lcom/pinguo/album/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;
invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
move-result-object v0
move-object v2, v0
array-length v5, v0
if-lez v5, :cond_38
array-length v5, v0
add-int/lit8 v5, v5, -0x1
aget-byte v5, v0, v5
if-eqz v5, :cond_22
iget-short v5, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
if-ne v5, v7, :cond_30
:cond_22
move-object v2, v0
:goto_23
:cond_23
array-length v1, v2
invoke-direct {p0, v1}, Lcom/pinguo/album/exif/ExifTag;->checkBadComponentCount(I)Z
move-result v5
if-nez v5, :cond_c
iput v1, p0, Lcom/pinguo/album/exif/ExifTag;->mComponentCountActual:I
iput-object v2, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
move v3, v4
goto :goto_c
:cond_30
array-length v5, v0
add-int/lit8 v5, v5, 0x1
invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([BI)[B
move-result-object v2
goto :goto_23
:cond_38
iget-short v5, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
if-ne v5, v6, :cond_23
iget v5, p0, Lcom/pinguo/album/exif/ExifTag;->mComponentCountActual:I
if-ne v5, v4, :cond_23
new-array v2, v4, [B
goto :goto_23
.end method
.method public setValue([B)Z
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lcom/pinguo/album/exif/ExifTag;->setValue([BII)Z
move-result v0
return v0
.end method
.method public setValue([BII)Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
invoke-direct {p0, p3}, Lcom/pinguo/album/exif/ExifTag;->checkBadComponentCount(I)Z
move-result v2
if-eqz v2, :cond_9
:goto_8
:cond_8
return v0
:cond_9
iget-short v2, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
if-eq v2, v1, :cond_12
iget-short v2, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
const/4 v3, 0x7
if-ne v2, v3, :cond_8
:cond_12
new-array v2, p3, [B
iput-object v2, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
iget-object v2, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput p3, p0, Lcom/pinguo/album/exif/ExifTag;->mComponentCountActual:I
move v0, v1
goto :goto_8
.end method
.method public setValue([I)Z
.registers 9
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v2, 0x0
array-length v3, p1
invoke-direct {p0, v3}, Lcom/pinguo/album/exif/ExifTag;->checkBadComponentCount(I)Z
move-result v3
if-eqz v3, :cond_b
:cond_a
:goto_a
return v2
:cond_b
iget-short v3, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
if-eq v3, v5, :cond_19
iget-short v3, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
const/16 v4, 0x9
if-eq v3, v4, :cond_19
iget-short v3, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
if-ne v3, v6, :cond_a
:cond_19
iget-short v3, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
if-ne v3, v5, :cond_23
invoke-direct {p0, p1}, Lcom/pinguo/album/exif/ExifTag;->checkOverflowForUnsignedShort([I)Z
move-result v3
if-nez v3, :cond_a
:cond_23
iget-short v3, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
if-ne v3, v6, :cond_2d
invoke-direct {p0, p1}, Lcom/pinguo/album/exif/ExifTag;->checkOverflowForUnsignedLong([I)Z
move-result v3
if-nez v3, :cond_a
:cond_2d
array-length v2, p1
new-array v0, v2, [J
const/4 v1, 0x0
:goto_31
array-length v2, p1
if-lt v1, v2, :cond_3b
iput-object v0, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
array-length v2, p1
iput v2, p0, Lcom/pinguo/album/exif/ExifTag;->mComponentCountActual:I
const/4 v2, 0x1
goto :goto_a
:cond_3b
aget v2, p1, v1
int-to-long v2, v2
aput-wide v2, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_31
.end method
.method public setValue([J)Z
.registers 5
const/4 v0, 0x0
array-length v1, p1
invoke-direct {p0, v1}, Lcom/pinguo/album/exif/ExifTag;->checkBadComponentCount(I)Z
move-result v1
if-nez v1, :cond_d
iget-short v1, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
const/4 v2, 0x4
if-eq v1, v2, :cond_e
:goto_d
:cond_d
return v0
:cond_e
invoke-direct {p0, p1}, Lcom/pinguo/album/exif/ExifTag;->checkOverflowForUnsignedLong([J)Z
move-result v1
if-nez v1, :cond_d
iput-object p1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
array-length v0, p1
iput v0, p0, Lcom/pinguo/album/exif/ExifTag;->mComponentCountActual:I
const/4 v0, 0x1
goto :goto_d
.end method
.method public setValue([Lcom/pinguo/album/exif/Rational;)Z
.registers 6
const/16 v3, 0xa
const/4 v2, 0x5
const/4 v0, 0x0
array-length v1, p1
invoke-direct {p0, v1}, Lcom/pinguo/album/exif/ExifTag;->checkBadComponentCount(I)Z
move-result v1
if-eqz v1, :cond_c
:cond_b
:goto_b
return v0
:cond_c
iget-short v1, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
if-eq v1, v2, :cond_14
iget-short v1, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
if-ne v1, v3, :cond_b
:cond_14
iget-short v1, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
if-ne v1, v2, :cond_1e
invoke-direct {p0, p1}, Lcom/pinguo/album/exif/ExifTag;->checkOverflowForUnsignedRational([Lcom/pinguo/album/exif/Rational;)Z
move-result v1
if-nez v1, :cond_b
:cond_1e
iget-short v1, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
if-ne v1, v3, :cond_28
invoke-direct {p0, p1}, Lcom/pinguo/album/exif/ExifTag;->checkOverflowForRational([Lcom/pinguo/album/exif/Rational;)Z
move-result v1
if-nez v1, :cond_b
:cond_28
iput-object p1, p0, Lcom/pinguo/album/exif/ExifTag;->mValue:Ljava/lang/Object;
array-length v0, p1
iput v0, p0, Lcom/pinguo/album/exif/ExifTag;->mComponentCountActual:I
const/4 v0, 0x1
goto :goto_b
.end method
.method public toString()Ljava/lang/String;
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "tag id: %04X\n"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-short v4, p0, Lcom/pinguo/album/exif/ExifTag;->mTagId:S
invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "ifd id: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/pinguo/album/exif/ExifTag;->mIfd:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\ntype: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-short v1, p0, Lcom/pinguo/album/exif/ExifTag;->mDataType:S
invoke-static {v1}, Lcom/pinguo/album/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\ncount: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/pinguo/album/exif/ExifTag;->mComponentCountActual:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\noffset: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/pinguo/album/exif/ExifTag;->mOffset:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\nvalue: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method