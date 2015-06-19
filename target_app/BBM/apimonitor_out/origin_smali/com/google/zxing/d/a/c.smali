.class public final Lcom/google/zxing/d/a/c;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final a:Lcom/google/zxing/b/b/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/b/b/c;

    sget-object v1, Lcom/google/zxing/b/b/a;->h:Lcom/google/zxing/b/b/a;

    invoke-direct {v0, v1}, Lcom/google/zxing/b/b/c;-><init>(Lcom/google/zxing/b/b/a;)V

    iput-object v0, p0, Lcom/google/zxing/d/a/c;->a:Lcom/google/zxing/b/b/c;

    return-void
.end method


# virtual methods
.method public final a([BIIII)V
    .registers 13

    const/4 v1, 0x0

    add-int v3, p3, p4

    if-nez p5, :cond_22

    const/4 v0, 0x1

    :goto_6
    div-int v2, v3, v0

    new-array v4, v2, [I

    move v2, v1

    :goto_b
    if-ge v2, v3, :cond_24

    if-eqz p5, :cond_15

    rem-int/lit8 v5, v2, 0x2

    add-int/lit8 v6, p5, -0x1

    if-ne v5, v6, :cond_1f

    :cond_15
    div-int v5, v2, v0

    add-int v6, v2, p2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v4, v5

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_22
    const/4 v0, 0x2

    goto :goto_6

    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/google/zxing/d/a/c;->a:Lcom/google/zxing/b/b/c;

    div-int v3, p4, v0

    invoke-virtual {v2, v4, v3}, Lcom/google/zxing/b/b/c;->a([II)V
    :try_end_2b
    .catch Lcom/google/zxing/b/b/e; {:try_start_24 .. :try_end_2b} :catch_41

    :goto_2b
    if-ge v1, p3, :cond_47

    if-eqz p5, :cond_35

    rem-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, p5, -0x1

    if-ne v2, v3, :cond_3e

    :cond_35
    add-int v2, v1, p2

    div-int v3, v1, v0

    aget v3, v4, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :catch_41
    move-exception v0

    invoke-static {}, Lcom/google/zxing/d;->a()Lcom/google/zxing/d;

    move-result-object v0

    throw v0

    :cond_47
    return-void
.end method
