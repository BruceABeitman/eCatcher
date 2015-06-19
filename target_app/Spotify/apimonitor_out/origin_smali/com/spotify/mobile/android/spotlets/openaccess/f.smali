.class public final Lcom/spotify/mobile/android/spotlets/openaccess/f;
.super Lcom/spotify/mobile/android/spotlets/openaccess/a;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/openaccess/h;


# static fields
.field private static final ae:Lcom/spotify/mobile/android/spotlets/openaccess/a/b;


# instance fields
.field private Y:Landroid/widget/Button;

.field private Z:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

.field private aa:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private ab:Lcom/spotify/mobile/android/spotlets/openaccess/util/c;

.field private ac:Lcom/spotify/mobile/android/util/bl;

.field private ad:Lcom/spotify/mobile/android/spotlets/openaccess/util/e;

.field private b:Lcom/spotify/mobile/android/ui/prettylist/c;

.field private c:Lcom/spotify/mobile/android/spotlets/openaccess/g;

.field private d:Lcom/spotify/mobile/android/spotlets/openaccess/a/a;

.field private e:Lcom/spotify/mobile/android/ui/adapter/o;

.field private f:Lcom/spotify/android/paste/widget/EmptyView;

.field private g:Lcom/spotify/mobile/android/ui/view/LoadingView;

.field private h:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/f$2;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/f$2;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->ae:Lcom/spotify/mobile/android/spotlets/openaccess/a/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/a;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->Z:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    const-class v0, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->ab:Lcom/spotify/mobile/android/spotlets/openaccess/util/c;

    const-class v0, Lcom/spotify/mobile/android/util/bl;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/bl;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->ac:Lcom/spotify/mobile/android/util/bl;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/f$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f$1;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/f;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->ad:Lcom/spotify/mobile/android/spotlets/openaccess/util/e;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/openaccess/f;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uri"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/openaccess/f;

    invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/f;-><init>()V

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->c_(Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/openaccess/f;)Lcom/spotify/mobile/android/ui/prettylist/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    return-object v0
.end method

