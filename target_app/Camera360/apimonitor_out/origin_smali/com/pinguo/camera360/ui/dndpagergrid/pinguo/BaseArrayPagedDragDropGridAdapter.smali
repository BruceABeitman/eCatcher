.class public abstract Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;
.super Ljava/lang/Object;
.source "BaseArrayPagedDragDropGridAdapter.java"

# interfaces
.implements Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGridAdapter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


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
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

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

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public deleteDropZoneLocation()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public deleteItem(II)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->getRealIndex(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public deleteItem(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public disableZoomAnimationsOnChangePage()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getItemAt(II)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->getRealIndex(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPageWidth(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected getRealIndex(II)I
    .registers 4

    if-lez p1, :cond_a

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->itemCountInPage(I)I

    move-result v0

    mul-int/2addr v0, p1

    add-int/2addr p2, v0

    :cond_a
    return p2
.end method

.method public itemCountInPage(I)I
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->pageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_14

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->rowCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->columnCount()I

    move-result v2

    mul-int v0, v1, v2

    :goto_13
    return v0

    :cond_14
    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->rowCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->columnCount()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->pageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    sub-int v0, v1, v2

    goto :goto_13
.end method

.method public moveItemToNextPage(II)V
    .registers 10

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->pageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v2, v4, :cond_43

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->getRealIndex(II)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->itemCountInPage(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->getRealIndex(II)I

    move-result v0

    iget-object v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v4, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v4, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "moveItemToNextPage, move item from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    return-void
.end method

.method public moveItemToPreviousPage(II)V
    .registers 10

    add-int/lit8 v2, p1, -0x1

    if-ltz v2, :cond_3d

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->getRealIndex(II)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->itemCountInPage(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->getRealIndex(II)I

    move-result v0

    sget-object v4, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "moveItemToPreviousPage, move item from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v4, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3d
    return-void
.end method

.method public pageCount()I
    .registers 5

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->rowCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->columnCount()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public printLayout()V
    .registers 1

    return-void
.end method

.method public showRemoveDropZone()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public swapItems(IIII)V
    .registers 10

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->getRealIndex(II)I

    move-result v0

    invoke-virtual {p0, p3, p4}, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->getRealIndex(II)I

    move-result v1

    sget-object v2, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "swapItems:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/ui/dndpagergrid/pinguo/BaseArrayPagedDragDropGridAdapter;->mList:Ljava/util/List;

    invoke-static {v2, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    return-void
.end method
