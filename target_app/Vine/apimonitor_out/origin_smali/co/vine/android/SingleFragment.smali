.class public Lco/vine/android/SingleFragment;
.super Lco/vine/android/BaseTimelineFragment;
.source "SingleFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/SingleFragment$SinglePostListener;
    }
.end annotation


# static fields
.field private static final EVENT_SOURCE_TITLE:Ljava/lang/String; = "Single Post"


# instance fields
.field private final mWrapper:Lco/vine/android/SingleFragmentWrapper;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lco/vine/android/BaseTimelineFragment;-><init>()V

    new-instance v0, Lco/vine/android/SingleFragmentWrapper;

    invoke-direct {v0}, Lco/vine/android/SingleFragmentWrapper;-><init>()V

    iput-object v0, p0, Lco/vine/android/SingleFragment;->mWrapper:Lco/vine/android/SingleFragmentWrapper;

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/SingleFragment;)Lco/vine/android/SingleFragmentWrapper;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SingleFragment;->mWrapper:Lco/vine/android/SingleFragmentWrapper;

    return-object v0
.end method

.method private fetchPostId(I)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/SingleFragment;->mWrapper:Lco/vine/android/SingleFragmentWrapper;

    invoke-virtual {v0}, Lco/vine/android/SingleFragmentWrapper;->isLocked()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lco/vine/android/SingleFragment;->mWrapper:Lco/vine/android/SingleFragmentWrapper;

    invoke-virtual {v0}, Lco/vine/android/SingleFragmentWrapper;->fetchPostId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lco/vine/android/SingleFragment;->addRequest(Ljava/lang/String;I)Ljava/lang/String;

    :cond_11
    return-void
.end method


# virtual methods
.method protected fetchContent(IZ)V
    .registers 3

    return-void
.end method

.method protected fetchPostContent(I)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/SingleFragment;->mWrapper:Lco/vine/android/SingleFragmentWrapper;

    invoke-virtual {v0}, Lco/vine/android/SingleFragmentWrapper;->isLocked()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lco/vine/android/SingleFragment;->mWrapper:Lco/vine/android/SingleFragmentWrapper;

    invoke-virtual {v0}, Lco/vine/android/SingleFragmentWrapper;->fetchPostContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lco/vine/android/SingleFragment;->addRequest(Ljava/lang/String;I)Ljava/lang/String;

    :cond_11
    return-void
.end method

.method protected fetchPosts(IJZ)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot fetch on single post"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lco/vine/android/SingleFragment;->mWrapper:Lco/vine/android/SingleFragmentWrapper;

    invoke-virtual {v0}, Lco/vine/android/SingleFragmentWrapper;->isLocked()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lco/vine/android/SingleFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/vine/android/SingleFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lco/vine/android/SingleFragment;->mWrapper:Lco/vine/android/SingleFragmentWrapper;

    new-instance v1, Lco/vine/android/SingleFragment$SinglePostListener;

    invoke-direct {v1, p0}, Lco/vine/android/SingleFragment$SinglePostListener;-><init>(Lco/vine/android/SingleFragment;)V

    invoke-virtual {v0, p0, v1}, Lco/vine/android/SingleFragmentWrapper;->onCreate(Lco/vine/android/BaseControllerFragment;Lco/vine/android/client/AppSessionListener;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lco/vine/android/SingleFragment;->setFocused(Z)V

    :cond_14
    const-string v0, "Single Post"

    invoke-virtual {p0, v0}, Lco/vine/android/SingleFragment;->setFlurryEventSource(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lco/vine/android/SingleFragment;->mWrapper:Lco/vine/android/SingleFragmentWrapper;

    invoke-virtual {v0}, Lco/vine/android/SingleFragmentWrapper;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lco/vine/android/SingleFragment;->mWrapper:Lco/vine/android/SingleFragmentWrapper;

    const v1, 0x7f03006a

    invoke-virtual {p0, p1, v1, p2}, Lco/vine/android/SingleFragment;->createView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lco/vine/android/SingleFragmentWrapper;->onCreateLockedView(Landroid/view/View;Lco/vine/android/widget/SpanClickListener;)Landroid/view/View;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseTimelineFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    goto :goto_15
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lco/vine/android/BaseTimelineFragment;->onPause()V

    iget-object v0, p0, Lco/vine/android/SingleFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {p0}, Lco/vine/android/SingleFragment;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/GenericTimelineAdapter;->onPause(Z)V

    iget-object v0, p0, Lco/vine/android/SingleFragment;->mWrapper:Lco/vine/android/SingleFragmentWrapper;

    invoke-virtual {v0}, Lco/vine/android/SingleFragmentWrapper;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 6

    const/4 v4, 0x3

    invoke-super {p0}, Lco/vine/android/BaseTimelineFragment;->onResume()V

    iget-object v0, p0, Lco/vine/android/SingleFragment;->mWrapper:Lco/vine/android/SingleFragmentWrapper;

    invoke-virtual {v0}, Lco/vine/android/SingleFragmentWrapper;->onResume()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lco/vine/android/SingleFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {p0}, Lco/vine/android/SingleFragment;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/GenericTimelineAdapter;->onResume(Z)V

    iget-boolean v0, p0, Lco/vine/android/SingleFragment;->mFetched:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lco/vine/android/SingleFragment;->mWrapper:Lco/vine/android/SingleFragmentWrapper;

    invoke-virtual {v0}, Lco/vine/android/SingleFragmentWrapper;->getPostId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_29

    invoke-virtual {p0, v4}, Lco/vine/android/SingleFragment;->fetchPostContent(I)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lco/vine/android/SingleFragment;->mWrapper:Lco/vine/android/SingleFragmentWrapper;

    invoke-virtual {v0}, Lco/vine/android/SingleFragmentWrapper;->getSharedId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-direct {p0, v4}, Lco/vine/android/SingleFragment;->fetchPostId(I)V

    goto :goto_28
.end method
