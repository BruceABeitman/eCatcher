.class public Lcom/igexin/push/c/a/a;
.super Lcom/igexin/a/a/b/c;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/igexin/a/a/b/c;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/igexin/a/a/b/c;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p2}, Lcom/igexin/push/c/a/a;->a(Lcom/igexin/a/a/b/c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    instance-of v0, p3, Lcom/igexin/push/c/c/e;

    if-eqz v0, :cond_1c

    check-cast p3, Lcom/igexin/push/c/c/e;

    new-instance v0, Lcom/igexin/push/c/c/b;

    invoke-direct {v0}, Lcom/igexin/push/c/c/b;-><init>()V

    iget v1, p3, Lcom/igexin/push/c/c/e;->i:I

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/igexin/push/c/c/b;->b:B

    invoke-virtual {p3}, Lcom/igexin/push/c/c/e;->d()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/c/c/b;->a([B)V

    iget-byte v1, p3, Lcom/igexin/push/c/c/e;->j:B

    iput-byte v1, v0, Lcom/igexin/push/c/c/b;->c:B

    :goto_1b
    return-object v0

    :cond_1c
    instance-of v0, p3, [Lcom/igexin/push/c/c/e;

    if-eqz v0, :cond_4b

    check-cast p3, [Lcom/igexin/push/c/c/e;

    check-cast p3, [Lcom/igexin/push/c/c/e;

    array-length v0, p3

    new-array v1, v0, [Lcom/igexin/push/c/c/b;

    const/4 v0, 0x0

    :goto_28
    array-length v2, p3

    if-ge v0, v2, :cond_49

    new-instance v2, Lcom/igexin/push/c/c/b;

    invoke-direct {v2}, Lcom/igexin/push/c/c/b;-><init>()V

    aput-object v2, v1, v0

    aget-object v2, v1, v0

    aget-object v3, p3, v0

    iget v3, v3, Lcom/igexin/push/c/c/e;->i:I

    int-to-byte v3, v3

    iput-byte v3, v2, Lcom/igexin/push/c/c/b;->b:B

    aget-object v2, v1, v0

    aget-object v3, p3, v0

    invoke-virtual {v3}, Lcom/igexin/push/c/c/e;->d()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igexin/push/c/c/b;->a([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_49
    move-object v0, v1

    goto :goto_1b

    :cond_4b
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public b(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Lcom/igexin/a/a/d/a/f;
    .registers 6

    const/4 v0, 0x0

    if-nez p3, :cond_5

    move-object p3, v0

    :goto_4
    return-object p3

    :cond_5
    instance-of v1, p3, Lcom/igexin/push/c/c/h;

    if-eqz v1, :cond_c

    check-cast p3, Lcom/igexin/a/a/d/a/f;

    goto :goto_4

    :cond_c
    check-cast p3, Lcom/igexin/push/c/c/b;

    iget-byte v1, p3, Lcom/igexin/push/c/c/b;->b:B

    sparse-switch v1, :sswitch_data_3a

    :goto_13
    if-eqz v0, :cond_1a

    iget-object v1, p3, Lcom/igexin/push/c/c/b;->d:[B

    invoke-virtual {v0, v1}, Lcom/igexin/push/c/c/e;->a([B)V

    :cond_1a
    move-object p3, v0

    goto :goto_4

    :sswitch_1c
    new-instance v0, Lcom/igexin/push/c/c/k;

    invoke-direct {v0}, Lcom/igexin/push/c/c/k;-><init>()V

    goto :goto_13

    :sswitch_22
    new-instance v0, Lcom/igexin/push/c/c/m;

    invoke-direct {v0}, Lcom/igexin/push/c/c/m;-><init>()V

    goto :goto_13

    :sswitch_28
    new-instance v0, Lcom/igexin/push/c/c/o;

    invoke-direct {v0}, Lcom/igexin/push/c/c/o;-><init>()V

    goto :goto_13

    :sswitch_2e
    new-instance v0, Lcom/igexin/push/c/c/n;

    invoke-direct {v0}, Lcom/igexin/push/c/c/n;-><init>()V

    goto :goto_13

    :sswitch_34
    new-instance v0, Lcom/igexin/push/c/c/a;

    invoke-direct {v0}, Lcom/igexin/push/c/c/a;-><init>()V

    goto :goto_13

    :sswitch_data_3a
    .sparse-switch
        0x5 -> :sswitch_1c
        0x9 -> :sswitch_28
        0x1a -> :sswitch_2e
        0x1c -> :sswitch_34
        0x25 -> :sswitch_22
    .end sparse-switch
.end method

.method public synthetic c(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/push/c/a/a;->b(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Lcom/igexin/a/a/d/a/f;

    move-result-object v0

    return-object v0
.end method
