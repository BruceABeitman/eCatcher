.class public final Lcom/spotify/mobile/android/spotlets/discover/b/a;
.super Landroid/support/v4/app/x;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/spotify/mobile/android/ui/NavigationItem;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/aa;
.implements Lcom/spotify/mobile/android/util/cd;


# instance fields
.field private Y:I

.field private Z:Ljava/lang/String;

.field private aa:Lcom/spotify/mobile/android/spotlets/discover/a/a;

.field private ab:Lcom/spotify/mobile/android/util/dw;

.field private ac:Lcom/spotify/mobile/android/ui/view/LoadingView;

.field private ad:Landroid/view/View;

.field private ae:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

.field private ag:I

.field private ah:I

.field private ai:I

.field private final aj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/discover/model/Story;",
            ">;"
        }
    .end annotation
.end field

.field private ak:Lcom/spotify/mobile/android/util/cc;

.field private al:Lcom/spotify/mobile/android/util/z;

.field private am:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

.field private an:J

.field private ao:I

.field private ap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aq:Lcom/spotify/mobile/android/spotlets/discover/c/a;

.field private ar:Z

.field private as:Lcom/spotify/mobile/android/util/tracking/n;

.field private at:Landroid/view/View;

.field private au:Landroid/view/View;

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->Y:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ag:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aj:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->an:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ar:Z

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/discover/b/a;I)I
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->Y:I

    return p1
.end method

.method public static a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/discover/b/a;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/discover/b/a;

    invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/discover/b/a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->c_(Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/discover/b/a;Lcom/spotify/mobile/android/ui/view/LoadingView;)Lcom/spotify/mobile/android/ui/view/LoadingView;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ac:Lcom/spotify/mobile/android/ui/view/LoadingView;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    return-object v0
.end method

