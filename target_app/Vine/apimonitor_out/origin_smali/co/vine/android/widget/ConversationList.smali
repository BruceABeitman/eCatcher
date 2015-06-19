.class public Lco/vine/android/widget/ConversationList;
.super Lco/vine/android/views/SdkListView;
.source "ConversationList.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/widget/ConversationList$GetMoreListener;
    }
.end annotation


# instance fields
.field private mGetMoreHeaderProgressContainer:Landroid/view/View;

.field private mGetMoreListener:Lco/vine/android/widget/ConversationList$GetMoreListener;

.field private mProgressView:Landroid/view/View;

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/views/SdkListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lco/vine/android/views/SdkListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/views/SdkListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public deactivateRefresh()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/widget/ConversationList;->deactivateRefresh(Z)V

    return-void
.end method

.method public deactivateRefresh(Z)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/widget/ConversationList;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_e

    iget-object v0, p0, Lco/vine/android/widget/ConversationList;->mGetMoreHeaderProgressContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lco/vine/android/widget/ConversationList;->removeHeaderView(Landroid/view/View;)Z

    :cond_e
    return-void
.end method

.method public hideProgress()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/widget/ConversationList;->mProgressView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Lco/vine/android/views/SdkListView;->onFinishInflate()V

    invoke-super {p0, p0}, Lco/vine/android/views/SdkListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lco/vine/android/widget/ConversationList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002d

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/widget/ConversationList;->mGetMoreHeaderProgressContainer:Landroid/view/View;

    iget-object v1, p0, Lco/vine/android/widget/ConversationList;->mGetMoreHeaderProgressContainer:Landroid/view/View;

    const v2, 0x7f0a00b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/widget/ConversationList;->mProgressView:Landroid/view/View;

    iget-object v1, p0, Lco/vine/android/widget/ConversationList;->mGetMoreHeaderProgressContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lco/vine/android/widget/ConversationList;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 8

    if-nez p3, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lco/vine/android/widget/ConversationList;->mGetMoreListener:Lco/vine/android/widget/ConversationList$GetMoreListener;

    if-eqz v1, :cond_21

    if-nez p2, :cond_21

    iget-object v1, p0, Lco/vine/android/widget/ConversationList;->mProgressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_21

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lco/vine/android/widget/ConversationList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/widget/ConversationList;->mGetMoreHeaderProgressContainer:Landroid/view/View;

    if-ne v0, v1, :cond_21

    iget-object v1, p0, Lco/vine/android/widget/ConversationList;->mGetMoreListener:Lco/vine/android/widget/ConversationList$GetMoreListener;

    invoke-interface {v1}, Lco/vine/android/widget/ConversationList$GetMoreListener;->getMore()V

    :cond_21
    iget-object v1, p0, Lco/vine/android/widget/ConversationList;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lco/vine/android/widget/ConversationList;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/widget/ConversationList;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lco/vine/android/widget/ConversationList;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_9
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Lco/vine/android/views/SdkListView;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lco/vine/android/widget/ConversationList;->getCount()I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {p0}, Lco/vine/android/widget/ConversationList;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lco/vine/android/widget/ConversationList;->setSelection(I)V

    :cond_12
    return-void
.end method

.method public reactivateRefresh()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/widget/ConversationList;->mProgressView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setGetMoreListener(Lco/vine/android/widget/ConversationList$GetMoreListener;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/widget/ConversationList;->mGetMoreListener:Lco/vine/android/widget/ConversationList$GetMoreListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/widget/ConversationList;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public showProgress()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/widget/ConversationList;->mProgressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lco/vine/android/widget/ConversationList;->mProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method
