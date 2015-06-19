.class public Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;
.super Ljava/lang/Object;
.source "HypyUtil.java"


# static fields
.field private static BEGIN:I

.field private static END:I

.field private static chartable:[C

.field private static initialtable:[C

.field private static table:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0x1a

    const v1, 0xb0a1

    sput v1, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->BEGIN:I

    const v1, 0xf7fe

    sput v1, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->END:I

    new-array v1, v3, [C

    fill-array-data v1, :array_3a

    sput-object v1, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->chartable:[C

    const/16 v1, 0x1b

    new-array v1, v1, [I

    sput-object v1, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->table:[I

    new-array v1, v3, [C

    fill-array-data v1, :array_58

    sput-object v1, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->initialtable:[C

    const/4 v0, 0x0

    :goto_21
    if-lt v0, v3, :cond_2a

    sget-object v1, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->table:[I

    sget v2, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->END:I

    aput v2, v1, v3

    return-void

    :cond_2a
    sget-object v1, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->table:[I

    sget-object v2, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->chartable:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->gbValue(C)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    nop

    :array_3a
    .array-data 0x2
        0x4at 0x55t
        0xadt 0x82t
        0xe6t 0x64t
        0x2dt 0x64t
        0xfet 0x86t
        0xd1t 0x53t
        0x76t 0x56t
        0xc8t 0x54t
        0xc8t 0x54t
        0xfbt 0x51t
        0x80t 0x55t
        0x83t 0x57t
        0x88t 0x59t
        0xfft 0x62t
        0xe6t 0x54t
        0x6at 0x55t
        0x1ft 0x67t
        0x36t 0x71t
        0x92t 0x64t
        0x4ct 0x58t
        0x4ct 0x58t
        0x4ct 0x58t
        0x16t 0x63t
        0x14t 0x66t
        0x8bt 0x53t
        0x1dt 0x53t
    .end array-data

    :array_58
    .array-data 0x2
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x68t 0x0t
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
        0x74t 0x0t
        0x74t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Char2Initial(C)C
    .registers 5

    const/16 v2, 0x61

    if-lt p0, v2, :cond_e

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_e

    add-int/lit8 v2, p0, -0x61

    add-int/lit8 v2, v2, 0x41

    int-to-char p0, v2

    :cond_d
    :goto_d
    return p0

    :cond_e
    const/16 v2, 0x41

    if-lt p0, v2, :cond_16

    const/16 v2, 0x5a

    if-le p0, v2, :cond_d

    :cond_16
    invoke-static {p0}, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->gbValue(C)I

    move-result v0

    sget v2, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->BEGIN:I

    if-lt v0, v2, :cond_d

    sget v2, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->END:I

    if-gt v0, v2, :cond_d

    const/4 v1, 0x0

    :goto_23
    const/16 v2, 0x1a

    if-lt v1, v2, :cond_32

    :cond_27
    sget v2, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->END:I

    if-ne v0, v2, :cond_2d

    const/16 v1, 0x19

    :cond_2d
    sget-object v2, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->initialtable:[C

    aget-char p0, v2, v1

    goto :goto_d

    :cond_32
    sget-object v2, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->table:[I

    aget v2, v2, v1

    if-lt v0, v2, :cond_40

    sget-object v2, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->table:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    if-lt v0, v2, :cond_27

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_23
.end method

.method public static cn2py(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_8
    if-lt v3, v1, :cond_b

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->Char2Initial(C)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_23} :catch_27

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :catch_27
    move-exception v2

    const-string/jumbo v0, ""

    goto :goto_a
.end method

.method private static gbValue(C)I
    .registers 7

    const/4 v3, 0x0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_17
    const-string/jumbo v4, "GB2312"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_23

    :goto_22
    return v3

    :cond_23
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v3, v0, v5
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2f} :catch_33

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v4

    goto :goto_22

    :catch_33
    move-exception v1

    goto :goto_22
.end method