.method static synthetic a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->b(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/discover/b/a;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->i:I

    return v0
.end method

.method private static b(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->a:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_7
.end method

.method private c(I)Landroid/support/v4/app/z;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/spotlets/discover/b/a$4;-><init>(Lcom/spotify/mobile/android/spotlets/discover/b/a;I)V

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/spotlets/discover/a/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aa:Lcom/spotify/mobile/android/spotlets/discover/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ae:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/spotlets/discover/b/a;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ag:I

    return v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/ui/view/LoadingView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ac:Lcom/spotify/mobile/android/ui/view/LoadingView;

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->am:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    return-object v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ad:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/util/tracking/n;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->as:Lcom/spotify/mobile/android/util/tracking/n;

    return-object v0
.end method

.method static synthetic j(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Ljava/lang/Long;
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->an:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->an:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_1c
    return-object v0
.end method

.method static synthetic k(Lcom/spotify/mobile/android/spotlets/discover/b/a;)Lcom/spotify/mobile/android/spotlets/discover/c/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aq:Lcom/spotify/mobile/android/spotlets/discover/c/a;

    return-object v0
.end method

.method static synthetic l(Lcom/spotify/mobile/android/spotlets/discover/b/a;)V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->an:J

    return-void
.end method


# virtual methods
.method public final D()Landroid/support/v4/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public final E()Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->d:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    return-object v0
.end method

.method public final F()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aa:Lcom/spotify/mobile/android/spotlets/discover/a/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ak:Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cc;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ak:Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/cc;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ak:Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/cc;->c()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/discover/a/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    move v1, v0

    :goto_19
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_43

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aa:Lcom/spotify/mobile/android/spotlets/discover/a/a;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/discover/a/a;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/spotify/mobile/android/ui/cell/b;

    if-eqz v2, :cond_3f

    check-cast v0, Lcom/spotify/mobile/android/ui/cell/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/cell/b;->a()V

    :cond_3f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    :cond_43
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const v0, 0x7f030087

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->Z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->Z:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    const v0, 0x7f0f01f0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->Z:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->k()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->i:I

    if-eqz p1, :cond_6c

    const-string v0, "discover_story_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->i:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ah:I

    const-string v0, "discover_story_position_offset"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ai:I

    const-string v0, "KEY_LOADED_STORIES_LIST"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aj:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3f
    :goto_3f
    new-instance v0, Lcom/spotify/mobile/android/spotlets/discover/c/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aq:Lcom/spotify/mobile/android/spotlets/discover/c/a;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->a(Z)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->g:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ab:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "spotify:internal:discover"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->as:Lcom/spotify/mobile/android/util/tracking/n;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->as:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V

    return-void

    :cond_6c
    iput v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ah:I

    iput v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ai:I

    goto :goto_3f
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 10

    const/4 v6, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/os/Bundle;)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view must be a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->a()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    const v0, 0x7f0a028e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/widget/EmptyView;

    new-instance v1, Lcom/spotify/mobile/android/ui/stuff/c;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    invoke-direct {v1, v2, v0, v3}, Lcom/spotify/mobile/android/ui/stuff/c;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Landroid/view/View;)V

    const v2, 0x7f0f020b

    const v3, 0x7f0f01e9

    invoke-virtual {v1, v2, v3}, Lcom/spotify/mobile/android/ui/stuff/c;->a(II)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v1

    const v2, 0x7f0f01ee

    const v3, 0x7f0f01ed

    invoke-virtual {v1, v2, v3}, Lcom/spotify/mobile/android/ui/stuff/c;->b(II)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v1

    sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aT:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    const v3, 0x7f0f01ec

    const v4, 0x7f0f01ea

    invoke-virtual {v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/stuff/c;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;II)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v1

    new-instance v2, Lcom/spotify/mobile/android/spotlets/discover/b/a$1;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/discover/b/a;)V

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/stuff/c;->a(Lcom/spotify/mobile/android/ui/stuff/d;)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/stuff/c;->a()Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->am:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0f01eb

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/view/View;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/discover/b/a$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a$2;-><init>(Lcom/spotify/mobile/android/spotlets/discover/b/a;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/cc;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/cd;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ak:Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005e

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ad:Landroid/view/View;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ad:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ad:Landroid/view/View;

    const v1, 0x7f0a0289

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->at:Landroid/view/View;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ad:Landroid/view/View;

    const v1, 0x7f0a028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->au:Landroid/view/View;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/discover/a/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->i:I

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aj:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ak:Lcom/spotify/mobile/android/util/cc;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aq:Lcom/spotify/mobile/android/spotlets/discover/c/a;

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/discover/a/a;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/spotify/mobile/android/a/b;Lcom/spotify/mobile/android/spotlets/discover/c/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aa:Lcom/spotify/mobile/android/spotlets/discover/a/a;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/discover/b/a$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a$3;-><init>(Lcom/spotify/mobile/android/spotlets/discover/b/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ae:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ae:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aa:Lcom/spotify/mobile/android/spotlets/discover/a/a;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->a(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ah:I

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ai:I

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->setSelectionFromTop(II)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a0176

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ak:Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {v0, v1, v6, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ap:Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->k()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ao:I

    if-eqz p2, :cond_132

    const-string v0, "previous_orientation_state"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "discover_logged_story_impressions"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_132

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ao:I

    if-eq v2, v0, :cond_132

    if-eqz v1, :cond_132

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ap:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_132
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    new-instance v0, Lcom/spotify/mobile/android/util/z;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->al:Lcom/spotify/mobile/android/util/z;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a0175

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->al:Lcom/spotify/mobile/android/util/z;

    invoke-virtual {v0, v1, v6, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3f

    move v0, v1

    :goto_13
    iget v3, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->i:I

    mul-int/2addr v2, v3

    const-string v3, "discover_story_position"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "discover_story_position_offset"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aa:Lcom/spotify/mobile/android/spotlets/discover/a/a;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aa:Lcom/spotify/mobile/android/spotlets/discover/a/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/a/a;->a()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2f
    if-ge v1, v2, :cond_44

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aa:Lcom/spotify/mobile/android/spotlets/discover/a/a;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_3f
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_13

    :cond_44
    const-string v0, "KEY_LOADED_STORIES_LIST"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_49
    const-string v0, "previous_orientation_state"

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ao:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ap:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ap:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v1, "discover_logged_story_impressions"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->as:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final d(Z)V
    .registers 6

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ar:Z

    if-nez p1, :cond_1b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aa:Lcom/spotify/mobile/android/spotlets/discover/a/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/a/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->am:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Z)V

    :cond_13
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ad:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->am:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->am:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aa:Lcom/spotify/mobile/android/spotlets/discover/a/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/a/a;->a()I

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a0177

    const/4 v2, 0x0

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ag:I

    invoke-direct {p0, v3}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->c(I)Landroid/support/v4/app/z;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    goto :goto_1a
.end method

.method public final f()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ae:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ae:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->b(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ae:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_12
    invoke-super {p0}, Landroid/support/v4/app/x;->f()V

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6

    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/View$OnCreateContextMenuListener;

    if-nez v1, :cond_a

    :goto_9
    return-void

    :cond_a
    check-cast v0, Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_9
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 12

    const/16 v5, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ar:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->getFooterViewsCount()I

    move-result v0

    sub-int v1, p4, v0

    add-int v0, p2, p3

    const/16 v3, 0xa

    iget v4, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->i:I

    div-int/2addr v3, v4

    sub-int v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    if-lt v0, v3, :cond_c6

    const/4 v0, 0x1

    :goto_24
    if-eqz v0, :cond_58

    if-lez v1, :cond_c9

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->i:I

    mul-int/2addr v0, v1

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->Y:I

    if-ge v0, v3, :cond_c9

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->i:I

    mul-int/2addr v0, v1

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ag:I

    if-le v0, v3, :cond_58

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ag:I

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ad:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->at:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->au:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v3, 0x7f0a0177

    const/4 v4, 0x0

    iget v5, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ag:I

    invoke-direct {p0, v5}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->c(I)Landroid/support/v4/app/z;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    :cond_58
    :goto_58
    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    move v1, v2

    :goto_5f
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->af:Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_e3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    if-gez v5, :cond_e8

    add-int v0, v3, v5

    :goto_7f
    if-le v6, v4, :cond_84

    sub-int v5, v6, v4

    sub-int/2addr v0, v5

    :cond_84
    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x3f40

    cmpg-float v0, v0, v3

    if-lez v0, :cond_e3

    move v3, v2

    :goto_8e
    iget v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->i:I

    if-ge v3, v0, :cond_e3

    add-int v0, v1, p2

    iget v5, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->i:I

    mul-int/2addr v0, v5

    add-int/2addr v0, v3

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aa:Lcom/spotify/mobile/android/spotlets/discover/a/a;

    invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/discover/a/a;->a()I

    move-result v5

    if-ge v0, v5, :cond_c2

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aa:Lcom/spotify/mobile/android/spotlets/discover/a/a;

    invoke-virtual {v5, v0}, Lcom/spotify/mobile/android/spotlets/discover/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ap:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c2

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ap:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->aq:Lcom/spotify/mobile/android/spotlets/discover/c/a;

    invoke-virtual {v5, v0}, Lcom/spotify/mobile/android/spotlets/discover/c/a;->a(Lcom/spotify/mobile/android/spotlets/discover/model/Story;)V

    :cond_c2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_8e

    :cond_c6
    move v0, v2

    goto/16 :goto_24

    :cond_c9
    if-lez v1, :cond_58

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->i:I

    mul-int/2addr v0, v1

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->Y:I

    if-lt v0, v3, :cond_58

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ad:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->at:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->au:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_58

    :cond_e3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_5f

    :cond_e8
    move v0, v3

    goto :goto_7f
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method

.method public final r_()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->r_()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->as:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V

    return-void
.end method

.method public final s_()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->s_()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->as:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V

    return-void
.end method

.method public final x()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->x()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ab:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    return-void
.end method

.method public final y()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/b/a;->ab:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    return-void
.end method
