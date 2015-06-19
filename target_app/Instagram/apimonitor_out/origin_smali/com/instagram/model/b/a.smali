.class public final Lcom/instagram/model/b/a;
.super Ljava/lang/Object;
.source "Recipient.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/instagram/model/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/instagram/user/c/a;

.field b:Z

.field c:Z

.field d:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/model/b/a;)I
    .registers 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget-boolean v2, p0, Lcom/instagram/model/b/a;->c:Z

    invoke-virtual {p1}, Lcom/instagram/model/b/a;->c()Z

    move-result v3

    if-eq v2, v3, :cond_11

    iget-boolean v2, p0, Lcom/instagram/model/b/a;->c:Z

    if-eqz v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e

    :cond_11
    iget-boolean v2, p0, Lcom/instagram/model/b/a;->d:Z

    invoke-virtual {p1}, Lcom/instagram/model/b/a;->d()Z

    move-result v3

    if-eq v2, v3, :cond_1f

    iget-boolean v2, p0, Lcom/instagram/model/b/a;->d:Z

    if-nez v2, :cond_e

    move v0, v1

    goto :goto_e

    :cond_1f
    iget-boolean v2, p0, Lcom/instagram/model/b/a;->b:Z

    invoke-virtual {p1}, Lcom/instagram/model/b/a;->b()Z

    move-result v3

    if-eq v2, v3, :cond_2d

    iget-boolean v2, p0, Lcom/instagram/model/b/a;->b:Z

    if-nez v2, :cond_e

    move v0, v1

    goto :goto_e

    :cond_2d
    invoke-virtual {p0}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method public static a(Lcom/fasterxml/jackson/a/l;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/a/l;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/model/b/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_15

    invoke-static {p0}, Lcom/instagram/model/b/d;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/model/b/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_15
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/instagram/user/c/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/model/b/a;->a:Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final a(IZ)V
    .registers 6

    const/4 v2, 0x1

    sget-object v0, Lcom/instagram/model/b/b;->a:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    iput-boolean p2, p0, Lcom/instagram/model/b/a;->b:Z

    :cond_14
    :goto_14
    return-void

    :pswitch_15
    iput-boolean p2, p0, Lcom/instagram/model/b/a;->c:Z

    iget-boolean v0, p0, Lcom/instagram/model/b/a;->c:Z

    if-eqz v0, :cond_14

    iput-boolean v2, p0, Lcom/instagram/model/b/a;->b:Z

    goto :goto_14

    :pswitch_1e
    iput-boolean p2, p0, Lcom/instagram/model/b/a;->d:Z

    iget-boolean v0, p0, Lcom/instagram/model/b/a;->d:Z

    if-eqz v0, :cond_14

    iput-boolean v2, p0, Lcom/instagram/model/b/a;->b:Z

    goto :goto_14

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_12
        :pswitch_15
        :pswitch_1e
    .end packed-switch
.end method

.method public final a(I)Z
    .registers 4

    sget-object v0, Lcom/instagram/model/b/b;->a:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_11
    iget-boolean v0, p0, Lcom/instagram/model/b/a;->b:Z

    :goto_13
    return v0

    :pswitch_14
    iget-boolean v0, p0, Lcom/instagram/model/b/a;->c:Z

    goto :goto_13

    :pswitch_17
    iget-boolean v0, p0, Lcom/instagram/model/b/a;->d:Z

    goto :goto_13

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/model/b/a;->b:Z

    return v0
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/model/b/a;->c:Z

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/instagram/model/b/a;

    invoke-direct {p0, p1}, Lcom/instagram/model/b/a;->a(Lcom/instagram/model/b/a;)I

    move-result v0

    return v0
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/model/b/a;->d:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/instagram/model/b/a;

    iget-object v2, p0, Lcom/instagram/model/b/a;->a:Lcom/instagram/user/c/a;

    if-nez v2, :cond_21

    invoke-virtual {p1}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v0, p0, Lcom/instagram/model/b/a;->a:Lcom/instagram/user/c/a;

    invoke-virtual {p1}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/model/b/a;->a:Lcom/instagram/user/c/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/instagram/model/b/a;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->hashCode()I

    move-result v0

    goto :goto_5
.end method