.method private a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->ac:Lcom/spotify/mobile/android/util/bl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/bl;->a()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->h:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->h:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->h:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->g:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->c:Lcom/spotify/mobile/android/spotlets/openaccess/g;

    if-nez v0, :cond_38

    new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/g;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/spotlets/openaccess/g;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/openaccess/h;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->c:Lcom/spotify/mobile/android/spotlets/openaccess/g;

    :cond_38
    iput-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->i:Z

    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->c:Lcom/spotify/mobile/android/spotlets/openaccess/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/g;->a(Ljava/lang/String;)V

    :goto_52
    return-void

    :cond_53
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->h:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->h:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Z)V

    goto :goto_52
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/openaccess/f;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->aa:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/openaccess/f;)Lcom/spotify/mobile/android/spotlets/openaccess/util/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->ab:Lcom/spotify/mobile/android/spotlets/openaccess/util/c;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/openaccess/f;)Lcom/spotify/mobile/android/spotlets/openaccess/a/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->d:Lcom/spotify/mobile/android/spotlets/openaccess/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/spotlets/openaccess/f;)Lcom/spotify/mobile/android/spotlets/openaccess/util/e;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->ad:Lcom/spotify/mobile/android/spotlets/openaccess/util/e;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/spotlets/openaccess/f;)Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->Z:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/spotlets/openaccess/f;)Lcom/spotify/mobile/android/ui/adapter/o;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->e:Lcom/spotify/mobile/android/ui/adapter/o;

    return-object v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/spotlets/openaccess/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, -0x2

    invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/spotlets/openaccess/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a021b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lcom/spotify/mobile/android/spotlets/openaccess/f;->ae:Lcom/spotify/mobile/android/spotlets/openaccess/a/b;

    invoke-direct {v3, v4, v5}, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/openaccess/a/b;)V

    iput-object v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->d:Lcom/spotify/mobile/android/spotlets/openaccess/a/a;

    new-instance v3, Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-direct {v3, v2}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->e:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->e:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->d:Lcom/spotify/mobile/android/spotlets/openaccess/a/a;

    const v5, 0x7f0f0275

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;II)V

    new-instance v3, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->h()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "uri"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/prettylist/e;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v4

    iput-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri;->J:Lcom/spotify/mobile/android/util/ea;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v4

    iput-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->aa:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/spotify/mobile/android/ui/stuff/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->Y:Landroid/widget/Button;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->Y:Landroid/widget/Button;

    new-instance v5, Lcom/spotify/mobile/android/spotlets/openaccess/f$3;

    invoke-direct {v5, p0, v3}, Lcom/spotify/mobile/android/spotlets/openaccess/f$3;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/f;Lcom/spotify/mobile/android/util/SpotifyLink;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->Y:Landroid/widget/Button;

    invoke-interface {v4, v5}, Lcom/spotify/mobile/android/ui/prettylist/c;->b(Landroid/view/View;)V

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v4}, Lcom/spotify/mobile/android/ui/prettylist/c;->a()Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(Z)V

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x11

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {v4, v6}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Landroid/view/View;)V

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v4}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->e:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v4}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/spotify/mobile/android/spotlets/openaccess/f$4;

    invoke-direct {v5, p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f$4;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/f;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v2}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v5, Lcom/spotify/mobile/android/spotlets/openaccess/f$5;

    invoke-direct {v5, p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f$5;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/f;)V

    invoke-static {v2, v5}, Lcom/spotify/mobile/android/spotlets/openaccess/util/a;->a(Landroid/content/Context;Landroid/view/View$OnClickListener;)Lcom/spotify/android/paste/widget/EmptyView;

    move-result-object v2

    iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->f:Lcom/spotify/android/paste/widget/EmptyView;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->f:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v2

    iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->g:Lcom/spotify/mobile/android/ui/view/LoadingView;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->g:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/spotify/mobile/android/ui/stuff/c;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->f:Lcom/spotify/android/paste/widget/EmptyView;

    iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v7}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;

    move-result-object v7

    invoke-direct {v2, v5, v6, v7}, Lcom/spotify/mobile/android/ui/stuff/c;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Landroid/view/View;)V

    const v5, 0x7f0f029d

    const v6, 0x7f0f029c

    invoke-virtual {v2, v5, v6}, Lcom/spotify/mobile/android/ui/stuff/c;->a(II)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v2

    const v5, 0x7f0f02a0

    const v6, 0x7f0f029e

    invoke-virtual {v2, v5, v6}, Lcom/spotify/mobile/android/ui/stuff/c;->b(II)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/stuff/c;->a()Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v2

    iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->h:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->a()V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->ab:Lcom/spotify/mobile/android/spotlets/openaccess/util/c;

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->b(Lcom/spotify/mobile/android/util/SpotifyLink;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;)V
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->o()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->i:Z

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->h:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V

    :goto_11
    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->containsImage()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->getLargestImage()Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;

    move-result-object v2

    new-instance v3, Lcom/spotify/mobile/android/ui/c/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lcom/spotify/mobile/android/ui/c/a;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v3}, Lcom/spotify/mobile/android/ui/prettylist/c;->d()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->e()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V

    :goto_62
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_6c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->i:Z

    goto :goto_11

    :cond_70
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->e()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_62
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/openaccess/model/TopTracks;)V
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->o()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->i:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->h:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V

    :goto_11
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->d:Lcom/spotify/mobile/android/spotlets/openaccess/a/a;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/openaccess/model/TopTracks;->getTracks()[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->a([Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;)V

    goto :goto_6

    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->i:Z

    goto :goto_11
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->aa:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->aa:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final s_()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/a;->s_()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->Z:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->e()V

    return-void
.end method

.method public final y()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/a;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/f;->Z:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->e()V

    return-void
.end method
