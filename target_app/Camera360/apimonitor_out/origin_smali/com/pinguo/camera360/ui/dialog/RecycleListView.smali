.class public Lcom/pinguo/camera360/ui/dialog/RecycleListView;
.super Landroid/widget/ListView;
.source "RecycleListView.java"


# instance fields
.field public mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dialog/RecycleListView;->mRecycleOnMeasure:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dialog/RecycleListView;->mRecycleOnMeasure:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dialog/RecycleListView;->mRecycleOnMeasure:Z

    return-void
.end method


# virtual methods
.method protected recycleOnMeasure()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/ui/dialog/RecycleListView;->mRecycleOnMeasure:Z

    return v0
.end method
