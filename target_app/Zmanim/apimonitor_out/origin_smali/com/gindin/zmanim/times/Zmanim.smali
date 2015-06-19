.class public abstract Lcom/gindin/zmanim/times/Zmanim;
.super Ljava/lang/Object;
.source "Zmanim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gindin/zmanim/times/Zmanim$Type;
    }
.end annotation


# instance fields
.field private final allZmanim:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gindin/zmanim/times/Zman;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Lcom/gindin/zmanim/times/Zmanim$Type;


# direct methods
.method protected constructor <init>(Lcom/gindin/zmanim/times/Zmanim$Type;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gindin/zmanim/times/Zmanim$Type;",
            "Ljava/util/List",
            "<",
            "Lcom/gindin/zmanim/times/Zman;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gindin/zmanim/times/Zmanim;->type:Lcom/gindin/zmanim/times/Zmanim$Type;

    iput-object p2, p0, Lcom/gindin/zmanim/times/Zmanim;->allZmanim:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clearCaches()V
    .registers 4

    iget-object v2, p0, Lcom/gindin/zmanim/times/Zmanim;->allZmanim:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gindin/zmanim/times/Zman;

    invoke-virtual {v1}, Lcom/gindin/zmanim/times/Zman;->clearCache()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public get(I)Lcom/gindin/zmanim/times/Zman;
    .registers 3

    iget-object v0, p0, Lcom/gindin/zmanim/times/Zmanim;->allZmanim:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/gindin/zmanim/times/Zmanim;->allZmanim:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gindin/zmanim/times/Zman;

    move-object v0, p0

    goto :goto_9
.end method

.method public getByName(Ljava/lang/String;)Lcom/gindin/zmanim/times/Zman;
    .registers 5

    iget-object v2, p0, Lcom/gindin/zmanim/times/Zmanim;->allZmanim:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gindin/zmanim/times/Zman;

    iget-object v2, v1, Lcom/gindin/zmanim/times/Zman;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v1

    :goto_1b
    return-object v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public getDefault()Lcom/gindin/zmanim/times/Zman;
    .registers 4

    iget-object v2, p0, Lcom/gindin/zmanim/times/Zmanim;->allZmanim:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gindin/zmanim/times/Zman;

    iget-boolean v2, v1, Lcom/gindin/zmanim/times/Zman;->advanced:Z

    if-nez v2, :cond_6

    move-object v2, v1

    :goto_17
    return-object v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/gindin/zmanim/times/Zman;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/gindin/zmanim/times/Zmanim;->allZmanim:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/times/Zmanim;->allZmanim:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Lcom/gindin/zmanim/times/Zman;
    .registers 3

    iget-object v0, p0, Lcom/gindin/zmanim/times/Zmanim;->allZmanim:Ljava/util/List;

    iget-object v1, p0, Lcom/gindin/zmanim/times/Zmanim;->allZmanim:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/gindin/zmanim/times/Zman;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/gindin/zmanim/times/Zman;

    return-object p0
.end method
