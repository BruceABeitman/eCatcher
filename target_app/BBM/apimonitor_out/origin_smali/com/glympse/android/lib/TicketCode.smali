.class public Lcom/glympse/android/lib/TicketCode;
.super Ljava/lang/Object;
.source "TicketCode.java"


# static fields
.field public static final MAXIMUM_CODE_LENGTH:I = 0x80

.field public static final MINIMUM_CODE_LENGTH:I = 0x6

.field public static final _base32Decode:[I

.field public static final _base32Encode:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x4b

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/glympse/android/lib/TicketCode;->_base32Decode:[I

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_ae

    sput-object v0, Lcom/glympse/android/lib/TicketCode;->_base32Encode:[C

    return-void

    nop

    :array_14
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    :array_ae
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
        0x47t 0x0t
        0x48t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base32ToLong(Ljava/lang/String;)J
    .registers 11

    const-wide/16 v2, 0x0

    if-nez p0, :cond_6

    move-wide v0, v2

    :cond_5
    :goto_5
    return-wide v0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_11

    const/16 v1, 0x80

    if-le v0, v1, :cond_13

    :cond_11
    move-wide v0, v2

    goto :goto_5

    :cond_13
    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->toCharArray(Ljava/lang/String;)[C

    move-result-object v6

    array-length v7, v6

    const/4 v0, 0x0

    move v5, v0

    move-wide v0, v2

    :goto_1b
    if-ge v5, v7, :cond_5

    aget-char v4, v6, v5

    const/16 v8, 0x2d

    if-eq v8, v4, :cond_3b

    const/16 v8, 0x30

    if-lt v4, v8, :cond_35

    const/16 v8, 0x7a

    if-gt v4, v8, :cond_35

    sget-object v8, Lcom/glympse/android/lib/TicketCode;->_base32Decode:[I

    add-int/lit8 v4, v4, -0x30

    aget v4, v8, v4

    :goto_31
    if-gez v4, :cond_37

    move-wide v0, v2

    goto :goto_5

    :cond_35
    const/4 v4, -0x1

    goto :goto_31

    :cond_37
    const/4 v8, 0x5

    shl-long/2addr v0, v8

    int-to-long v8, v4

    add-long/2addr v0, v8

    :cond_3b
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1b
.end method

.method public static cleanupInviteCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v1, 0x0

    const/16 v10, 0x7a

    const/16 v9, 0x61

    const/16 v2, 0x30

    const/4 v4, 0x0

    if-nez p0, :cond_c

    move-object v0, v1

    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->toCharArray(Ljava/lang/String;)[C

    move-result-object v5

    array-length v6, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v4

    :goto_17
    if-ge v3, v6, :cond_6c

    aget-char v0, v5, v3

    if-lt v0, v2, :cond_28

    const/16 v8, 0x39

    if-gt v0, v8, :cond_28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_24
    :goto_24
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_17

    :cond_28
    if-lt v0, v9, :cond_2c

    if-le v0, v10, :cond_34

    :cond_2c
    const/16 v8, 0x41

    if-lt v0, v8, :cond_54

    const/16 v8, 0x5a

    if-gt v0, v8, :cond_54

    :cond_34
    if-lt v0, v9, :cond_3b

    if-gt v0, v10, :cond_3b

    add-int/lit8 v0, v0, -0x20

    int-to-char v0, v0

    :cond_3b
    const/16 v8, 0x55

    if-ne v8, v0, :cond_41

    const/16 v0, 0x56

    :cond_41
    const/16 v8, 0x4f

    if-ne v8, v0, :cond_46

    move v0, v2

    :cond_46
    const/16 v8, 0x49

    if-eq v8, v0, :cond_4e

    const/16 v8, 0x4c

    if-ne v8, v0, :cond_50

    :cond_4e
    const/16 v0, 0x31

    :cond_50
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_54
    const/16 v8, 0x3a

    if-eq v8, v0, :cond_64

    const/16 v8, 0x2e

    if-eq v8, v0, :cond_64

    const/16 v8, 0x2f

    if-ne v8, v0, :cond_68

    add-int/lit8 v8, v3, 0x6

    if-ge v8, v6, :cond_68

    :cond_64
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_24

    :cond_68
    const/16 v8, 0x2d

    if-eq v8, v0, :cond_24

    :cond_6c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_75

    move-object v0, v1

    goto :goto_b

    :cond_75
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static getInviteAspect(J)I
    .registers 4

    const/16 v0, 0x23

    shr-long v0, p0, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_10

    const/4 v0, 0x0

    :goto_b
    return v0

    :pswitch_c
    const/4 v0, 0x1

    goto :goto_b

    :pswitch_e
    const/4 v0, 0x2

    goto :goto_b

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public static isValid(Ljava/lang/String;)Z
    .registers 5

    const-wide/16 v0, 0x0

    invoke-static {p0}, Lcom/glympse/android/lib/TicketCode;->base32ToLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static longToBase32(J)Ljava/lang/String;
    .registers 12

    const-wide/16 v8, 0x1f

    const/4 v7, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0xc

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v0, Lcom/glympse/android/lib/TicketCode;->_base32Encode:[C

    and-long v3, p0, v8

    long-to-int v1, v3

    aget-char v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-long v0, p0, v7

    :goto_16
    const-wide/16 v3, 0x0

    cmp-long v3, v3, v0

    if-eqz v3, :cond_29

    const/4 v3, 0x0

    sget-object v4, Lcom/glympse/android/lib/TicketCode;->_base32Encode:[C

    and-long v5, v0, v8

    long-to-int v5, v5

    aget-char v4, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    ushr-long/2addr v0, v7

    goto :goto_16

    :cond_29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toLong(Ljava/lang/String;)J
    .registers 3

    invoke-static {p0}, Lcom/glympse/android/lib/TicketCode;->base32ToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toString(J)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/glympse/android/lib/TicketCode;->longToBase32(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
