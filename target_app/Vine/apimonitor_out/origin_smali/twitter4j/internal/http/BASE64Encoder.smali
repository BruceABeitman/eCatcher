.class public final Ltwitter4j/internal/http/BASE64Encoder;
.super Ljava/lang/Object;
.source "BASE64Encoder.java"


# static fields
.field private static final encodeTable:[C

.field private static final last2byte:C

.field private static final last4byte:C

.field private static final last6byte:C

.field private static final lead2byte:C

.field private static final lead4byte:C

.field private static final lead6byte:C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x2

    const-string v0, "00000011"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/internal/http/BASE64Encoder;->last2byte:C

    const-string v0, "00001111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/internal/http/BASE64Encoder;->last4byte:C

    const-string v0, "00111111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/internal/http/BASE64Encoder;->last6byte:C

    const-string v0, "11111100"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/internal/http/BASE64Encoder;->lead6byte:C

    const-string v0, "11110000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/internal/http/BASE64Encoder;->lead4byte:C

    const-string v0, "11000000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Ltwitter4j/internal/http/BASE64Encoder;->lead2byte:C

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_42

    sput-object v0, Ltwitter4j/internal/http/BASE64Encoder;->encodeTable:[C

    return-void

    nop

    :array_42
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

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 9

    new-instance v3, Ljava/lang/StringBuilder;

    array-length v4, p0

    int-to-double v4, v4

    const-wide v6, 0x3ff570a3d70a3d71L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_13
    array-length v4, p0

    if-ge v1, v4, :cond_71

    rem-int/lit8 v2, v2, 0x8

    :goto_18
    const/16 v4, 0x8

    if-ge v2, v4, :cond_6e

    packed-switch v2, :pswitch_data_90

    :cond_1f
    :goto_1f
    :pswitch_1f
    sget-object v4, Ltwitter4j/internal/http/BASE64Encoder;->encodeTable:[C

    aget-char v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x6

    goto :goto_18

    :pswitch_29
    aget-byte v4, p0, v1

    sget-char v5, Ltwitter4j/internal/http/BASE64Encoder;->lead6byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    ushr-int/lit8 v4, v0, 0x2

    int-to-char v0, v4

    goto :goto_1f

    :pswitch_33
    aget-byte v4, p0, v1

    sget-char v5, Ltwitter4j/internal/http/BASE64Encoder;->last6byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    goto :goto_1f

    :pswitch_3a
    aget-byte v4, p0, v1

    sget-char v5, Ltwitter4j/internal/http/BASE64Encoder;->last4byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    shl-int/lit8 v4, v0, 0x2

    int-to-char v0, v4

    add-int/lit8 v4, v1, 0x1

    array-length v5, p0

    if-ge v4, v5, :cond_1f

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    sget-char v5, Ltwitter4j/internal/http/BASE64Encoder;->lead2byte:C

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v0

    int-to-char v0, v4

    goto :goto_1f

    :pswitch_54
    aget-byte v4, p0, v1

    sget-char v5, Ltwitter4j/internal/http/BASE64Encoder;->last2byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    shl-int/lit8 v4, v0, 0x4

    int-to-char v0, v4

    add-int/lit8 v4, v1, 0x1

    array-length v5, p0

    if-ge v4, v5, :cond_1f

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    sget-char v5, Ltwitter4j/internal/http/BASE64Encoder;->lead4byte:C

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v0

    int-to-char v0, v4

    goto :goto_1f

    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_8b

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v1, v4, 0x4

    :goto_81
    if-lez v1, :cond_8b

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_81

    :cond_8b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_29
        :pswitch_1f
        :pswitch_33
        :pswitch_1f
        :pswitch_3a
        :pswitch_1f
        :pswitch_54
    .end packed-switch
.end method
