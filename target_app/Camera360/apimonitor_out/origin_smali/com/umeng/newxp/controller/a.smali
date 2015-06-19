.class public Lcom/umeng/newxp/controller/a;
.super Ljava/lang/Object;
.source "AdIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/controller/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/umeng/newxp/Promoter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    return v0
.end method

.method public a(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/controller/a$a;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->b()I

    move-result v0

    if-eqz v0, :cond_8

    if-gtz p1, :cond_a

    :cond_8
    const/4 v0, 0x0

    :cond_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_10
    if-ge v1, p1, :cond_9

    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->e()Lcom/umeng/newxp/controller/a$a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public b(I)Lcom/umeng/newxp/Promoter;
    .registers 3

    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public c()Lcom/umeng/newxp/Promoter;
    .registers 4

    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/umeng/newxp/controller/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/umeng/newxp/controller/a;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public d()Lcom/umeng/newxp/Promoter;
    .registers 4

    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->b()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->b()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/umeng/newxp/controller/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/umeng/newxp/controller/a;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    goto :goto_7
.end method

.method public e()Lcom/umeng/newxp/controller/a$a;
    .registers 4

    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->b()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->b()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    new-instance v1, Lcom/umeng/newxp/controller/a$a;

    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/umeng/newxp/controller/a;->b:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    iget v2, p0, Lcom/umeng/newxp/controller/a;->b:I

    invoke-direct {v1, v0, v2}, Lcom/umeng/newxp/controller/a$a;-><init>(Lcom/umeng/newxp/Promoter;I)V

    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    move-object v0, v1

    goto :goto_7
.end method

.method public f()Lcom/umeng/newxp/Promoter;
    .registers 3

    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    if-lez v0, :cond_19

    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->b()I

    move-result v1

    if-gt v0, v1, :cond_19

    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/umeng/newxp/controller/a;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public hasNext()Z
    .registers 3

    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    if-ltz v0, :cond_14

    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    iget-object v1, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->c()Lcom/umeng/newxp/Promoter;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    if-lez v0, :cond_15

    iget v0, p0, Lcom/umeng/newxp/controller/a;->b:I

    invoke-virtual {p0}, Lcom/umeng/newxp/controller/a;->b()I

    move-result v1

    if-gt v0, v1, :cond_15

    iget-object v0, p0, Lcom/umeng/newxp/controller/a;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/umeng/newxp/controller/a;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_15
    return-void
.end method
