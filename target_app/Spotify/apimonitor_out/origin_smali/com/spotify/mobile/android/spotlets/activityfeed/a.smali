.class public final Lcom/spotify/mobile/android/spotlets/activityfeed/a;
.super Landroid/support/v4/app/x;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/ac;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/spotify/mobile/android/ui/NavigationItem;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/aa;
.implements Lcom/spotify/mobile/android/util/cd;


# static fields
.field private static Y:Lcom/spotify/mobile/android/util/PlaybackListener;

.field private static Z:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

.field private static aa:I

.field private static ab:Z


# instance fields
.field private ac:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

.field private ad:Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

.field private ae:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

.field private af:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private ag:Lcom/spotify/android/paste/widget/EmptyView;

.field private ah:Lcom/spotify/mobile/android/ui/view/LoadingView;

.field private ai:Landroid/widget/Button;

.field private aj:Landroid/os/Parcelable;

.field private ak:Lcom/spotify/mobile/android/util/cc;

.field private al:Landroid/view/View;

.field private am:Lcom/spotify/android/paste/app/a;

.field private an:Lcom/spotify/mobile/android/util/dw;

.field private ao:Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;

.field private ap:Lcom/spotify/cosmos/android/Resolver;

.field private aq:Lcom/spotify/mobile/android/cosmos/player/v1/Player;

.field private ar:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

.field private as:I

.field private at:Z

.field private au:Z

.field private av:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->at:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->au:Z

    new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->av:Landroid/support/v4/app/z;

    return-void
.end method

.method static synthetic G()Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->Z:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    return-object v0
.end method

.method static synthetic H()Z
    .registers 1

    sget-boolean v0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ab:Z

    return v0
.end method

