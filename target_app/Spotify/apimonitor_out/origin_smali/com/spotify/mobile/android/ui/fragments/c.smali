.class public final Lcom/spotify/mobile/android/ui/fragments/c;
.super Landroid/support/v4/app/x;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/ui/m;
.implements Lcom/spotify/mobile/android/ui/n;


# static fields
.field private static final Y:[Ljava/lang/String;

.field private static final Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/util/cw;",
            ">;"
        }
    .end annotation
.end field

.field private static final aa:Lcom/spotify/mobile/android/util/cw;


# instance fields
.field private ab:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:Z

.field private af:Landroid/widget/ListView;

.field private ag:Landroid/os/Parcelable;

.field private ah:Lcom/spotify/android/paste/widget/ListItemView;

.field private ai:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

.field private aj:Lcom/spotify/mobile/android/ui/view/LoadingView;

.field private ak:Lcom/spotify/mobile/android/ui/adapter/m;

.field private al:Lcom/spotify/android/paste/widget/EmptyView;

.field private am:Ljava/lang/String;

.field private an:Lcom/spotify/mobile/android/util/cw;

.field private ao:I

.field private ap:Lcom/spotify/mobile/android/util/dw;

.field private aq:Lcom/spotify/mobile/android/ui/contextmenu/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<",
            "Lcom/spotify/mobile/android/model/f;",
            ">;"
        }
    .end annotation
.end field

.field private ar:Lcom/spotify/mobile/android/ui/view/j;

