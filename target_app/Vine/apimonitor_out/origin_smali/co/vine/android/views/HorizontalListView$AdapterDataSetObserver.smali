.class Lco/vine/android/views/HorizontalListView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/views/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/views/HorizontalListView;


# direct methods
.method public constructor <init>(Lco/vine/android/views/HorizontalListView;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/views/HorizontalListView$AdapterDataSetObserver;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$AdapterDataSetObserver;->this$0:Lco/vine/android/views/HorizontalListView;

    iget-object v1, p0, Lco/vine/android/views/HorizontalListView$AdapterDataSetObserver;->this$0:Lco/vine/android/views/HorizontalListView;

    #getter for: Lco/vine/android/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Lco/vine/android/views/HorizontalListView;->access$500(Lco/vine/android/views/HorizontalListView;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    #setter for: Lco/vine/android/views/HorizontalListView;->mItemCount:I
    invoke-static {v0, v1}, Lco/vine/android/views/HorizontalListView;->access$402(Lco/vine/android/views/HorizontalListView;I)I

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$AdapterDataSetObserver;->this$0:Lco/vine/android/views/HorizontalListView;

    const/4 v1, 0x1

    #setter for: Lco/vine/android/views/HorizontalListView;->mDataChanged:Z
    invoke-static {v0, v1}, Lco/vine/android/views/HorizontalListView;->access$102(Lco/vine/android/views/HorizontalListView;Z)Z

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$AdapterDataSetObserver;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-virtual {v0}, Lco/vine/android/views/HorizontalListView;->requestLayout()V

    return-void
.end method

.method public onInvalidated()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$AdapterDataSetObserver;->this$0:Lco/vine/android/views/HorizontalListView;

    const/4 v1, 0x0

    #setter for: Lco/vine/android/views/HorizontalListView;->mItemCount:I
    invoke-static {v0, v1}, Lco/vine/android/views/HorizontalListView;->access$402(Lco/vine/android/views/HorizontalListView;I)I

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$AdapterDataSetObserver;->this$0:Lco/vine/android/views/HorizontalListView;

    const/4 v1, 0x1

    #setter for: Lco/vine/android/views/HorizontalListView;->mDataChanged:Z
    invoke-static {v0, v1}, Lco/vine/android/views/HorizontalListView;->access$102(Lco/vine/android/views/HorizontalListView;Z)Z

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$AdapterDataSetObserver;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-virtual {v0}, Lco/vine/android/views/HorizontalListView;->requestLayout()V

    return-void
.end method
