.class public Lcom/lenovo/anyshare/sdk/internal/dk;
.super Ljava/lang/Object;
.source "FrequencyEncoder.java"


# direct methods
.method private static a(I)Lcom/lenovo/anyshare/sdk/internal/dj$a;
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/dj$a;

    invoke-direct {v0, p0, v2, v2}, Lcom/lenovo/anyshare/sdk/internal/dj$a;-><init>(ISS)V

    iget-object v1, v0, Lcom/lenovo/anyshare/sdk/internal/dj$a;->b:[S

    aput-short v2, v1, v2

    return-object v0
.end method

.method private static a(ILcom/lenovo/anyshare/sdk/internal/cv;)Lcom/lenovo/anyshare/sdk/internal/dj$a;
    .registers 7

    const/4 v4, 0x0

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/dj$a;

    invoke-direct {v0, p0, v4, v4}, Lcom/lenovo/anyshare/sdk/internal/dj$a;-><init>(ISS)V

    iget-object v1, v0, Lcom/lenovo/anyshare/sdk/internal/dj$a;->b:[S

    iget-short v2, p1, Lcom/lenovo/anyshare/sdk/internal/cv;->c:S

    aput-short v2, v1, v4

    iget-object v1, v0, Lcom/lenovo/anyshare/sdk/internal/dj$a;->b:[S

    const/4 v2, 0x1

    iget-short v3, p1, Lcom/lenovo/anyshare/sdk/internal/cv;->d:S

    aput-short v3, v1, v2

    iget-object v1, v0, Lcom/lenovo/anyshare/sdk/internal/dj$a;->b:[S

    const/4 v2, 0x2

    aput-short v4, v1, v2

    return-object v0
.end method

.method public static a([B)Lcom/lenovo/anyshare/sdk/internal/dj;
    .registers 10

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    array-length v6, p0

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v2, v6, 0x1

    new-array v3, v2, [Lcom/lenovo/anyshare/sdk/internal/dj$a;

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/dj;

    invoke-direct {v0, v3}, Lcom/lenovo/anyshare/sdk/internal/dj;-><init>([Lcom/lenovo/anyshare/sdk/internal/dj$a;)V

    const/4 v1, 0x0

    :goto_11
    array-length v6, p0

    if-ge v1, v6, :cond_3b

    aget-byte v6, p0, v1

    invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/cv;->a(B)Lcom/lenovo/anyshare/sdk/internal/cv;

    move-result-object v5

    if-nez v1, :cond_39

    const/16 v4, 0x96

    :goto_1e
    iget-object v6, v0, Lcom/lenovo/anyshare/sdk/internal/dj;->a:[Lcom/lenovo/anyshare/sdk/internal/dj$a;

    mul-int/lit8 v7, v1, 0x2

    invoke-static {v4}, Lcom/lenovo/anyshare/sdk/internal/dk;->a(I)Lcom/lenovo/anyshare/sdk/internal/dj$a;

    move-result-object v8

    aput-object v8, v6, v7

    iget-object v6, v0, Lcom/lenovo/anyshare/sdk/internal/dj;->a:[Lcom/lenovo/anyshare/sdk/internal/dj$a;

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x4f

    invoke-static {v8, v5}, Lcom/lenovo/anyshare/sdk/internal/dk;->a(ILcom/lenovo/anyshare/sdk/internal/cv;)Lcom/lenovo/anyshare/sdk/internal/dj$a;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_39
    const/4 v4, 0x1

    goto :goto_1e

    :cond_3b
    iget-object v6, v0, Lcom/lenovo/anyshare/sdk/internal/dj;->a:[Lcom/lenovo/anyshare/sdk/internal/dj$a;

    add-int/lit8 v7, v2, -0x1

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/dk;->a(I)Lcom/lenovo/anyshare/sdk/internal/dj$a;

    move-result-object v8

    aput-object v8, v6, v7

    goto :goto_3
.end method
