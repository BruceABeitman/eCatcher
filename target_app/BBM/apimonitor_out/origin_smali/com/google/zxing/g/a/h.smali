.class final Lcom/google/zxing/g/a/h;
.super Lcom/google/zxing/g/a/c;
.source "DataMask.java"


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/zxing/g/a/c;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/google/zxing/g/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method final a(II)Z
    .registers 5

    ushr-int/lit8 v0, p1, 0x1

    div-int/lit8 v1, p2, 0x3

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
