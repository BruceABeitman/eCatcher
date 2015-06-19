.class public Lcom/glympse/android/hal/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# static fields
.field public static final DEGREES_TO_RADIANS:D = 0.017453292519943295

.field public static final EARTH_RADIUS_FEET:D = 2.09256463572663E7

.field public static final EARTH_RADIUS_KM:D = 6378.137

.field public static final EARTH_RADIUS_METERS:D = 6378137.0

.field public static final EARTH_RADIUS_MILES:D = 3963.190590429304

.field public static final EARTH_RADIUS_NAUTICAL_MILES:D = 3443.918463616011

.field public static final FEET_TO_METERS:D = 0.3048

.field public static final KNOTS_TO_KPH:D = 1.852

.field public static final KNOTS_TO_METERS_PER_SEC:D = 0.514444444

.field public static final KNOTS_TO_MPH:D = 1.15077945

.field public static final KPH_TO_METERS_PER_SEC:D = 0.277777778

.field public static final METERS_PER_SEC_TO_KNOTS:D = 1.94384449

.field public static final METERS_PER_SEC_TO_KPH:D = 3.6

.field public static final METERS_PER_SEC_TO_MPH:D = 2.23693629

.field public static final METERS_TO_FEET:D = 3.2808399

.field public static final METERS_TO_KM:D = 0.0010

.field public static final METERS_TO_MILES:D = 6.21371192E-4

.field public static final METERS_TO_NAUTICAL_MILES:D = 5.39956803E-4

.field public static final MILES_TO_FEET:D = 5280.0

.field public static final MILES_TO_METERS:D = 1609.344

.field public static final MPH_TO_METERS_PER_SEC:D = 0.44704

.field public static final MS_PER_DAY:J = 0x5265c00L

.field public static final MS_PER_HOUR:J = 0x36ee80L

.field public static final MS_PER_MINUTE:J = 0xea60L

.field public static final MS_PER_SECOND:J = 0x3e8L

.field public static final M_PI:D = 3.141592653589793

.field public static final RADIANS_TO_DEGREES:D = 57.29577951308232

