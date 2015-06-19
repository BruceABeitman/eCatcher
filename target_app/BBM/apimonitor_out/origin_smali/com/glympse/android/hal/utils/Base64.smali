.class public Lcom/glympse/android/hal/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field public static final DECODE:I = 0x0

.field public static final DONT_GUNZIP:I = 0x4

.field public static final DO_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field public static final GZIP:I = 0x2

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field public static final URL_SAFE:I = 0x10

.field private static final gd:I = 0x4c

.field private static final ge:B = 0x3dt

.field private static final gf:B = 0xat

.field private static final gg:Ljava/lang/String; = "US-ASCII"

.field private static final gh:B = -0x5t

.field private static final gi:B = -0x1t

.field private static final gj:[B

.field private static final gk:[B

.field private static final gl:[B

.field private static final gm:[B

.field private static final gn:[B

.field private static final go:[B

.field static final synthetic gp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v2, 0x100

    const/16 v1, 0x40

    const-class v0, Lcom/glympse/android/hal/utils/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    :goto_d
    sput-boolean v0, Lcom/glympse/android/hal/utils/Base64;->gp:Z

    new-array v0, v1, [B

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/glympse/android/hal/utils/Base64;->gj:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_62

    sput-object v0, Lcom/glympse/android/hal/utils/Base64;->gk:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_e6

    sput-object v0, Lcom/glympse/android/hal/utils/Base64;->gl:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_10a

    sput-object v0, Lcom/glympse/android/hal/utils/Base64;->gm:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_18e

    sput-object v0, Lcom/glympse/android/hal/utils/Base64;->gn:[B

    const/16 v0, 0x101

    new-array v0, v0, [B

    fill-array-data v0, :array_1b2

    sput-object v0, Lcom/glympse/android/hal/utils/Base64;->go:[B

    return-void

    :cond_3c
    const/4 v0, 0x0

    goto :goto_d

    :array_3e
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_62
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data

    :array_e6
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_10a
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data

    :array_18e
    .array-data 0x1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data

    :array_1b2
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0xf7t
        0xf7t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x25t
        0xf7t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BI[BII)I
    .registers 11

    const/16 v4, 0x3d

    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-nez p0, :cond_f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source array was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-nez p2, :cond_19

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination array was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    if-ltz p1, :cond_20

    add-int/lit8 v2, p1, 0x3

    array-length v3, p0

    if-lt v2, v3, :cond_3b

    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Source array with length %d cannot have offset of %d and still process four bytes."

    new-array v1, v1, [Ljava/lang/Object;

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3b
    if-ltz p3, :cond_42

    add-int/lit8 v2, p3, 0x2

    array-length v3, p2

    if-lt v2, v3, :cond_5d

    :cond_42
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Destination array with length %d cannot have offset of %d and still store three bytes."

    new-array v1, v1, [Ljava/lang/Object;

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5d
    invoke-static {p4}, Lcom/glympse/android/hal/utils/Base64;->g(I)[B

    move-result-object v2

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_80

    aget-byte v1, p0, p1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    :goto_7f
    return v0

    :cond_80
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_b2

    aget-byte v0, p0, p1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x12

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v0, v3

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    move v0, v1

    goto :goto_7f

    :cond_b2
    aget-byte v0, p0, p1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x12

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, p3, 0x2

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    const/4 v0, 0x3

    goto :goto_7f
.end method

.method private static a([BII[BII)[B
    .registers 11

    const/16 v4, 0x3d

    const/4 v0, 0x0

    invoke-static {p5}, Lcom/glympse/android/hal/utils/Base64;->f(I)[B

    move-result-object v3

    if-lez p2, :cond_2c

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    move v2, v1

    :goto_10
    const/4 v1, 0x1

    if-le p2, v1, :cond_2e

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    :goto_1b
    or-int/2addr v1, v2

    const/4 v2, 0x2

    if-le p2, v2, :cond_27

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    :cond_27
    or-int/2addr v0, v1

    packed-switch p2, :pswitch_data_8c

    :goto_2b
    return-object p3

    :cond_2c
    move v2, v0

    goto :goto_10

    :cond_2e
    move v1, v0

    goto :goto_1b

    :pswitch_30
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    aput-byte v1, p3, p4

    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    aput-byte v2, p3, v1

    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    aput-byte v2, p3, v1

    add-int/lit8 v1, p4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    aput-byte v0, p3, v1

    goto :goto_2b

    :pswitch_53
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    aput-byte v1, p3, p4

    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    aput-byte v2, p3, v1

    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    aput-byte v0, p3, v1

    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    goto :goto_2b

    :pswitch_72
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    aput-byte v1, p3, p4

    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    aput-byte v0, p3, v1

    add-int/lit8 v0, p4, 0x2

    aput-byte v4, p3, v0

    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    goto :goto_2b

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_72
        :pswitch_53
        :pswitch_30
    .end packed-switch
.end method

.method private static a([B[BII)[B
    .registers 10

    const/4 v1, 0x0

    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/glympse/android/hal/utils/Base64;->a([BII[BII)[B

    return-object p0
.end method

.method static synthetic b([BI[BII)I
    .registers 6

    invoke-static {p0, p1, p2, p3, p4}, Lcom/glympse/android/hal/utils/Base64;->a([BI[BII)I

    move-result v0

    return v0
.end method

.method static synthetic b([BII[BII)[B
    .registers 7

    invoke-static/range {p0 .. p5}, Lcom/glympse/android/hal/utils/Base64;->a([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic b([B[BII)[B
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/glympse/android/hal/utils/Base64;->a([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/glympse/android/hal/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Input string was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :try_start_d
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_12} :catch_65

    move-result-object v0

    :goto_13
    array-length v1, v0

    invoke-static {v0, v4, v1, p1}, Lcom/glympse/android/hal/utils/Base64;->decode([BIII)[B

    move-result-object v0

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_6b

    move v1, v2

    :goto_1d
    if-eqz v0, :cond_64

    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_64

    if-nez v1, :cond_64

    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v4, 0xff00

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    const v2, 0x8b1f

    if-ne v2, v1, :cond_64

    const/16 v1, 0x800

    new-array v1, v1, [B

    :try_start_3b
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_7d
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_40} :catch_a5

    :try_start_40
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_9a
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_45} :catch_a9

    :try_start_45
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_9d
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_ac

    :goto_4a
    :try_start_4a
    invoke-virtual {v4, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_6d

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_9f
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_54} :catch_55

    goto :goto_4a

    :catch_55
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    :goto_58
    :try_start_58
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_a2

    :try_start_5b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_8e

    :goto_5e
    :try_start_5e
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_90

    :goto_61
    :try_start_61
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_92

    :cond_64
    :goto_64
    return-object v0

    :catch_65
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_13

    :cond_6b
    move v1, v4

    goto :goto_1d

    :cond_6d
    :try_start_6d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_9f
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_55

    move-result-object v0

    :try_start_71
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_8a

    :goto_74
    :try_start_74
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_8c

    :goto_77
    :try_start_77
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_64

    :catch_7b
    move-exception v1

    goto :goto_64

    :catchall_7d
    move-exception v0

    move-object v2, v3

    move-object v5, v3

    :goto_80
    :try_start_80
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_94

    :goto_83
    :try_start_83
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_96

    :goto_86
    :try_start_86
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_98

    :goto_89
    throw v0

    :catch_8a
    move-exception v1

    goto :goto_74

    :catch_8c
    move-exception v1

    goto :goto_77

    :catch_8e
    move-exception v1

    goto :goto_5e

    :catch_90
    move-exception v1

    goto :goto_61

    :catch_92
    move-exception v1

    goto :goto_64

    :catch_94
    move-exception v1

    goto :goto_83

    :catch_96
    move-exception v1

    goto :goto_86

    :catch_98
    move-exception v1

    goto :goto_89

    :catchall_9a
    move-exception v0

    move-object v5, v3

    goto :goto_80

    :catchall_9d
    move-exception v0

    goto :goto_80

    :catchall_9f
    move-exception v0

    move-object v3, v4

    goto :goto_80

    :catchall_a2
    move-exception v0

    move-object v5, v4

    goto :goto_80

    :catch_a5
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto :goto_58

    :catch_a9
    move-exception v1

    move-object v4, v3

    goto :goto_58

    :catch_ac
    move-exception v1

    move-object v4, v5

    goto :goto_58
.end method

.method public static decode([B)[B
    .registers 3

    const/4 v1, 0x0

    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lcom/glympse/android/hal/utils/Base64;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .registers 16

    const/4 v3, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot decode null source array."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-ltz p1, :cond_16

    add-int v0, p1, p2

    array-length v2, p0

    if-le v0, v2, :cond_37

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Source array with length %d cannot have offset of %d and process %d bytes."

    new-array v3, v11, [Ljava/lang/Object;

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    if-nez p2, :cond_3c

    new-array v0, v1, [B

    :goto_3b
    return-object v0

    :cond_3c
    if-ge p2, v3, :cond_53

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Base64-encoded string must have at least four characters, but length specified was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    invoke-static {p3}, Lcom/glympse/android/hal/utils/Base64;->g(I)[B

    move-result-object v5

    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v6, v0, [B

    new-array v7, v3, [B

    move v4, p1

    move v2, v1

    move v3, v1

    :goto_62
    add-int v0, p1, p2

    if-ge v4, v0, :cond_b7

    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v5, v0

    const/4 v8, -0x5

    if-lt v0, v8, :cond_8c

    const/4 v8, -0x1

    if-lt v0, v8, :cond_b4

    add-int/lit8 v0, v2, 0x1

    aget-byte v8, p0, v4

    aput-byte v8, v7, v2

    if-le v0, v11, :cond_b2

    invoke-static {v7, v1, v6, v3, p3}, Lcom/glympse/android/hal/utils/Base64;->a([BI[BII)I

    move-result v0

    add-int/2addr v0, v3

    aget-byte v2, p0, v4

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_aa

    :goto_85
    new-array v2, v0, [B

    invoke-static {v6, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    goto :goto_3b

    :cond_8c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bad Base64 input character decimal %d in array position %d"

    new-array v3, v10, [Ljava/lang/Object;

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_aa
    move v2, v0

    move v0, v1

    :goto_ac
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_62

    :cond_b2
    move v2, v3

    goto :goto_ac

    :cond_b4
    move v0, v2

    move v2, v3

    goto :goto_ac

    :cond_b7
    move v0, v3

    goto :goto_85
.end method

.method public static decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p0}, Lcom/glympse/android/hal/utils/Base64;->decodeFromFile(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x0

    :try_start_5
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_23
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_16

    :try_start_f
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_25

    :try_start_12
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1f

    :goto_15
    return-void

    :catch_16
    move-exception v0

    move-object v1, v2

    :goto_18
    :try_start_18
    throw v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception v0

    move-object v2, v1

    :goto_1b
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_21

    :goto_1e
    throw v0

    :catch_1f
    move-exception v0

    goto :goto_15

    :catch_21
    move-exception v1

    goto :goto_1e

    :catchall_23
    move-exception v0

    goto :goto_1b

    :catch_25
    move-exception v0

    goto :goto_18
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v4, v6

    if-lez v2, :cond_38

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "File is too big for this convenience method ("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_33
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_31} :catch_31

    :catch_31
    move-exception v0

    :goto_32
    :try_start_32
    throw v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v0

    :goto_34
    :try_start_34
    invoke-virtual {v1}, Lcom/glympse/android/hal/utils/Base64$InputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_66

    :goto_37
    throw v0

    :cond_38
    :try_start_38
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v2, v4

    new-array v4, v2, [B

    new-instance v2, Lcom/glympse/android/hal/utils/Base64$InputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x0

    invoke-direct {v2, v5, v3}, Lcom/glympse/android/hal/utils/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_4f
    .catchall {:try_start_38 .. :try_end_4f} :catchall_33
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_4f} :catch_31

    :goto_4f
    const/16 v1, 0x1000

    :try_start_51
    invoke-virtual {v2, v4, v0, v1}, Lcom/glympse/android/hal/utils/Base64$InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_59

    add-int/2addr v0, v1

    goto :goto_4f

    :cond_59
    new-array v1, v0, [B

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v3, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_60
    .catchall {:try_start_51 .. :try_end_60} :catchall_68
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_60} :catch_6b

    :try_start_60
    invoke-virtual {v2}, Lcom/glympse/android/hal/utils/Base64$InputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64

    :goto_63
    return-object v1

    :catch_64
    move-exception v0

    goto :goto_63

    :catch_66
    move-exception v1

    goto :goto_37

    :catchall_68
    move-exception v0

    move-object v1, v2

    goto :goto_34

    :catch_6b
    move-exception v0

    move-object v1, v2

    goto :goto_32
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Lcom/glympse/android/hal/utils/Base64$OutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/glympse/android/hal/utils/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_25
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_19

    :try_start_c
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/glympse/android/hal/utils/Base64$OutputStream;->write([B)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_28

    :try_start_15
    invoke-virtual {v1}, Lcom/glympse/android/hal/utils/Base64$OutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_21

    :goto_18
    return-void

    :catch_19
    move-exception v0

    move-object v1, v2

    :goto_1b
    :try_start_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v0

    :goto_1d
    :try_start_1d
    invoke-virtual {v1}, Lcom/glympse/android/hal/utils/Base64$OutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_23

    :goto_20
    throw v0

    :catch_21
    move-exception v0

    goto :goto_18

    :catch_23
    move-exception v1

    goto :goto_20

    :catchall_25
    move-exception v0

    move-object v1, v2

    goto :goto_1d

    :catch_28
    move-exception v0

    goto :goto_1b
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/glympse/android/hal/utils/Base64;->decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 6

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/glympse/android/hal/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    :try_start_5
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_3a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_a} :catch_2f

    if-nez p2, :cond_1d

    :try_start_c
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v0

    :goto_12
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_27
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_3f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_15} :catch_3d

    move-result-object v0

    :try_start_16
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_32

    :goto_19
    :try_start_19
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_34

    :goto_1c
    return-object v0

    :cond_1d
    :try_start_1d
    new-instance v0, Lcom/glympse/android/hal/utils/Base64$1;

    invoke-direct {v0, v2, p2}, Lcom/glympse/android/hal/utils/Base64$1;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_27
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_3f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1d .. :try_end_22} :catch_3d

    move-object v1, v0

    goto :goto_12

    :catch_24
    move-exception v0

    move-object v2, v1

    :goto_26
    :try_start_26
    throw v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v0

    :goto_28
    :try_start_28
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_36

    :goto_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_38

    :goto_2e
    throw v0

    :catch_2f
    move-exception v0

    move-object v2, v1

    :goto_31
    :try_start_31
    throw v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_27

    :catch_32
    move-exception v2

    goto :goto_19

    :catch_34
    move-exception v1

    goto :goto_1c

    :catch_36
    move-exception v2

    goto :goto_2b

    :catch_38
    move-exception v1

    goto :goto_2e

    :catchall_3a
    move-exception v0

    move-object v2, v1

    goto :goto_28

    :catch_3d
    move-exception v0

    goto :goto_31

    :catch_3f
    move-exception v0

    goto :goto_26
.end method

.method public static encode([BII)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p2}, Lcom/glympse/android/hal/utils/Base64;->encodeBytes([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 7

    const/4 v4, 0x3

    const/4 v3, 0x0

    new-array v0, v4, [B

    const/4 v1, 0x4

    new-array v1, v1, [B

    :goto_7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-static {v1, v0, v2, v3}, Lcom/glympse/android/hal/utils/Base64;->a([B[BII)[B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_1f
    return-void
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .registers 9

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x0

    new-array v2, v5, [B

    new-array v3, v6, [B

    :cond_7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-static {v3, v2, v0, v1}, Lcom/glympse/android/hal/utils/Base64;->a([B[BII)[B

    move v0, v1

    :goto_1c
    if-ge v0, v6, :cond_7

    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_29
    return-void
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/glympse/android/hal/utils/Base64;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_14

    move-result-object v0

    :cond_8
    sget-boolean v1, Lcom/glympse/android/hal/utils/Base64;->gp:Z

    if-nez v1, :cond_23

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_14
    move-exception v1

    sget-boolean v2, Lcom/glympse/android/hal/utils/Base64;->gp:Z

    if-nez v2, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_23
    return-object v0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/glympse/android/hal/utils/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, p1, p2, v1}, Lcom/glympse/android/hal/utils/Base64;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_12

    move-result-object v0

    :cond_6
    sget-boolean v1, Lcom/glympse/android/hal/utils/Base64;->gp:Z

    if-nez v1, :cond_21

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_12
    move-exception v1

    sget-boolean v2, Lcom/glympse/android/hal/utils/Base64;->gp:Z

    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_21
    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .registers 7

    invoke-static {p0, p1, p2, p3}, Lcom/glympse/android/hal/utils/Base64;->encodeBytesToBytes([BIII)[B

    move-result-object v1

    :try_start_4
    new-instance v0, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_b} :catch_c

    :goto_b
    return-object v0

    :catch_c
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_b
.end method

.method public static encodeBytesToBytes([B)[B
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/glympse/android/hal/utils/Base64;->encodeBytesToBytes([BIII)[B
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_9

    move-result-object v0

    :cond_8
    return-object v0

    :catch_9
    move-exception v1

    sget-boolean v2, Lcom/glympse/android/hal/utils/Base64;->gp:Z

    if-nez v2, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOExceptions only come from GZipping, which is turned off: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static encodeBytesToBytes([BIII)[B
    .registers 15

    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot serialize a null array."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-gez p1, :cond_25

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot have negative offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    if-gez p2, :cond_3c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot have length offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    add-int v1, p1, p2

    array-length v4, p0

    if-le v1, v4, :cond_63

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot have offset of %d and length of %d with array of length %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x2

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_63
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_9c

    :try_start_67
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_101
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6c} :catch_8c

    :try_start_6c
    new-instance v1, Lcom/glympse/android/hal/utils/Base64$OutputStream;

    or-int/lit8 v0, p3, 0x1

    invoke-direct {v1, v4, v0}, Lcom/glympse/android/hal/utils/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_105
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_73} :catch_10d

    :try_start_73
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_108
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_78} :catch_112

    :try_start_78
    invoke-virtual {v2, p0, p1, p2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_10a
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7e} :catch_116

    :try_start_7e
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_f5

    :goto_81
    :try_start_81
    invoke-virtual {v1}, Lcom/glympse/android/hal/utils/Base64$OutputStream;->close()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_f7

    :goto_84
    :try_start_84
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_f9

    :goto_87
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :cond_8b
    :goto_8b
    return-object v3

    :catch_8c
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    :goto_8f
    :try_start_8f
    throw v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_90

    :catchall_90
    move-exception v0

    move-object v4, v2

    :goto_92
    :try_start_92
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_fb

    :goto_95
    :try_start_95
    invoke-virtual {v1}, Lcom/glympse/android/hal/utils/Base64$OutputStream;->close()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_fd

    :goto_98
    :try_start_98
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_ff

    :goto_9b
    throw v0

    :cond_9c
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_d8

    move v6, v0

    :goto_a1
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, v0, 0x4

    rem-int/lit8 v0, p2, 0x3

    if-lez v0, :cond_da

    const/4 v0, 0x4

    :goto_aa
    add-int/2addr v0, v1

    if-eqz v6, :cond_b0

    div-int/lit8 v1, v0, 0x4c

    add-int/2addr v0, v1

    :cond_b0
    new-array v3, v0, [B

    add-int/lit8 v10, p2, -0x2

    move v8, v7

    move v4, v7

    move v9, v7

    :goto_b7
    if-ge v9, v10, :cond_dc

    add-int v1, v9, p1

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/glympse/android/hal/utils/Base64;->a([BII[BII)[B

    add-int/lit8 v0, v8, 0x4

    if-eqz v6, :cond_d1

    const/16 v1, 0x4c

    if-lt v0, v1, :cond_d1

    add-int/lit8 v0, v4, 0x4

    const/16 v1, 0xa

    aput-byte v1, v3, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v7

    :cond_d1
    add-int/lit8 v1, v9, 0x3

    add-int/lit8 v4, v4, 0x4

    move v8, v0

    move v9, v1

    goto :goto_b7

    :cond_d8
    move v6, v7

    goto :goto_a1

    :cond_da
    move v0, v7

    goto :goto_aa

    :cond_dc
    if-ge v9, p2, :cond_e9

    add-int v1, v9, p1

    sub-int v2, p2, v9

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/glympse/android/hal/utils/Base64;->a([BII[BII)[B

    add-int/lit8 v4, v4, 0x4

    :cond_e9
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    if-gt v4, v0, :cond_8b

    new-array v0, v4, [B

    invoke-static {v3, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v0

    goto :goto_8b

    :catch_f5
    move-exception v0

    goto :goto_81

    :catch_f7
    move-exception v0

    goto :goto_84

    :catch_f9
    move-exception v0

    goto :goto_87

    :catch_fb
    move-exception v2

    goto :goto_95

    :catch_fd
    move-exception v1

    goto :goto_98

    :catch_ff
    move-exception v1

    goto :goto_9b

    :catchall_101
    move-exception v0

    move-object v1, v3

    move-object v4, v3

    goto :goto_92

    :catchall_105
    move-exception v0

    move-object v1, v3

    goto :goto_92

    :catchall_108
    move-exception v0

    goto :goto_92

    :catchall_10a
    move-exception v0

    move-object v3, v2

    goto :goto_92

    :catch_10d
    move-exception v0

    move-object v1, v3

    move-object v2, v4

    goto/16 :goto_8f

    :catch_112
    move-exception v0

    move-object v2, v4

    goto/16 :goto_8f

    :catch_116
    move-exception v0

    move-object v3, v2

    move-object v2, v4

    goto/16 :goto_8f
.end method

.method public static encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p0}, Lcom/glympse/android/hal/utils/Base64;->encodeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_5
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_28
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_1c

    :try_start_f
    const-string v2, "US-ASCII"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_2b

    :try_start_18
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_24

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    move-object v1, v2

    :goto_1e
    :try_start_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    :goto_20
    :try_start_20
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_26

    :goto_23
    throw v0

    :catch_24
    move-exception v0

    goto :goto_1b

    :catch_26
    move-exception v1

    goto :goto_23

    :catchall_28
    move-exception v0

    move-object v1, v2

    goto :goto_20

    :catch_2b
    move-exception v0

    goto :goto_1e
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x3ff6666666666666L

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0

    add-double/2addr v4, v6

    double-to-int v1, v4

    const/16 v4, 0x28

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v4, v1, [B

    new-instance v1, Lcom/glympse/android/hal/utils/Base64$InputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x1

    invoke-direct {v1, v5, v3}, Lcom/glympse/android/hal/utils/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_51
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2e} :catch_44

    :goto_2e
    const/16 v2, 0x1000

    :try_start_30
    invoke-virtual {v1, v4, v0, v2}, Lcom/glympse/android/hal/utils/Base64$InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_38

    add-int/2addr v0, v2

    goto :goto_2e

    :cond_38
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "US-ASCII"

    invoke-direct {v2, v4, v3, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_47
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_40} :catch_53

    :try_start_40
    invoke-virtual {v1}, Lcom/glympse/android/hal/utils/Base64$InputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_4d

    :goto_43
    return-object v2

    :catch_44
    move-exception v0

    move-object v1, v2

    :goto_46
    :try_start_46
    throw v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v0

    move-object v2, v1

    :goto_49
    :try_start_49
    invoke-virtual {v2}, Lcom/glympse/android/hal/utils/Base64$InputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4f

    :goto_4c
    throw v0

    :catch_4d
    move-exception v0

    goto :goto_43

    :catch_4f
    move-exception v1

    goto :goto_4c

    :catchall_51
    move-exception v0

    goto :goto_49

    :catch_53
    move-exception v0

    goto :goto_46
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/glympse/android/hal/utils/Base64;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot serialize a null object."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :try_start_b
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_77
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_49

    :try_start_10
    new-instance v3, Lcom/glympse/android/hal/utils/Base64$OutputStream;

    or-int/lit8 v0, p1, 0x1

    invoke-direct {v3, v4, v0}, Lcom/glympse/android/hal/utils/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_7c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_83

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_41

    :try_start_1b
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_80
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_87

    :try_start_20
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v0

    :goto_26
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_4e
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_29} :catch_8a

    :try_start_29
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_67

    :goto_2c
    :try_start_2c
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_69

    :goto_2f
    :try_start_2f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_6b

    :goto_32
    :try_start_32
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_6d

    :goto_35
    :try_start_35
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_40
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_35 .. :try_end_40} :catch_5c

    :goto_40
    return-object v0

    :cond_41
    :try_start_41
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_80
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_46} :catch_87

    move-object v2, v1

    move-object v1, v0

    goto :goto_26

    :catch_49
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_4d
    :try_start_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v0

    :goto_4f
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_6f

    :goto_52
    :try_start_52
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_71

    :goto_55
    :try_start_55
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_73

    :goto_58
    :try_start_58
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_75

    :goto_5b
    throw v0

    :catch_5c
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_40

    :catch_67
    move-exception v0

    goto :goto_2c

    :catch_69
    move-exception v0

    goto :goto_2f

    :catch_6b
    move-exception v0

    goto :goto_32

    :catch_6d
    move-exception v0

    goto :goto_35

    :catch_6f
    move-exception v1

    goto :goto_52

    :catch_71
    move-exception v1

    goto :goto_55

    :catch_73
    move-exception v1

    goto :goto_58

    :catch_75
    move-exception v1

    goto :goto_5b

    :catchall_77
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_4f

    :catchall_7c
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_4f

    :catchall_80
    move-exception v0

    move-object v2, v1

    goto :goto_4f

    :catch_83
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_4d

    :catch_87
    move-exception v0

    move-object v2, v1

    goto :goto_4d

    :catch_8a
    move-exception v0

    goto :goto_4d
.end method

.method public static encodeToFile([BLjava/lang/String;)V
    .registers 6

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Data to encode was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v2, 0x0

    :try_start_b
    new-instance v1, Lcom/glympse/android/hal/utils/Base64$OutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Lcom/glympse/android/hal/utils/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_2a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_1d

    :try_start_16
    invoke-virtual {v1, p0}, Lcom/glympse/android/hal/utils/Base64$OutputStream;->write([B)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_20
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_2c

    :try_start_19
    invoke-virtual {v1}, Lcom/glympse/android/hal/utils/Base64$OutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_26

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    move-object v1, v2

    :goto_1f
    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v0

    move-object v2, v1

    :goto_22
    :try_start_22
    invoke-virtual {v2}, Lcom/glympse/android/hal/utils/Base64$OutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_28

    :goto_25
    throw v0

    :catch_26
    move-exception v0

    goto :goto_1c

    :catch_28
    move-exception v1

    goto :goto_25

    :catchall_2a
    move-exception v0

    goto :goto_22

    :catch_2c
    move-exception v0

    goto :goto_1f
.end method

.method private static final f(I)[B
    .registers 3

    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/glympse/android/hal/utils/Base64;->gl:[B

    :goto_8
    return-object v0

    :cond_9
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    sget-object v0, Lcom/glympse/android/hal/utils/Base64;->gn:[B

    goto :goto_8

    :cond_12
    sget-object v0, Lcom/glympse/android/hal/utils/Base64;->gj:[B

    goto :goto_8
.end method

.method private static final g(I)[B
    .registers 3

    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/glympse/android/hal/utils/Base64;->gm:[B

    :goto_8
    return-object v0

    :cond_9
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    sget-object v0, Lcom/glympse/android/hal/utils/Base64;->go:[B

    goto :goto_8

    :cond_12
    sget-object v0, Lcom/glympse/android/hal/utils/Base64;->gk:[B

    goto :goto_8
.end method

.method static synthetic h(I)[B
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/utils/Base64;->g(I)[B

    move-result-object v0

    return-object v0
.end method
