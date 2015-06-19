.class public abstract Lkankan/wheel/widget/adapters/AbstractWheelAdapter;
.super Ljava/lang/Object;
.source "AbstractWheelAdapter.java"

# interfaces
.implements Lkankan/wheel/widget/adapters/WheelViewAdapter;


# instance fields
.field private datasetObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method protected notifyDataChangedEvent()V
    .registers 4

    iget-object v1, p0, Lkankan/wheel/widget/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lkankan/wheel/widget/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    return-void

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_a
.end method

.method protected notifyDataInvalidatedEvent()V
    .registers 4

    iget-object v1, p0, Lkankan/wheel/widget/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lkankan/wheel/widget/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    return-void

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onInvalidated()V

    goto :goto_a
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lkankan/wheel/widget/adapters/AbstractWheelAdapter;->datasetObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method
