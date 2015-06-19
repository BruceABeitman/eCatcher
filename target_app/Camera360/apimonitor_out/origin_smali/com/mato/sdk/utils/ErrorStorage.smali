.class public Lcom/mato/sdk/utils/ErrorStorage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mato/sdk/utils/ErrorStorage$a;,
        Lcom/mato/sdk/utils/ErrorStorage$b;
    }
.end annotation


# static fields
.field private static final a:I = 0x8

.field private static final b:I = 0x6

.field private static final c:[Lcom/mato/sdk/utils/ErrorStorage$b;

.field private static d:[I

.field private static e:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x4000

    invoke-static {}, Lcom/mato/sdk/utils/ErrorStorage$b;->values()[Lcom/mato/sdk/utils/ErrorStorage$b;

    move-result-object v0

    sput-object v0, Lcom/mato/sdk/utils/ErrorStorage;->c:[Lcom/mato/sdk/utils/ErrorStorage$b;

    new-array v0, v1, [I

    sput-object v0, Lcom/mato/sdk/utils/ErrorStorage;->d:[I

    new-array v0, v1, [I

    sput-object v0, Lcom/mato/sdk/utils/ErrorStorage;->e:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/mato/sdk/utils/ErrorStorage$b;)I
    .registers 5

    invoke-virtual {p0}, Lcom/mato/sdk/utils/ErrorStorage$b;->ordinal()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x8

    sget-object v1, Lcom/mato/sdk/utils/ErrorStorage;->d:[I

    aget v2, v1, v0

    add-int/lit8 v3, v2, 0x1

    aput v3, v1, v0

    return v2
.end method

.method private static a(Lcom/mato/sdk/utils/ErrorStorage$b;I)I
    .registers 6

    invoke-virtual {p0}, Lcom/mato/sdk/utils/ErrorStorage$b;->ordinal()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x8

    sget-object v1, Lcom/mato/sdk/utils/ErrorStorage;->d:[I

    aget v2, v1, v0

    add-int/lit8 v3, v2, 0x1

    aput v3, v1, v0

    return v2
.end method

.method private static a()V
    .registers 0

    return-void
.end method

.method private static a(Ljava/util/List;[I)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    aget v1, p1, v0

    if-eqz v1, :cond_23

    shr-int/lit8 v1, v0, 0x8

    sget-object v2, Lcom/mato/sdk/utils/ErrorStorage;->c:[Lcom/mato/sdk/utils/ErrorStorage$b;

    aget-object v1, v2, v1

    and-int/lit16 v2, v0, 0xff

    aget v3, p1, v0

    new-instance v4, Lcom/mato/sdk/utils/ErrorStorage$a;

    new-instance v5, Lcom/mato/sdk/utils/ErrorStorage;

    invoke-direct {v5}, Lcom/mato/sdk/utils/ErrorStorage;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/mato/sdk/utils/ErrorStorage$a;-><init>(Lcom/mato/sdk/utils/ErrorStorage;Lcom/mato/sdk/utils/ErrorStorage$b;II)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static b()V
    .registers 3

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    sget-object v2, Lcom/mato/sdk/utils/ErrorStorage;->d:[I

    array-length v2, v2

    if-lt v0, v2, :cond_8

    return-void

    :cond_8
    sget-object v2, Lcom/mato/sdk/utils/ErrorStorage;->d:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static c()Ljava/util/List;
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/mato/sdk/utils/ErrorStorage;->e:[I

    invoke-static {v1}, Lcom/mato/sdk/utils/ErrorStorage;->updateNativeCounters([I)V

    sget-object v1, Lcom/mato/sdk/utils/ErrorStorage;->e:[I

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/ErrorStorage;->a(Ljava/util/List;[I)V

    sget-object v1, Lcom/mato/sdk/utils/ErrorStorage;->d:[I

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/ErrorStorage;->a(Ljava/util/List;[I)V

    invoke-static {}, Lcom/mato/sdk/utils/ErrorStorage;->b()V

    return-object v0
.end method

.method private static native updateNativeCounters([I)V
.end method