.field private as:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private at:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/spotify/mobile/android/ui/l;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "folder_all_tracks_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/c;->Y:[Ljava/lang/String;

    new-instance v0, Lcom/spotify/mobile/android/util/cw;

    const-string v1, ""

    const v2, 0x7f0f03a6

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/c;->aa:Lcom/spotify/mobile/android/util/cw;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/c;->Z:Ljava/util/List;

    new-instance v1, Lcom/spotify/mobile/android/util/cw;

    const-string v2, "name"

    const v3, 0x7f0f03a9

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/c;->Z:Ljava/util/List;

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/c;->aa:Lcom/spotify/mobile/android/util/cw;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/c;->aa:Lcom/spotify/mobile/android/util/cw;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->an:Lcom/spotify/mobile/android/util/cw;

    const/4 v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ao:I

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/c$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/c$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->aq:Lcom/spotify/mobile/android/ui/contextmenu/f;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/c$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/c$3;-><init>(Lcom/spotify/mobile/android/ui/fragments/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ar:Lcom/spotify/mobile/android/ui/view/j;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/c$4;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/c$4;-><init>(Lcom/spotify/mobile/android/ui/fragments/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->as:Landroid/support/v4/app/z;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/c$5;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/c$5;-><init>(Lcom/spotify/mobile/android/ui/fragments/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->at:Landroid/support/v4/app/z;

    return-void
.end method

.method static synthetic E()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/c;->Y:[Ljava/lang/String;

    return-object v0
.end method

.method private F()V
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ae:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->i:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/l;->b()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->i:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/l;->a()Ljava/lang/String;

    move-result-object v0

    :cond_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_22
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    invoke-interface {v0, p0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->c()V

    return-void

    :cond_35
    move-object v1, v0

    goto :goto_22
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 8

    invoke-static {p0, p1, p2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "folder_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "selected_index"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "sub_fragment_uri"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sub_fragment_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/c;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "folder_uri"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_sub_fragment"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-direct {v1}, Lcom/spotify/mobile/android/ui/fragments/c;-><init>()V

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/c;->c_(Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/c;Lcom/spotify/mobile/android/util/cw;)Lcom/spotify/mobile/android/util/cw;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->an:Lcom/spotify/mobile/android/util/cw;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/c;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->am:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ad:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/c;)V
    .registers 5

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a017a

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/c;->at:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    return-void
.end method

.method public static b(Landroid/content/Intent;)Z
    .registers 2

    const-string v0, "folder_uri"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/c;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ad:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->F()V

    return-void
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/c;)Lcom/spotify/mobile/android/ui/adapter/m;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ak:Lcom/spotify/mobile/android/ui/adapter/m;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/ui/fragments/c;)Lcom/spotify/mobile/android/ui/view/LoadingView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->aj:Lcom/spotify/mobile/android/ui/view/LoadingView;

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/ui/fragments/c;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ai:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    return-object v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/ui/fragments/c;)Lcom/spotify/android/paste/widget/EmptyView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->al:Lcom/spotify/android/paste/widget/EmptyView;

    return-object v0
.end method

.method static synthetic i(Lcom/spotify/mobile/android/ui/fragments/c;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->af:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic j(Lcom/spotify/mobile/android/ui/fragments/c;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ao:I

    return v0
.end method

.method static synthetic k(Lcom/spotify/mobile/android/ui/fragments/c;)I
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ao:I

    return v0
.end method

.method static synthetic l(Lcom/spotify/mobile/android/ui/fragments/c;)Landroid/os/Parcelable;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ag:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic m(Lcom/spotify/mobile/android/ui/fragments/c;)Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ag:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic n(Lcom/spotify/mobile/android/ui/fragments/c;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->am:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/spotify/mobile/android/ui/fragments/c;)Lcom/spotify/mobile/android/util/cw;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->an:Lcom/spotify/mobile/android/util/cw;

    return-object v0
.end method


# virtual methods
.method public final D()Landroid/support/v4/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 5

    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/spotify/mobile/android/ui/d;

    invoke-direct {v1}, Lcom/spotify/mobile/android/ui/d;-><init>()V

    invoke-static {v0, p2}, Lcom/spotify/mobile/android/ui/d;->a(Lcom/spotify/mobile/android/util/SpotifyLink;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v0, 0x7f03008b

    invoke-virtual {p1, v0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    const v0, 0x102000a

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->af:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->af:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->af:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->af:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/m;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c;->aq:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/adapter/m;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ak:Lcom/spotify/mobile/android/ui/adapter/m;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->af:Landroid/widget/ListView;

    invoke-static {v0, v1}, Lcom/spotify/android/paste/widget/h;->i(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ah:Lcom/spotify/android/paste/widget/ListItemView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ah:Lcom/spotify/android/paste/widget/ListItemView;

    const v1, 0x7f0f0230

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/fragments/c;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ah:Lcom/spotify/android/paste/widget/ListItemView;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Lcom/spotify/android/paste/graphics/f;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aH:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {v1, v2, v3}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f010187

    invoke-static {v2, v3}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/graphics/f;->a(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->am:Ljava/lang/String;

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/c;->Z:Ljava/util/List;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/c;->an:Lcom/spotify/mobile/android/util/cw;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ar:Lcom/spotify/mobile/android/ui/view/j;

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/c;->af:Landroid/widget/ListView;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/util/cw;Lcom/spotify/mobile/android/ui/view/j;Landroid/widget/ListView;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ai:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ai:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->k()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->af:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ah:Lcom/spotify/android/paste/widget/ListItemView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ak:Lcom/spotify/mobile/android/ui/adapter/m;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/c;->a(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->aj:Lcom/spotify/mobile/android/ui/view/LoadingView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->aj:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->al:Lcom/spotify/android/paste/widget/EmptyView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->al:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/EmptyView;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->al:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/EmptyView;->b()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->al:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0f02cc

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_120

    new-instance v0, Lcom/spotify/android/paste/graphics/f;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ab:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f010189

    invoke-static {v1, v2}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->al:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_120
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a0124

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->k()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f02cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->al:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/view/View;)V

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/c$2;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/c$2;-><init>(Lcom/spotify/mobile/android/ui/fragments/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->al:Lcom/spotify/android/paste/widget/EmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->al:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->af:Landroid/widget/ListView;

    new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-object v6
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    const v0, 0x7f0f0219

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "folder_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ab:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ad:Ljava/lang/String;

    const-string v1, "is_sub_fragment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ae:Z

    const-string v1, "selected_index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ao:I

    if-eqz p1, :cond_48

    const-string v0, "sort_order"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/c;->Z:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/cw;->a(Ljava/lang/String;Ljava/util/List;)Lcom/spotify/mobile/android/util/cw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->an:Lcom/spotify/mobile/android/util/cw;

    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->am:Ljava/lang/String;

    const-string v0, "list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ag:Landroid/os/Parcelable;

    :cond_48
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->am:Ljava/lang/String;

    if-nez v0, :cond_50

    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->am:Ljava/lang/String;

    :cond_50
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->an:Lcom/spotify/mobile/android/util/cw;

    if-nez v0, :cond_58

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/c;->aa:Lcom/spotify/mobile/android/util/cw;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->an:Lcom/spotify/mobile/android/util/cw;

    :cond_58
    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ae:Z

    if-nez v0, :cond_73

    const/4 v0, 0x1

    :goto_5d
    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/c;->a(Z)V

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->F:Lcom/spotify/mobile/android/util/ea;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ap:Lcom/spotify/mobile/android/util/dw;

    return-void

    :cond_73
    const/4 v0, 0x0

    goto :goto_5d
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 2

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/c;->c(Landroid/view/Menu;)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ae:Z

    if-nez v0, :cond_17

    new-instance v0, Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->w()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/spotify/mobile/android/ui/l;-><init>(Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/n;Landroid/view/View;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->i:Lcom/spotify/mobile/android/ui/l;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->i:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/l;->a(Landroid/os/Bundle;)V

    :cond_17
    return-void
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ah:Lcom/spotify/android/paste/widget/ListItemView;

    invoke-static {p2, v0}, Lcom/spotify/mobile/android/util/dv;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ac:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ae:Z

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ab:Ljava/lang/String;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ad:Ljava/lang/String;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ac:Ljava/lang/String;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ad:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/fragments/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/c;->a(Landroid/content/Intent;)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->i:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/l;->b()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->i:Lcom/spotify/mobile/android/ui/l;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ac:Ljava/lang/String;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_37
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ac:Ljava/lang/String;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ad:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/c;->a(Landroid/content/Intent;)V

    goto :goto_24

    :cond_47
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ai:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {p2, v0}, Lcom/spotify/mobile/android/util/dv;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/spotify/mobile/android/model/j;

    if-eqz v1, :cond_24

    move-object v4, v0

    check-cast v4, Lcom/spotify/mobile/android/model/j;

    invoke-interface {v4}, Lcom/spotify/mobile/android/model/j;->u()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-interface {v4}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_be

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ae:Z

    if-eqz v0, :cond_8b

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ab:Ljava/lang/String;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ad:Ljava/lang/String;

    invoke-interface {v4}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/spotify/mobile/android/model/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/fragments/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/c;->a(Landroid/content/Intent;)V

    goto :goto_24

    :cond_8b
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->i:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/l;->b()Z

    move-result v0

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->i:Lcom/spotify/mobile/android/ui/l;

    invoke-interface {v4}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/spotify/mobile/android/model/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_a5
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-interface {v4}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/spotify/mobile/android/model/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/c;->a(Landroid/content/Intent;)V

    goto/16 :goto_24

    :cond_be
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->h(Landroid/content/Context;)V

    goto/16 :goto_24
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2b

    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->H:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ah:Lcom/spotify/android/paste/widget/ListItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setActivated(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ak:Lcom/spotify/mobile/android/ui/adapter/m;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/adapter/m;->a(Ljava/lang/String;)V

    :goto_1c
    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->F()V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ah:Lcom/spotify/android/paste/widget/ListItemView;

    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->setActivated(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ak:Lcom/spotify/mobile/android/ui/adapter/m;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/adapter/m;->a(Ljava/lang/String;)V

    goto :goto_1c

    :cond_2b
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ah:Lcom/spotify/android/paste/widget/ListItemView;

    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->setActivated(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ak:Lcom/spotify/mobile/android/ui/adapter/m;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/adapter/m;->a(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public final c(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->c(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->aj:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a0179

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c;->as:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a017a

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c;->at:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    return-void
.end method

.method public final c(Landroid/view/Menu;)V
    .registers 5

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ae:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->F:Lcom/spotify/mobile/android/util/ea;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ab:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V

    const-string v0, "sort_order"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->an:Lcom/spotify/mobile/android/util/cw;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "filter"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->am:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->af:Landroid/widget/ListView;

    if-eqz v0, :cond_24

    const-string v0, "list"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c;->af:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_24
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->i:Lcom/spotify/mobile/android/ui/l;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->i:Lcom/spotify/mobile/android/ui/l;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/l;->b(Landroid/os/Bundle;)V

    :cond_2d
    return-void
.end method

.method public final f()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ai:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V

    invoke-super {p0}, Landroid/support/v4/app/x;->f()V

    return-void
.end method

.method public final x()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->x()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ap:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    return-void
.end method

.method public final y()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c;->ap:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    return-void
.end method
