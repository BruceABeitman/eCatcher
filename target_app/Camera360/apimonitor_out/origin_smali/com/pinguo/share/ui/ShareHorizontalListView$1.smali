.class Lcom/pinguo/share/ui/ShareHorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "ShareHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/share/ui/ShareHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/ui/ShareHorizontalListView;


# direct methods
.method constructor <init>(Lcom/pinguo/share/ui/ShareHorizontalListView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/ui/ShareHorizontalListView$1;->this$0:Lcom/pinguo/share/ui/ShareHorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/share/ui/ShareHorizontalListView$1;->this$0:Lcom/pinguo/share/ui/ShareHorizontalListView;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/pinguo/share/ui/ShareHorizontalListView$1;->this$0:Lcom/pinguo/share/ui/ShareHorizontalListView;

    const/4 v2, 0x1

    #setter for: Lcom/pinguo/share/ui/ShareHorizontalListView;->mDataChanged:Z
    invoke-static {v0, v2}, Lcom/pinguo/share/ui/ShareHorizontalListView;->access$2(Lcom/pinguo/share/ui/ShareHorizontalListView;Z)V

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    iget-object v0, p0, Lcom/pinguo/share/ui/ShareHorizontalListView$1;->this$0:Lcom/pinguo/share/ui/ShareHorizontalListView;

    invoke-virtual {v0}, Lcom/pinguo/share/ui/ShareHorizontalListView;->invalidate()V

    iget-object v0, p0, Lcom/pinguo/share/ui/ShareHorizontalListView$1;->this$0:Lcom/pinguo/share/ui/ShareHorizontalListView;

    invoke-virtual {v0}, Lcom/pinguo/share/ui/ShareHorizontalListView;->requestLayout()V

    return-void

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public onInvalidated()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/ui/ShareHorizontalListView$1;->this$0:Lcom/pinguo/share/ui/ShareHorizontalListView;

    #calls: Lcom/pinguo/share/ui/ShareHorizontalListView;->reset()V
    invoke-static {v0}, Lcom/pinguo/share/ui/ShareHorizontalListView;->access$3(Lcom/pinguo/share/ui/ShareHorizontalListView;)V

    iget-object v0, p0, Lcom/pinguo/share/ui/ShareHorizontalListView$1;->this$0:Lcom/pinguo/share/ui/ShareHorizontalListView;

    invoke-virtual {v0}, Lcom/pinguo/share/ui/ShareHorizontalListView;->invalidate()V

    iget-object v0, p0, Lcom/pinguo/share/ui/ShareHorizontalListView$1;->this$0:Lcom/pinguo/share/ui/ShareHorizontalListView;

    invoke-virtual {v0}, Lcom/pinguo/share/ui/ShareHorizontalListView;->requestLayout()V

    return-void
.end method
