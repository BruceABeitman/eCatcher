.class public final Lcom/google/zxing/e/e;
.super Lcom/google/zxing/e/p;
.source "EAN13Reader.java"


# static fields
.field static final a:[I


# instance fields
.field private final f:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/e/e;->a:[I

    return-void

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/zxing/e/p;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/e/e;->f:[I

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/zxing/b/a;[ILjava/lang/StringBuilder;)I
    .registers 13

    iget-object v4, p0, Lcom/google/zxing/e/e;->f:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v4, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v4, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v4, v0

    iget v5, p1, Lcom/google/zxing/b/a;->b:I

    const/4 v0, 0x1

    aget v2, p2, v0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    move v0, v1

    :goto_1b
    const/4 v1, 0x6

    if-ge v3, v1, :cond_45

    if-ge v2, v5, :cond_45

    sget-object v1, Lcom/google/zxing/e/e;->e:[[I

    invoke-static {p1, v4, v2, v1}, Lcom/google/zxing/e/e;->a(Lcom/google/zxing/b/a;[II[[I)I

    move-result v6

    rem-int/lit8 v1, v6, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v7, v4

    const/4 v1, 0x0

    :goto_30
    if-ge v1, v7, :cond_38

    aget v8, v4, v1

    add-int/2addr v2, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_38
    const/16 v1, 0xa

    if-lt v6, v1, :cond_41

    const/4 v1, 0x1

    rsub-int/lit8 v6, v3, 0x5

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    :cond_41
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1b

    :cond_45
    const/4 v1, 0x0

    :goto_46
    const/16 v3, 0xa

    if-ge v1, v3, :cond_82

    sget-object v3, Lcom/google/zxing/e/e;->a:[I

    aget v3, v3, v1

    if-ne v0, v3, :cond_7f

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    sget-object v1, Lcom/google/zxing/e/e;->c:[I

    invoke-static {p1, v2, v0, v1}, Lcom/google/zxing/e/e;->a(Lcom/google/zxing/b/a;IZ[I)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v0, 0x0

    :goto_62
    const/4 v2, 0x6

    if-ge v0, v2, :cond_8a

    if-ge v1, v5, :cond_8a

    sget-object v2, Lcom/google/zxing/e/e;->d:[[I

    invoke-static {p1, v4, v1, v2}, Lcom/google/zxing/e/e;->a(Lcom/google/zxing/b/a;[II[[I)I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v6, v4

    const/4 v2, 0x0

    :goto_75
    if-ge v2, v6, :cond_87

    aget v3, v4, v2

    add-int/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_75

    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_82
    invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;

    move-result-object v0

    throw v0

    :cond_87
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    :cond_8a
    return v1
.end method

.method final b()Lcom/google/zxing/a;
    .registers 2

    sget-object v0, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;

    return-object v0
.end method
