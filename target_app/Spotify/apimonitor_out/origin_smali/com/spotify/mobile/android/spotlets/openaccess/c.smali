.class public final Lcom/spotify/mobile/android/spotlets/openaccess/c;
.super Lcom/spotify/mobile/android/spotlets/openaccess/a;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/openaccess/e;


# static fields
.field private static final ae:Lcom/spotify/mobile/android/spotlets/openaccess/a/b;


# instance fields
.field private Y:Landroid/widget/Button;

.field private Z:Lcom/spotify/mobile/android/spotlets/openaccess/util/c;

.field private aa:Lcom/spotify/mobile/android/util/bl;

.field private ab:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

.field private ac:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private ad:Lcom/spotify/mobile/android/spotlets/openaccess/util/e;

.field private b:Lcom/spotify/mobile/android/ui/prettylist/c;

.field private c:Lcom/spotify/mobile/android/spotlets/openaccess/d;

.field private d:Lcom/spotify/mobile/android/ui/adapter/o;

.field private e:Lcom/spotify/mobile/android/spotlets/openaccess/a/a;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/spotify/android/paste/widget/EmptyView;

.field private h:Lcom/spotify/mobile/android/ui/view/LoadingView;

.field private i:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/c$2;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/c$2;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->ae:Lcom/spotify/mobile/android/spotlets/openaccess/a/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/a;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->Z:Lcom/spotify/mobile/android/spotlets/openaccess/util/c;

    const-class v0, Lcom/spotify/mobile/android/util/bl;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/bl;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->aa:Lcom/spotify/mobile/android/util/bl;

    const-class v0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->ab:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/c$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c$1;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->ad:Lcom/spotify/mobile/android/spotlets/openaccess/util/e;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/openaccess/c;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uri"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/openaccess/c;

    invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/c;-><init>()V

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->c_(Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/ui/prettylist/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    return-object v0
.end method

.method private a()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->aa:Lcom/spotify/mobile/android/util/bl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/bl;->a()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->i:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->i:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->i:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->h:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->c:Lcom/spotify/mobile/android/spotlets/openaccess/d;

    if-nez v0, :cond_38

    new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/d;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/spotlets/openaccess/d;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/openaccess/e;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->c:Lcom/spotify/mobile/android/spotlets/openaccess/d;

    :cond_38
    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->c:Lcom/spotify/mobile/android/spotlets/openaccess/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/d;->a(Ljava/lang/String;)V

    :goto_50
    return-void

    :cond_51
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->i:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->i:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Z)V

    goto :goto_50
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->ac:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/spotlets/openaccess/util/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->Z:Lcom/spotify/mobile/android/spotlets/openaccess/util/c;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/spotlets/openaccess/a/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->e:Lcom/spotify/mobile/android/spotlets/openaccess/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/spotlets/openaccess/util/e;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->ad:Lcom/spotify/mobile/android/spotlets/openaccess/util/e;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->ab:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/ui/adapter/o;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->d:Lcom/spotify/mobile/android/ui/adapter/o;

    return-object v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/spotlets/openaccess/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16

    const/16 v9, 0x11

    const/4 v7, 0x1

    const/4 v11, -0x1

    const/4 v8, -0x2

    const/4 v10, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/spotlets/openaccess/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a021b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-direct {v3, v2}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->d:Lcom/spotify/mobile/android/ui/adapter/o;

    new-instance v3, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->h()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "uri"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri;->H:Lcom/spotify/mobile/android/util/ea;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v4

    iput-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->ac:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/prettylist/e;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v4

    iput-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/spotify/mobile/android/ui/stuff/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->Y:Landroid/widget/Button;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->Y:Landroid/widget/Button;

    new-instance v5, Lcom/spotify/mobile/android/spotlets/openaccess/c$3;

    invoke-direct {v5, p0, v3}, Lcom/spotify/mobile/android/spotlets/openaccess/c$3;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/c;Lcom/spotify/mobile/android/util/SpotifyLink;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->Y:Landroid/widget/Button;

    invoke-interface {v4, v5}, Lcom/spotify/mobile/android/ui/prettylist/c;->b(Landroid/view/View;)V

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v4}, Lcom/spotify/mobile/android/ui/prettylist/c;->a()Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(Z)V

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v5, v6}, Lcom/spotify/android/paste/widget/h;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->f:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->f:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->f:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->f:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->f:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->f:Landroid/widget/TextView;

    const/high16 v8, 0x4080

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->k()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->f:Landroid/widget/TextView;

    const v8, 0x7f01019a

    invoke-static {v5, v7, v8}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->f:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-interface {v4, v6}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Landroid/view/View;)V

    new-instance v4, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget-object v6, Lcom/spotify/mobile/android/spotlets/openaccess/c;->ae:Lcom/spotify/mobile/android/spotlets/openaccess/a/b;

    invoke-direct {v4, v5, v6}, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/openaccess/a/b;)V

    iput-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->e:Lcom/spotify/mobile/android/spotlets/openaccess/a/a;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->d:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->e:Lcom/spotify/mobile/android/spotlets/openaccess/a/a;

    const v6, 0x7f0f0334

    invoke-virtual {v4, v5, v6, v10}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;II)V

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v4}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->d:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v4}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/spotify/mobile/android/spotlets/openaccess/c$4;

    invoke-direct {v5, p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c$4;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/c;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v2}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v5, Lcom/spotify/mobile/android/spotlets/openaccess/c$5;

    invoke-direct {v5, p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c$5;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/c;)V

    invoke-static {v2, v5}, Lcom/spotify/mobile/android/spotlets/openaccess/util/a;->a(Landroid/content/Context;Landroid/view/View$OnClickListener;)Lcom/spotify/android/paste/widget/EmptyView;

    move-result-object v2

    iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->g:Lcom/spotify/android/paste/widget/EmptyView;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->g:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v2

    iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->h:Lcom/spotify/mobile/android/ui/view/LoadingView;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->h:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/spotify/mobile/android/ui/stuff/c;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->g:Lcom/spotify/android/paste/widget/EmptyView;

    iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

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

    iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->i:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->a()V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->Z:Lcom/spotify/mobile/android/spotlets/openaccess/util/c;

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->a(Lcom/spotify/mobile/android/util/SpotifyLink;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;)V
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->o()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->i:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->containsImage()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->getLargestImage()Lcom/spotify/mobile/android/spotlets/openaccess/model/Image;

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

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lcom/spotify/mobile/android/ui/c/a;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v3}, Lcom/spotify/mobile/android/ui/prettylist/c;->d()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->e()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    :goto_5a
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->f:Landroid/widget/TextView;

    const v1, 0x7f0f0030

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->getArtistString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->getTracks()Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->e:Lcom/spotify/mobile/android/spotlets/openaccess/a/a;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;->getTracks()Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Tracks;->getItems()[Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->a([Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;)V

    goto/16 :goto_7

    :cond_95
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->e()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5a
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->ac:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)V

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

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->ab:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->e()V

    return-void
.end method

.method public final y()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/a;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c;->ab:Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->e()V

    return-void
.end method