.field public static final _bearingStrings:[Ljava/lang/String;

.field static final bP:[Z

.field public static final ms_acBase64Encode:[C

.field public static final ms_acHex:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v1, 0x10

    new-array v0, v1, [C

    fill-array-data v0, :array_78

    sput-object v0, Lcom/glympse/android/hal/Helpers;->ms_acHex:[C

    const/16 v0, 0x100

    new-array v0, v0, [Z

    fill-array-data v0, :array_8c

    sput-object v0, Lcom/glympse/android/hal/Helpers;->bP:[Z

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "N"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NNE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "NE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ENE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ESE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SSE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SSW"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SW"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "WSW"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "WNW"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "NW"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "NNW"

    aput-object v2, v0, v1

    sput-object v0, Lcom/glympse/android/hal/Helpers;->_bearingStrings:[Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_110

    sput-object v0, Lcom/glympse/android/hal/Helpers;->ms_acBase64Encode:[C

    return-void

    :array_78
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data

    :array_8c
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_110
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Ljava/lang/StringBuilder;DI)V
    .registers 5

    invoke-static {p1, p2, p3}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->base64Encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static base64Encode([B)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x3

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_d
    array-length v2, p0

    if-ge v0, v2, :cond_b3

    array-length v2, p0

    sub-int/2addr v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_58

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    sget-object v3, Lcom/glympse/android/hal/Helpers;->ms_acBase64Encode:[C

    ushr-int/lit8 v4, v2, 0x12

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/glympse/android/hal/Helpers;->ms_acBase64Encode:[C

    ushr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/glympse/android/hal/Helpers;->ms_acBase64Encode:[C

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/glympse/android/hal/Helpers;->ms_acBase64Encode:[C

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_55
    add-int/lit8 v0, v0, 0x3

    goto :goto_d

    :cond_58
    const/4 v3, 0x2

    if-ne v2, v3, :cond_91

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    sget-object v3, Lcom/glympse/android/hal/Helpers;->ms_acBase64Encode:[C

    ushr-int/lit8 v4, v2, 0x12

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/glympse/android/hal/Helpers;->ms_acBase64Encode:[C

    ushr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/glympse/android/hal/Helpers;->ms_acBase64Encode:[C

    ushr-int/lit8 v2, v2, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_55

    :cond_91
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    sget-object v3, Lcom/glympse/android/hal/Helpers;->ms_acBase64Encode:[C

    ushr-int/lit8 v4, v2, 0x12

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/glympse/android/hal/Helpers;->ms_acBase64Encode:[C

    ushr-int/lit8 v2, v2, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_55

    :cond_b3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calculateHMACSHA1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "HmacSHA1"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "HmacSHA1"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->base64Encode([B)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_24} :catch_26

    move-result-object v0

    :goto_25
    return-object v0

    :catch_26
    move-exception v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_25
.end method

.method public static copyByteArray([BI[BII)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static emptyIfNull([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-nez p0, :cond_8

    :goto_7
    return-object v0

    :cond_8
    move-object v0, p0

    goto :goto_7
.end method

.method public static emptyString()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method public static filenameEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    if-ge v1, v2, :cond_27

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v4, Lcom/glympse/android/hal/Helpers;->bP:[Z

    aget-boolean v4, v4, v0

    if-nez v4, :cond_20

    const/16 v0, 0x5f

    :cond_20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    :cond_27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static floatToIntBits(F)I
    .registers 2

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public static formatBearing(FZ)Ljava/lang/String;
    .registers 9

    const-wide v3, 0x4076800000000000L

    const-wide v5, 0x4036800000000000L

    if-eqz p1, :cond_1d

    sget-object v0, Lcom/glympse/android/hal/Helpers;->_bearingStrings:[Ljava/lang/String;

    float-to-double v1, p0

    add-double/2addr v1, v3

    const-wide v3, 0x4026800000000000L

    add-double/2addr v1, v3

    div-double/2addr v1, v5

    double-to-int v1, v1

    rem-int/lit8 v1, v1, 0x10

    aget-object v0, v0, v1

    :goto_1c
    return-object v0

    :cond_1d
    sget-object v0, Lcom/glympse/android/hal/Helpers;->_bearingStrings:[Ljava/lang/String;

    float-to-double v1, p0

    add-double/2addr v1, v3

    add-double/2addr v1, v5

    const-wide v3, 0x4046800000000000L

    div-double/2addr v1, v3

    double-to-int v1, v1

    rem-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    goto :goto_1c
.end method

.method public static formatDistance(FZ)Ljava/lang/String;
    .registers 14

    const/4 v11, 0x1

    const-wide v9, 0x408f400000000000L

    const-wide/high16 v7, 0x4059

    const-wide/high16 v5, 0x4024

    const/4 v4, 0x0

    if-eqz p1, :cond_83

    float-to-double v0, p0

    cmpg-double v0, v0, v9

    if-gez v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v1, p0

    invoke-static {v1, v2, v4}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2a
    return-object v0

    :cond_2b
    float-to-double v0, p0

    const-wide v2, 0x3f50624dd2f1a9fcL

    mul-double/2addr v0, v2

    cmpl-double v2, v0, v7

    if-ltz v2, :cond_4e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1, v4}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " km"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_4e
    cmpl-double v2, v0, v5

    if-ltz v2, :cond_6a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1, v11}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " km"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_6a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " km"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_83
    float-to-double v0, p0

    const-wide v2, 0x400a3f28fd4f4b98L

    mul-double/2addr v0, v2

    cmpg-double v2, v0, v9

    if-gez v2, :cond_a6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1, v4}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ft"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_a6
    float-to-double v0, p0

    const-wide v2, 0x3f445c7079626fb0L

    mul-double/2addr v0, v2

    cmpl-double v2, v0, v7

    if-ltz v2, :cond_ca

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1, v4}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2a

    :cond_ca
    cmpl-double v2, v0, v5

    if-ltz v2, :cond_e7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1, v11}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2a

    :cond_e7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lcom/glympse/android/hal/Helpers;->toString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2a
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lcom/glympse/android/hal/Helpers;->formatDuration(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(Landroid/content/Context;JZ)Ljava/lang/String;
    .registers 14

    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/16 v9, 0xa

    cmp-long v2, p1, v0

    if-gez v2, :cond_a

    move-wide p1, v0

    :cond_a
    const-wide/32 v0, 0x5265c00

    div-long v0, p1, v0

    long-to-int v1, v0

    const-wide/32 v2, 0x36ee80

    div-long v2, p1, v2

    long-to-int v0, v2

    rem-int/lit8 v2, v0, 0x18

    const-wide/32 v3, 0xea60

    div-long v3, p1, v3

    long-to-int v0, v3

    rem-int/lit8 v3, v0, 0x3c

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    long-to-int v0, v4

    rem-int/lit8 v4, v0, 0x3c

    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/glympse/android/api/R$plurals;->common_days_1d:I

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3c
    if-lt v1, v9, :cond_69

    :goto_3e
    return-object v0

    :cond_3f
    if-le v1, v6, :cond_55

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " days"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " day"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_69
    if-lez v1, :cond_92

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ge v3, v9, :cond_8f

    const-string v0, ":0"

    :goto_82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    :cond_8f
    const-string v0, ":"

    goto :goto_82

    :cond_92
    if-lez v2, :cond_d3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ge v3, v9, :cond_ca

    const-string v0, ":0"

    :goto_a1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_d0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v4, v9, :cond_cd

    const-string v0, ":0"

    :goto_b4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3e

    :cond_ca
    const-string v0, ":"

    goto :goto_a1

    :cond_cd
    const-string v0, ":"

    goto :goto_b4

    :cond_d0
    const-string v0, ""

    goto :goto_c0

    :cond_d3
    if-eqz p3, :cond_fe

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v3, v9, :cond_f8

    const-string v0, "0"

    :goto_de
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ge v4, v9, :cond_fb

    const-string v0, ":0"

    :goto_ea
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3e

    :cond_f8
    const-string v0, ""

    goto :goto_de

    :cond_fb
    const-string v0, ":"

    goto :goto_ea

    :cond_fe
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "0:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ge v3, v9, :cond_117

    const-string v0, "0"

    :goto_109
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3e

    :cond_117
    const-string v0, ""

    goto :goto_109
.end method

.method public static fromCharArray([C)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static getDigitsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v0, 0x0

    :goto_14
    array-length v3, v2

    if-ge v0, v3, :cond_2b

    aget-char v3, v2, v0

    const/16 v4, 0x30

    if-lt v3, v4, :cond_21

    const/16 v4, 0x39

    if-le v3, v4, :cond_25

    :cond_21
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_28

    :cond_25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    return-object v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public static isDigit(C)Z
    .registers 2

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isGuid(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x2d

    const/16 v2, 0x24

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1a3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v4, v2, :cond_1a3

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v4, v2, :cond_1a3

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v4, v2, :cond_1a3

    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x16

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x17

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v4, v2, :cond_1a3

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x19

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x1b

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x1c

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x1d

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x1e

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x1f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isHex(C)Z

    move-result v2

    if-eqz v2, :cond_1a3

    :goto_1a2
    return v0

    :cond_1a3
    move v0, v1

    goto :goto_1a2
.end method

.method public static isHex(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static isLetter(C)Z
    .registers 2

    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    return v0
.end method

.method public static isUtf7(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "UTF-7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_10

    move-result v2

    if-ne v1, v2, :cond_f

    const/4 v0, 0x1

    :cond_f
    :goto_f
    return v0

    :catch_10
    move-exception v1

    invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_f
.end method

.method public static isWhitespace(C)Z
    .registers 2

    const/16 v0, 0x20

    if-gt p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static jsonEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v1, 0x5c

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v2

    :goto_13
    if-ge v3, v5, :cond_7c

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_82

    move v0, v2

    :goto_1d
    if-eqz v0, :cond_40

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_25
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_13

    :sswitch_29
    const/16 v0, 0x22

    goto :goto_1d

    :sswitch_2c
    move v0, v1

    goto :goto_1d

    :sswitch_2e
    const/16 v0, 0x2f

    goto :goto_1d

    :sswitch_31
    const/16 v0, 0x62

    goto :goto_1d

    :sswitch_34
    const/16 v0, 0x66

    goto :goto_1d

    :sswitch_37
    const/16 v0, 0x6e

    goto :goto_1d

    :sswitch_3a
    const/16 v0, 0x72

    goto :goto_1d

    :sswitch_3d
    const/16 v0, 0x74

    goto :goto_1d

    :cond_40
    const/16 v0, 0x20

    if-lt v6, v0, :cond_48

    const/16 v0, 0x7f

    if-lt v6, v0, :cond_78

    :cond_48
    const-string v0, "\\u"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/glympse/android/hal/Helpers;->ms_acHex:[C

    ushr-int/lit8 v7, v6, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v0, v0, v7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/glympse/android/hal/Helpers;->ms_acHex:[C

    ushr-int/lit8 v7, v6, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v0, v0, v7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/glympse/android/hal/Helpers;->ms_acHex:[C

    ushr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v0, v0, v7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/glympse/android/hal/Helpers;->ms_acHex:[C

    and-int/lit8 v6, v6, 0xf

    aget-char v0, v0, v6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_78
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_7c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_82
    .sparse-switch
        0x8 -> :sswitch_31
        0x9 -> :sswitch_3d
        0xa -> :sswitch_37
        0xc -> :sswitch_34
        0xd -> :sswitch_3a
        0x22 -> :sswitch_29
        0x2f -> :sswitch_2e
        0x5c -> :sswitch_2c
    .end sparse-switch
.end method

.method public static logTODO()V
    .registers 9

    const/4 v8, 0x1

    const/4 v7, 0x3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "at TODO %s.%s (%s:%d)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v3, v5, v8

    const/4 v2, 0x2

    aput-object v0, v5, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    return-void
.end method

.method public static logTODO(Ljava/lang/String;)V
    .registers 10

    const/4 v8, 0x1

    const/4 v7, 0x3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "at TODO [%s] %s.%s (%s:%d)"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    aput-object v2, v5, v8

    const/4 v2, 0x2

    aput-object v3, v5, v2

    aput-object v0, v5, v7

    const/4 v0, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    return-void
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v0

    :goto_4
    return-wide v0

    :catch_5
    move-exception v0

    const-wide/high16 v0, 0x7ff8

    goto :goto_4
.end method

.method public static parseInt(Ljava/lang/String;)I
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static parseQueryStringParameters(Ljava/lang/String;)Lcom/glympse/android/hal/GVector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/hal/NameValue;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    new-instance v2, Lcom/glympse/android/hal/GVector;

    invoke-direct {v2}, Lcom/glympse/android/hal/GVector;-><init>()V

    const/16 v0, 0x26

    invoke-static {p0, v0}, Lcom/glympse/android/hal/Helpers;->strSplit(Ljava/lang/String;C)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x3d

    invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->strSplit(Ljava/lang/String;C)Ljava/util/Vector;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_52

    new-instance v1, Lcom/glympse/android/hal/NameValue;

    invoke-direct {v1}, Lcom/glympse/android/hal/NameValue;-><init>()V

    invoke-virtual {v2, v1}, Lcom/glympse/android/hal/GVector;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/glympse/android/hal/NameValue;->_name:Ljava/lang/String;

    :goto_3e
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v5, :cond_10

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/glympse/android/hal/NameValue;->_value:Ljava/lang/String;

    goto :goto_10

    :cond_51
    return-object v2

    :cond_52
    move-object v1, v0

    goto :goto_3e
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static safeEqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static safeStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method public static safeTrim(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/hal/GVector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/glympse/android/hal/GVector;

    invoke-direct {v2}, Lcom/glympse/android/hal/GVector;-><init>()V

    const/4 v0, 0x0

    :goto_a
    array-length v3, v1

    if-ge v0, v3, :cond_1f

    aget-object v3, v1, v0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    return-object v2
.end method

.method public static staticString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    return-object p0
.end method

.method public static strSplit(Ljava/lang/String;C)Ljava/util/Vector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lt v2, v0, :cond_16

    invoke-static {p0, v0, v2}, Lcom/glympse/android/hal/Helpers;->substrend(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    goto :goto_6

    :cond_16
    invoke-static {p0, v0}, Lcom/glympse/android/hal/Helpers;->substr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static substr(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substrend(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_a
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substrlen(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-le v0, v1, :cond_a

    add-int v0, p1, p2

    :cond_a
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static toCharArray(Ljava/lang/String;)[C
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public static toDouble(Ljava/lang/String;)D
    .registers 3

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;)J
    .registers 3

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toString(DI)Ljava/lang/String;
    .registers 10

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_19

    const/4 v0, 0x1

    move v6, v0

    :goto_9
    if-eqz v6, :cond_97

    neg-double v0, p0

    :goto_c
    if-lez p2, :cond_1b

    move v2, v3

    :goto_f
    if-ge v2, p2, :cond_1b

    const-wide/high16 v4, 0x4024

    mul-double/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_f

    :cond_19
    move v6, v3

    goto :goto_9

    :cond_1b
    const-wide/high16 v4, 0x3fe0

    add-double/2addr v0, v4

    double-to-long v0, v0

    const-wide/high16 v4, -0x8000

    cmp-long v2, v4, v0

    if-eqz v2, :cond_2e

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v4, v0

    if-nez v2, :cond_31

    :cond_2e
    const-string v0, ""

    :cond_30
    :goto_30
    return-object v0

    :cond_31
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    if-lez p2, :cond_75

    :goto_37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p2, :cond_4d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :cond_4d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_87

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v4, v1, p2

    invoke-static {v0, v3, v4}, Lcom/glympse/android/hal/Helpers;->substrend(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_75
    :goto_75
    if-eqz v6, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_87
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_75

    :cond_97
    move-wide v0, p0

    goto/16 :goto_c
.end method

.method public static toString(J)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static tryCast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public static urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object p0

    :goto_6
    return-object p0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_6
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object p0

    :goto_6
    return-object p0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_6
.end method

.method public static wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    return-object p0
.end method