.method private I()V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->i:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_9
    if-ge v2, v4, :cond_47

    aget-object v5, v3, v2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ak:Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cc;->c()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ak:Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getResource()Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ak:Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cc;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getResource()Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_3d
    const/4 v0, 0x1

    :goto_3e
    invoke-virtual {v5, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->setIsPlaying(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_45
    move v0, v1

    goto :goto_3e

    :cond_47
    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ad:Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/activityfeed/a;Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;)V

    return-void
.end method

.method private a(Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;)V
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->addAll([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ao:Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/activityfeed/a;Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->af:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ao:Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->getStories()[Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(I)V

    :cond_12
    return-void
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ai:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ae:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->setNotifyOnChange(Z)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->clear()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->setNotifyOnChange(Z)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;

    new-array v1, v2, [Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;-><init>([Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->i:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;

    return-void
.end method

.method private e(Z)V
    .registers 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-eqz p1, :cond_b

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ac:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->b()V

    :cond_b
    iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->at:Z

    if-nez v2, :cond_33

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ac:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->c()Z

    move-result v2

    if-nez v2, :cond_33

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->at:Z

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->i:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ae:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ah:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;)V

    :goto_29
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ac:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/a$6;-><init>(Lcom/spotify/mobile/android/spotlets/activityfeed/a;ZJ)V

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/client/b;)V

    :cond_33
    return-void

    :cond_34
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->al:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29
.end method

.method static synthetic f(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ac:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->I()V

    return-void
.end method

.method static synthetic h(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->al:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->af:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Z)V

    iput-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->at:Z

    return-void
.end method


# virtual methods
.method public final D()Landroid/support/v4/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public final E()Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->f:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    return-object v0
.end method

.method public final F()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->I()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const v0, 0x7f03005f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a028b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->af:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->af:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/ac;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->af:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()V

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ah:Lcom/spotify/mobile/android/ui/view/LoadingView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ah:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f0a028c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/spotify/android/paste/widget/EmptyView;

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ag:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ai:Landroid/widget/Button;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ai:Landroid/widget/Button;

    const v2, 0x7f0a0124

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ai:Landroid/widget/Button;

    const v2, 0x7f0f001d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ai:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ai:Landroid/widget/Button;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/activityfeed/a$3;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a$3;-><init>(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const v0, 0x7f0f0018

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->Y:Lcom/spotify/mobile/android/util/PlaybackListener;

    if-nez v1, :cond_23

    new-instance v1, Lcom/spotify/mobile/android/util/PlaybackListener;

    invoke-direct {v1, v0}, Lcom/spotify/mobile/android/util/PlaybackListener;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/spotify/mobile/android/spotlets/activityfeed/a$9;

    invoke-direct {v2, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a$9;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/PlaybackListener;->a(Lcom/spotify/mobile/android/util/cb;)V

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/PlaybackListener;->a()V

    sput-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->Y:Lcom/spotify/mobile/android/util/PlaybackListener;

    :cond_23
    new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ao:Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->i:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->an:Lcom/spotify/mobile/android/util/dw;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ad:Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

    new-instance v0, Lcom/spotify/cosmos/android/DeferredResolver;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/cosmos/android/DeferredResolver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ap:Lcom/spotify/cosmos/android/Resolver;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ap:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V

    new-instance v0, Lcom/spotify/mobile/android/cosmos/player/v1/Player;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ap:Lcom/spotify/cosmos/android/Resolver;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;-><init>(Lcom/spotify/cosmos/android/Resolver;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->aq:Lcom/spotify/mobile/android/cosmos/player/v1/Player;

    if-eqz p1, :cond_cf

    const-string v0, "com.spotify.activity_feed.state.list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->aj:Landroid/os/Parcelable;

    const-string v0, "com.spotify.activity_feed.state.model"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->i:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "com.spotify.activity_feed.state.next_page_path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ac:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    :goto_83
    sget-object v0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->Z:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->i:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->Z:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    sget v2, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->aa:I

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->replaceStory(Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;I)V

    sput-object v3, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->Z:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    sput v4, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->aa:I

    :cond_94
    new-instance v0, Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/cc;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/cd;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ak:Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a014a

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ak:Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    new-instance v0, Lcom/spotify/mobile/android/util/z;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->u()Landroid/support/v4/app/y;

    move-result-object v1

    const v2, 0x7f0a0149

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a014d

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->av:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a(Z)V

    return-void

    :cond_cf
    new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;

    new-array v1, v4, [Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;-><init>([Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->i:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ac:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    goto :goto_83
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->au:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;)V

    :cond_b
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->al:Landroid/view/View;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->al:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->i:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/spotlets/activityfeed/a$4;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a$4;-><init>(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/stuff/c;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ag:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a()Landroid/widget/ListView;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/stuff/c;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Landroid/view/View;)V

    sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ca:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    const v2, 0x7f0f001e

    const v3, 0x7f0f001c

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/stuff/c;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;II)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v0

    const v1, 0x7f0f001b

    const v2, 0x7f0f001a

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/stuff/c;->b(II)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v0

    const v1, 0x7f0f020b

    const v2, 0x7f0f0019

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/stuff/c;->a(II)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/spotlets/activityfeed/a$5;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a$5;-><init>(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/c;->a(Lcom/spotify/mobile/android/ui/stuff/d;)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/stuff/c;->a()Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ae:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    return-void
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;

    invoke-virtual {v0, p3}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->a(I)Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ar:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    long-to-int v0, p4

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->as:I

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;

    invoke-virtual {v0, p3}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->b(I)Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/a$2;->a:[I

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter$ViewType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_176

    :cond_24
    :goto_24
    return-void

    :pswitch_25
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ar:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getAuthor()Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ao:Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger$StoryAction;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger$StoryAction;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ar:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    invoke-virtual {v0, v1, v2, p3}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger$StoryAction;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;I)V

    goto :goto_24

    :pswitch_48
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ar:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getResource()Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;->valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;->d:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel$Types;

    if-ne v2, v3, :cond_119

    iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->au:Z

    if-eqz v2, :cond_119

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v2

    if-nez v2, :cond_cb

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->aq:Lcom/spotify/mobile/android/cosmos/player/v1/Player;

    sget-object v2, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->PLAY:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    invoke-static {v2}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->create(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;

    move-result-object v2

    const-string v3, "spotify:internal:social-feed"

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->viewUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getResource()Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getParent()Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->contextUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getResource()Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getUri()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->tracks(Ljava/util/List;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->build()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->play(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ad:Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/activityfeed/ActivityFeedFragment$6;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/spotify/mobile/android/spotlets/activityfeed/ActivityFeedFragment$6;-><init>(Lcom/spotify/mobile/android/spotlets/activityfeed/a;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ao:Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;

    sget-object v2, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger$StoryAction;->d:Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger$StoryAction;

    invoke-virtual {v0, v2, v1, p3}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger$StoryAction;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;I)V

    :goto_c0
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ao:Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger$StoryAction;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger$StoryAction;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ar:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    invoke-virtual {v0, v1, v2, p3}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger$StoryAction;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;I)V

    goto/16 :goto_24

    :cond_cb
    new-instance v1, Lcom/spotify/android/paste/app/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f1000ab

    invoke-direct {v1, v2, v3}, Lcom/spotify/android/paste/app/b;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0f0017

    invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/app/b;->a(Ljava/lang/CharSequence;)Lcom/spotify/android/paste/app/b;

    move-result-object v1

    const v2, 0x7f0f0014

    invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/app/b;->b(Ljava/lang/CharSequence;)Lcom/spotify/android/paste/app/b;

    move-result-object v1

    const v2, 0x7f0f0016

    invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/spotify/mobile/android/spotlets/activityfeed/a$8;

    invoke-direct {v3, p0, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a$8;-><init>(Lcom/spotify/mobile/android/spotlets/activityfeed/a;Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;)V

    invoke-virtual {v1, v2, v3}, Lcom/spotify/android/paste/app/b;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;

    move-result-object v0

    const v1, 0x7f0f0015

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/spotify/mobile/android/spotlets/activityfeed/a$7;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a$7;-><init>(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/app/b;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/android/paste/app/b;->a()Lcom/spotify/android/paste/app/a;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->am:Lcom/spotify/android/paste/app/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->am:Lcom/spotify/android/paste/app/a;

    invoke-virtual {v0}, Lcom/spotify/android/paste/app/a;->show()V

    goto :goto_c0

    :cond_119
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ar:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    sput-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->Z:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->as:I

    sput v1, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->aa:I

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ad:Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->a()Z

    move-result v1

    sput-boolean v1, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ab:Z

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c0

    :pswitch_13d
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ar:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getStreams()Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StreamsModel;->getCount()I

    move-result v0

    if-lez v0, :cond_24

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "spotify:internal:social-feed:reactors:story_id"

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ar:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "spotify:internal:social-feed:reactors"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ao:Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger$StoryAction;->c:Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger$StoryAction;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ar:Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    invoke-virtual {v0, v1, v2, p3}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger$StoryAction;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;I)V

    goto/16 :goto_24

    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_25
        :pswitch_48
        :pswitch_13d
    .end packed-switch
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V

    const-string v0, "com.spotify.activity_feed.state.model"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->i:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "com.spotify.activity_feed.state.list"

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "com.spotify.activity_feed.state.next_page_path"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ac:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ao:Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final d(Z)V
    .registers 5

    const/4 v1, 0x1

    iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->au:Z

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ae:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->au:Z

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->i:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_44

    move v0, v1

    :goto_12
    invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Z)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;

    iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->au:Z

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->a(Z)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->x_()V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->au:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->aj:Landroid/os/Parcelable;

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a()Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->aj:Landroid/os/Parcelable;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_38
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->i:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ActivityFeedModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-direct {p0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->e(Z)V

    :cond_43
    return-void

    :cond_44
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final f_()V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->at:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ac:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->b()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->e(Z)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->af:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Z)V

    goto :goto_d
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 12

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->c()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_38

    add-int v1, p2, p3

    add-int/lit8 v2, p4, -0x32

    if-lt v1, v2, :cond_36

    const/4 v1, 0x1

    :goto_12
    if-eqz v1, :cond_17

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->e(Z)V

    :cond_17
    move v1, v0

    :goto_18
    if-ge v1, p3, :cond_38

    add-int/lit8 v0, p2, -0x1

    add-int v2, v0, v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ao:Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->a(I)Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    move-result-object v4

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/adapter/ActivityFeedStoryAdapter;->getItemId(I)J

    move-result-wide v5

    long-to-int v0, v5

    invoke-virtual {v3, v4, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    :cond_36
    move v1, v0

    goto :goto_12

    :cond_38
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method

.method public final x()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->x()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->an:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    return-void
.end method

.method public final y()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->an:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    return-void
.end method

.method public final z()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->z()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ac:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ad:Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->ap:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V

    return-void
.end method
