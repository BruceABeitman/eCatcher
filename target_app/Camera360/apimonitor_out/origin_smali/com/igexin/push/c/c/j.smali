.class public Lcom/igexin/push/c/c/j;
.super Lcom/igexin/push/c/c/e;


# instance fields
.field public a:B

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/c/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .registers 2

    return-void
.end method

.method public d()[B
    .registers 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-byte v1, p0, Lcom/igexin/push/c/c/j;->a:B

    if-ne v1, v4, :cond_22

    iget-object v0, p0, Lcom/igexin/push/c/c/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_10
    :goto_10
    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iget-byte v2, p0, Lcom/igexin/push/c/c/j;->a:B

    aput-byte v2, v1, v3

    array-length v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    array-length v2, v0

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_22
    iget-byte v1, p0, Lcom/igexin/push/c/c/j;->a:B

    if-eq v1, v5, :cond_10

    iget-byte v1, p0, Lcom/igexin/push/c/c/j;->a:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_10

    iget-byte v1, p0, Lcom/igexin/push/c/c/j;->a:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_10

    iget-object v0, p0, Lcom/igexin/push/c/c/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_10
.end method
