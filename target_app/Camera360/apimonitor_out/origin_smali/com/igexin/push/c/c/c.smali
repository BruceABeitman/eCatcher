.class public Lcom/igexin/push/c/c/c;
.super Lcom/igexin/push/c/c/e;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Lcom/igexin/push/e/b/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/c/c/e;-><init>()V

    const-string/jumbo v0, "UTF-8"

    iput-object v0, p0, Lcom/igexin/push/c/c/c;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/igexin/push/c/c/c;->f:I

    const/16 v0, 0x1b

    iput v0, p0, Lcom/igexin/push/c/c/c;->i:I

    const/16 v0, 0x34

    iput-byte v0, p0, Lcom/igexin/push/c/c/c;->j:B

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/c/c/c;->f:I

    return-void
.end method

.method public a(Lcom/igexin/push/e/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/c/c/c;->g:Lcom/igexin/push/e/b/c;

    return-void
.end method

.method public a([B)V
    .registers 7

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/igexin/a/a/b/g;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/igexin/push/c/c/c;->a:I

    const/4 v0, 0x2

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xc0

    iput v2, p0, Lcom/igexin/push/c/c/c;->b:I

    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/igexin/push/c/c/c;->a(B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/c/c/c;->e:Ljava/lang/String;

    const/4 v0, 0x3

    move v2, v0

    move v0, v1

    :goto_19
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0x7f

    or-int/2addr v0, v3

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_29

    shl-int/lit8 v0, v0, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_29
    add-int/lit8 v2, v2, 0x1

    if-lez v0, :cond_3c

    iget v3, p0, Lcom/igexin/push/c/c/c;->b:I

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_51

    new-array v3, v0, [B

    iput-object v3, p0, Lcom/igexin/push/c/c/c;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcom/igexin/push/c/c/c;->c:Ljava/lang/Object;

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3c
    :goto_3c
    add-int/2addr v0, v2

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v0, v0, 0x1

    array-length v2, p1

    if-le v2, v0, :cond_50

    :try_start_46
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/push/c/c/c;->e:Ljava/lang/String;

    invoke-direct {v2, p1, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/igexin/push/c/c/c;->d:Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4f} :catch_5d

    :goto_4f
    add-int/2addr v0, v1

    :cond_50
    return-void

    :cond_51
    :try_start_51
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/push/c/c/c;->e:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lcom/igexin/push/c/c/c;->c:Ljava/lang/Object;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5a} :catch_5b

    goto :goto_3c

    :catch_5b
    move-exception v1

    goto :goto_3c

    :catch_5d
    move-exception v2

    goto :goto_4f
.end method

.method public final b()V
    .registers 2

    const/16 v0, 0x40

    iput v0, p0, Lcom/igexin/push/c/c/c;->b:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/c/c/c;->f:I

    return v0
.end method

.method public d()[B
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/igexin/push/c/c/c;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/push/c/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/igexin/push/c/c/c;->c:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    iget v0, p0, Lcom/igexin/push/c/c/c;->b:I

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_70

    iget-object v0, p0, Lcom/igexin/push/c/c/c;->c:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    move-object v3, v0

    :goto_22
    const/4 v5, 0x4

    if-nez v3, :cond_7e

    :goto_25
    invoke-static {v2}, Lcom/igexin/a/a/b/g;->a(I)[B

    move-result-object v6

    array-length v0, v6

    add-int/2addr v0, v5

    add-int/2addr v0, v2

    array-length v5, v4

    add-int/2addr v0, v5

    new-array v0, v0, [B
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_30} :catch_81

    :try_start_30
    iget v1, p0, Lcom/igexin/push/c/c/c;->a:I

    const/4 v5, 0x0

    invoke-static {v1, v0, v5}, Lcom/igexin/a/a/b/g;->b(I[BI)I

    move-result v1

    iget v5, p0, Lcom/igexin/push/c/c/c;->b:I

    iget-object v7, p0, Lcom/igexin/push/c/c/c;->e:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/igexin/push/c/c/c;->a(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v5, v7

    invoke-static {v5, v0, v1}, Lcom/igexin/a/a/b/g;->c(I[BI)I

    move-result v5

    add-int/2addr v1, v5

    const/4 v5, 0x0

    array-length v7, v6

    invoke-static {v6, v5, v0, v1, v7}, Lcom/igexin/a/a/b/g;->a([BI[BII)I

    move-result v5

    add-int/2addr v1, v5

    if-lez v2, :cond_54

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v1, v2}, Lcom/igexin/a/a/b/g;->a([BI[BII)I

    move-result v2

    add-int/2addr v1, v2

    :cond_54
    array-length v2, v4

    invoke-static {v2, v0, v1}, Lcom/igexin/a/a/b/g;->c(I[BI)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    array-length v3, v4

    invoke-static {v4, v2, v0, v1, v3}, Lcom/igexin/a/a/b/g;->a([BI[BII)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_5f} :catch_84

    move-result v2

    add-int/2addr v1, v2

    :goto_61
    if-eqz v0, :cond_6f

    array-length v1, v0

    const/16 v2, 0x200

    if-lt v1, v2, :cond_6f

    iget-byte v1, p0, Lcom/igexin/push/c/c/c;->j:B

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/igexin/push/c/c/c;->j:B

    :cond_6f
    return-object v0

    :cond_70
    :try_start_70
    iget-object v0, p0, Lcom/igexin/push/c/c/c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/push/c/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    move-object v3, v0

    goto :goto_22

    :cond_7c
    move-object v3, v1

    goto :goto_22

    :cond_7e
    array-length v0, v3
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7f} :catch_81

    move v2, v0

    goto :goto_25

    :catch_81
    move-exception v0

    move-object v0, v1

    goto :goto_61

    :catch_84
    move-exception v1

    goto :goto_61
.end method

.method public e()Lcom/igexin/push/e/b/c;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/c/c/c;->g:Lcom/igexin/push/e/b/c;

    return-object v0
.end method
