.class public abstract Lcom/pinguo/camera360/base/BaseArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/base/BaseArrayAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/base/BaseArrayAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/base/BaseArrayAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/base/BaseArrayAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/base/BaseArrayAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/base/BaseArrayAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/base/BaseArrayAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/pinguo/camera360/base/BaseArrayAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public remove(I)V
    .registers 3

    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/base/BaseArrayAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/pinguo/camera360/base/BaseArrayAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->notifyDataSetChanged()V

    goto :goto_a
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/base/BaseArrayAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public set(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pinguo/camera360/base/BaseArrayAdapter;->mList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
