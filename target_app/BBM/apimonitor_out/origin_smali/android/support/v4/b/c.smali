.class public final Landroid/support/v4/b/c;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# static fields
.field static final a:[I

.field static final b:[J

.field static final c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Landroid/support/v4/b/c;->a:[I

    new-array v0, v1, [J

    sput-object v0, Landroid/support/v4/b/c;->b:[J

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/b/c;->c:[Ljava/lang/Object;

    return-void
.end method

.method public static a(I)I
    .registers 2

    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v4/b/c;->c(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static a([III)I
    .registers 7

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    move v2, v1

    move v1, v0

    :goto_5
    if-gt v1, v2, :cond_19

    add-int v0, v1, v2

    ushr-int/lit8 v0, v0, 0x1

    aget v3, p0, v0

    if-ge v3, p2, :cond_13

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_5

    :cond_13
    if-le v3, p2, :cond_1b

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto :goto_5

    :cond_19
    xor-int/lit8 v0, v1, -0x1

    :cond_1b
    return v0
.end method

.method static a([JIJ)I
    .registers 10

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    move v2, v1

    move v1, v0

    :goto_5
    if-gt v1, v2, :cond_1d

    add-int v0, v1, v2

    ushr-int/lit8 v0, v0, 0x1

    aget-wide v3, p0, v0

    cmp-long v5, v3, p2

    if-gez v5, :cond_15

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_5

    :cond_15
    cmp-long v2, v3, p2

    if-lez v2, :cond_1f

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto :goto_5

    :cond_1d
    xor-int/lit8 v0, v1, -0x1

    :cond_1f
    return v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static b(I)I
    .registers 2

    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Landroid/support/v4/b/c;->c(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private static c(I)I
    .registers 4

    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_11

    shl-int v0, v2, v0

    add-int/lit8 p0, v0, -0xc

    :cond_10
    return p0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
