.class public abstract Lcom/flurry/sdk/db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/er;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/db$a;
    }
.end annotation


# instance fields
.field protected final d:Ljava/lang/String;

.field e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/flurry/sdk/dd;

.field protected g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/db;->e:Ljava/util/Set;

    const-string v0, "defaultDataKey_"

    iput-object v0, p0, Lcom/flurry/sdk/db;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/es;->a(Lcom/flurry/sdk/er;)V

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/db;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/db;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/flurry/sdk/db$a;)V
    .registers 3

    new-instance v0, Lcom/flurry/sdk/db$3;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/db$3;-><init>(Lcom/flurry/sdk/db;Lcom/flurry/sdk/db$a;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/db;->a(Lcom/flurry/sdk/fc;)V

    return-void
.end method

.method protected a(Lcom/flurry/sdk/fc;)V
    .registers 3

    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dl;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/flurry/sdk/db$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/db$1;-><init>(Lcom/flurry/sdk/db;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/db;->a(Lcom/flurry/sdk/fc;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Lcom/flurry/sdk/db$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/sdk/db$4;-><init>(Lcom/flurry/sdk/db;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/db;->a(Lcom/flurry/sdk/fc;)V

    return-void
.end method

.method public a(Z)V
    .registers 6

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkStateChanged : isNetworkEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lcom/flurry/sdk/db;->d()V

    :cond_1e
    return-void
.end method

.method protected abstract a([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method protected a([BLjava/lang/String;Ljava/lang/String;Lcom/flurry/sdk/db$a;)V
    .registers 8

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_e

    :cond_5
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    const-string v2, "Report that has to be sent is EMPTY or NULL"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/db;->c([BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/flurry/sdk/db;->a(Lcom/flurry/sdk/db$a;)V

    goto :goto_d
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/flurry/sdk/db$5;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/db$5;-><init>(Lcom/flurry/sdk/db;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/db;->a(Lcom/flurry/sdk/fc;)V

    return-void
.end method

.method public b([BLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/sdk/db;->a([BLjava/lang/String;Ljava/lang/String;Lcom/flurry/sdk/db$a;)V

    return-void
.end method

.method protected c()I
    .registers 2

    iget-object v0, p0, Lcom/flurry/sdk/db;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/flurry/sdk/db;->f:Lcom/flurry/sdk/dd;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/dd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error. Block wasn\'t deleted with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_21
    iget-object v0, p0, Lcom/flurry/sdk/db;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error. Block with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not in progress state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_47
    return-void
.end method

.method protected c([BLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/flurry/sdk/db$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/flurry/sdk/db$2;-><init>(Lcom/flurry/sdk/db;[BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/db;->a(Lcom/flurry/sdk/fc;)V

    return-void
.end method

.method protected d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0, p2, p3}, Lcom/flurry/sdk/db;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dc;

    invoke-direct {v1}, Lcom/flurry/sdk/dc;-><init>()V

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/dc;->a([B)Z

    invoke-virtual {v1}, Lcom/flurry/sdk/dc;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/db;->f:Lcom/flurry/sdk/dd;

    invoke-virtual {v3, v1, v0}, Lcom/flurry/sdk/dd;->a(Lcom/flurry/sdk/dc;Ljava/lang/String;)V

    return-object v2
.end method

.method protected d()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/db;->a(Lcom/flurry/sdk/db$a;)V

    return-void
.end method

.method protected e()Z
    .registers 3

    invoke-virtual {p0}, Lcom/flurry/sdk/db;->c()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected f()V
    .registers 10

    const/4 v8, 0x4

    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/es;->c()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    const-string v2, "Reports were not sent! No Internet connection!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/flurry/sdk/db;->f:Lcom/flurry/sdk/dd;

    invoke-virtual {v0}, Lcom/flurry/sdk/dd;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_22
    iget-object v0, p0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    const-string v1, "No more reports to send."

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_2a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/flurry/sdk/db;->e()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/flurry/sdk/db;->f:Lcom/flurry/sdk/dd;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dd;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of not sent blocks = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_64
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2e

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/flurry/sdk/db;->e:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    :goto_78
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_64

    :cond_7c
    invoke-virtual {p0}, Lcom/flurry/sdk/db;->e()Z

    move-result v5

    if-eqz v5, :cond_2e

    new-instance v5, Lcom/flurry/sdk/dc;

    invoke-direct {v5, v1}, Lcom/flurry/sdk/dc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/flurry/sdk/dc;->b()[B

    move-result-object v5

    if-eqz v5, :cond_90

    array-length v6, v5

    if-nez v6, :cond_9e

    :cond_90
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    const-string v7, "Internal ERROR! Report is empty!"

    invoke-static {v5, v6, v7}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/flurry/sdk/db;->f:Lcom/flurry/sdk/dd;

    invoke-virtual {v5, v1, v0}, Lcom/flurry/sdk/dd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_78

    :cond_9e
    iget-object v6, p0, Lcom/flurry/sdk/db;->e:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v5, v1, v0}, Lcom/flurry/sdk/db;->a([BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_78
.end method
