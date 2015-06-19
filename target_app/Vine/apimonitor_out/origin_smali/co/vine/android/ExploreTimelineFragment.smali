.class public Lco/vine/android/ExploreTimelineFragment;
.super Lco/vine/android/BaseTimelineFragment;
.source "ExploreTimelineFragment.java"


# static fields
.field public static final ARG_CATEGORY:Ljava/lang/String; = "category"

.field public static final ARG_DATA:Ljava/lang/String; = "data"

.field public static final ARG_TAG:Ljava/lang/String; = "tag"

.field public static final CATEGORY_ON_THE_RISE:Ljava/lang/String; = "trending-people"

.field public static final CATEGORY_POPULAR_NOW:Ljava/lang/String; = "popular-now"

.field public static final CATEGORY_TAG:Ljava/lang/String; = "tag"

.field public static final CATEGORY_TIMELINES:Ljava/lang/String; = "timelines"

.field private static final EVENT_SOURCE_TITLE:Ljava/lang/String; = "Explore Timeline: "


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mData:Landroid/net/Uri;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/BaseTimelineFragment;-><init>()V

    return-void
.end method

.method public static prepareArguments(Landroid/content/Intent;ZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/os/Bundle;
    .registers 7

    invoke-static {p0, p1}, Lco/vine/android/BaseArrayListFragment;->prepareArguments(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tag"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method


# virtual methods
.method protected fetchPosts(IJZ)Ljava/lang/String;
    .registers 18

    const-string v0, "trending-people"

    iget-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v5, 0x4

    :goto_b
    iget-object v0, p0, Lco/vine/android/ExploreTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    const/16 v2, 0xa

    iget-object v3, p0, Lco/vine/android/ExploreTimelineFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v3

    iget-object v10, p0, Lco/vine/android/ExploreTimelineFragment;->mTag:Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lco/vine/android/ExploreTimelineFragment;->mData:Landroid/net/Uri;

    move v6, p1

    move-wide v7, p2

    move/from16 v9, p4

    invoke-virtual/range {v0 .. v12}, Lco/vine/android/client/AppController;->fetchPosts(Lco/vine/android/client/Session;IJIIJZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_29
    const-string v0, "popular-now"

    iget-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v5, 0x5

    goto :goto_b

    :cond_35
    const-string v0, "tag"

    iget-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lco/vine/android/ExploreTimelineFragment;->mTag:Ljava/lang/String;

    if-nez v0, :cond_4b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have to specify a tag."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    const/4 v5, 0x6

    goto :goto_b

    :cond_4d
    const-string v0, "timelines"

    iget-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/16 v5, 0xb

    goto :goto_b

    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have to specify a category."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lco/vine/android/ExploreTimelineFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/vine/android/ExploreTimelineFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mCategory:Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mData:Landroid/net/Uri;

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ExploreTimelineFragment;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Explore Timeline: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ExploreTimelineFragment;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lco/vine/android/ExploreTimelineFragment;->setFlurryEventSource(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lco/vine/android/ExploreTimelineFragment;->setFocused(Z)V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lco/vine/android/BaseTimelineFragment;->onPause()V

    iget-object v0, p0, Lco/vine/android/ExploreTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {p0}, Lco/vine/android/ExploreTimelineFragment;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/GenericTimelineAdapter;->onPause(Z)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lco/vine/android/BaseTimelineFragment;->onResume()V

    iget-object v0, p0, Lco/vine/android/ExploreTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {p0}, Lco/vine/android/ExploreTimelineFragment;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/GenericTimelineAdapter;->onResume(Z)V

    iget-object v0, p0, Lco/vine/android/ExploreTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    const-string v1, "ExploreTimeline"

    invoke-virtual {v0, v1}, Lco/vine/android/widget/GenericTimelineAdapter;->startLoadingTimeProfiling(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/ExploreTimelineFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {v0}, Lco/vine/android/widget/GenericTimelineAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lco/vine/android/ExploreTimelineFragment;->mFetched:Z

    if-nez v0, :cond_24

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lco/vine/android/ExploreTimelineFragment;->fetchContent(IZ)V

    :cond_24
    return-void
.end method
