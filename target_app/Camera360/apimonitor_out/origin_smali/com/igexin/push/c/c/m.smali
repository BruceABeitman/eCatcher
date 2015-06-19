.class public Lcom/igexin/push/c/c/m;
.super Lcom/igexin/push/c/c/e;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/c/c/e;-><init>()V

    const/16 v0, 0x25

    iput v0, p0, Lcom/igexin/push/c/c/m;->i:I

    return-void
.end method


# virtual methods
.method public a([B)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    aget-byte v3, p1, v2

    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_3a

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/igexin/push/c/c/m;->a:Z

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_10

    move v2, v1

    :cond_10
    iput-boolean v2, p0, Lcom/igexin/push/c/c/m;->b:Z

    iget-boolean v0, p0, Lcom/igexin/push/c/c/m;->b:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p0, v3}, Lcom/igexin/push/c/c/m;->a(B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/c/c/m;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/igexin/a/a/b/g;->b([BI)I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    :try_start_24
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/igexin/push/c/c/m;->c:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/igexin/push/c/c/m;->d:Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_3c

    :cond_2e
    :goto_2e
    array-length v0, p1

    if-le v0, v1, :cond_39

    invoke-static {p1, v1}, Lcom/igexin/a/a/b/g;->d([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/igexin/push/c/c/m;->e:J

    add-int/lit8 v0, v1, 0x8

    :cond_39
    return-void

    :cond_3a
    move v0, v2

    goto :goto_9

    :catch_3c
    move-exception v0

    goto :goto_2e
.end method

.method public d()[B
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/igexin/push/c/c/m;->a:Z

    if-eqz v0, :cond_56

    const/16 v0, 0x40

    int-to-byte v0, v0

    :goto_a
    iget-boolean v4, p0, Lcom/igexin/push/c/c/m;->b:Z

    if-eqz v4, :cond_50

    or-int/lit16 v0, v0, 0x80

    int-to-byte v4, v0

    const/4 v2, 0x3

    :try_start_12
    iget-object v0, p0, Lcom/igexin/push/c/c/m;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/igexin/push/c/c/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_47

    move-result-object v0

    :try_start_1a
    array-length v2, v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1b} :catch_4c

    add-int/lit8 v3, v2, 0x3

    :goto_1d
    iget-object v5, p0, Lcom/igexin/push/c/c/m;->c:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/igexin/push/c/c/m;->a(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    move v6, v4

    move v4, v3

    move v3, v6

    :goto_28
    add-int/lit8 v4, v4, 0x8

    new-array v4, v4, [B

    invoke-static {v3, v4, v1}, Lcom/igexin/a/a/b/g;->c(I[BI)I

    move-result v3

    iget-boolean v5, p0, Lcom/igexin/push/c/c/m;->b:Z

    if-eqz v5, :cond_4e

    invoke-static {v2, v4, v3}, Lcom/igexin/a/a/b/g;->b(I[BI)I

    move-result v3

    if-eqz v0, :cond_4e

    invoke-static {v0, v1, v4, v3, v2}, Lcom/igexin/a/a/b/g;->a([BI[BII)I

    move-result v0

    add-int/2addr v0, v3

    :goto_3f
    iget-wide v1, p0, Lcom/igexin/push/c/c/m;->e:J

    invoke-static {v1, v2, v4, v0}, Lcom/igexin/a/a/b/g;->a(J[BI)I

    move-result v1

    add-int/2addr v0, v1

    return-object v4

    :catch_47
    move-exception v0

    move-object v0, v3

    :goto_49
    move v3, v2

    move v2, v1

    goto :goto_1d

    :catch_4c
    move-exception v3

    goto :goto_49

    :cond_4e
    move v0, v3

    goto :goto_3f

    :cond_50
    move v4, v2

    move v2, v1

    move v6, v0

    move-object v0, v3

    move v3, v6

    goto :goto_28

    :cond_56
    move v0, v1

    goto :goto_a
.end method
