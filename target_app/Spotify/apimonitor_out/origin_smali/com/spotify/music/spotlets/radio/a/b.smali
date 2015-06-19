.class public Lcom/spotify/music/spotlets/radio/a/b;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/spotify/music/spotlets/radio/model/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/graphics/drawable/Drawable;

.field private d:Lcom/spotify/mobile/android/util/df;

.field private e:Landroid/view/LayoutInflater;

.field private final f:Z

.field private g:Lcom/spotify/mobile/android/ui/actions/d;

.field private final h:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private final i:Lcom/spotify/mobile/android/util/ViewUri$SubView;

.field private final j:Z

.field private final k:Lcom/spotify/mobile/android/ui/contextmenu/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<",
            "Lcom/spotify/music/spotlets/radio/model/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/view/View$OnClickListener;

.field private final m:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;ZZ)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/spotify/music/spotlets/radio/a/b;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;ZZB)V

    return-void
.end method

.method private constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;ZZB)V
    .registers 11

    const v0, 0x7f0300c3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b;->a:Ljava/lang/String;

    new-instance v0, Lcom/spotify/music/spotlets/radio/a/b$1;

    invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/radio/a/b$1;-><init>(Lcom/spotify/music/spotlets/radio/a/b;)V

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b;->b:Landroid/support/v4/app/z;

    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b;->d:Lcom/spotify/mobile/android/util/df;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b;->g:Lcom/spotify/mobile/android/ui/actions/d;

    new-instance v0, Lcom/spotify/music/spotlets/radio/a/b$2;

    invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/radio/a/b$2;-><init>(Lcom/spotify/music/spotlets/radio/a/b;)V

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b;->k:Lcom/spotify/mobile/android/ui/contextmenu/f;

    new-instance v0, Lcom/spotify/music/spotlets/radio/a/b$3;

    invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/radio/a/b$3;-><init>(Lcom/spotify/music/spotlets/radio/a/b;)V

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b;->l:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/music/spotlets/radio/a/b$4;

    invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/radio/a/b$4;-><init>(Lcom/spotify/music/spotlets/radio/a/b;)V

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b;->m:Landroid/view/View$OnLongClickListener;

    iput-object p2, p0, Lcom/spotify/music/spotlets/radio/a/b;->h:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object p3, p0, Lcom/spotify/music/spotlets/radio/a/b;->i:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    iput-boolean p5, p0, Lcom/spotify/music/spotlets/radio/a/b;->j:Z

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->U:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/music/spotlets/radio/a/b;->f:Z

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ah:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b;->e:Landroid/view/LayoutInflater;

    if-eqz p4, :cond_6a

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->e()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a01a5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/music/spotlets/radio/a/b;->b:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    :cond_6a
    return-void
.end method

.method static synthetic a(Lcom/spotify/music/spotlets/radio/a/b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/music/spotlets/radio/a/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/spotlets/radio/a/b;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/spotify/music/spotlets/radio/a/b;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b;->h:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/music/spotlets/radio/a/b;)Lcom/spotify/mobile/android/util/ViewUri$SubView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b;->i:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/music/spotlets/radio/model/a;

    iget-boolean v1, p0, Lcom/spotify/music/spotlets/radio/a/b;->f:Z

    if-eqz v1, :cond_29

    invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/model/a;->isUserStation()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/a/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/model/a;->getSeedUris()[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/spotify/music/spotlets/radio/a/b;->h:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v4, p0, Lcom/spotify/music/spotlets/radio/a/b;->i:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v2, v0, v3, v4}, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_28
    return-void

    :cond_29
    invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/model/a;->getSeedUris()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_48

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/a/b;->g:Lcom/spotify/mobile/android/ui/actions/d;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/a/b;->h:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v3, p0, Lcom/spotify/music/spotlets/radio/a/b;->i:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/model/a;->getSeedUris()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/r;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;)V

    goto :goto_28

    :cond_48
    const-string v1, "Radio Station \'%s\' has no seed!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/model/a;->getStationId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_28
.end method

.method protected a(Landroid/widget/ImageView;Lcom/spotify/music/spotlets/radio/model/a;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2}, Lcom/spotify/music/spotlets/radio/model/a;->getSeedUris()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ne v2, v0, :cond_3e

    new-instance v2, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-interface {p2}, Lcom/spotify/music/spotlets/radio/model/a;->getSeedUris()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->h:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    if-ne v2, v3, :cond_3e

    :goto_1c
    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/a/b;->d:Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-interface {p2}, Lcom/spotify/music/spotlets/radio/model/a;->getCoverImageUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;

    move-result-object v1

    if-eqz v0, :cond_40

    invoke-static {p1}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V

    :goto_3d
    return-void

    :cond_3e
    move v0, v1

    goto :goto_1c

    :cond_40
    invoke-virtual {v1, p1}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    goto :goto_3d
.end method

.method public final a([Lcom/spotify/music/spotlets/radio/model/a;)V
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/a/b;->clear()V

    invoke-virtual {p0, p1}, Lcom/spotify/music/spotlets/radio/a/b;->addAll([Ljava/lang/Object;)V

    return-void
.end method

.method protected final a([Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/a/b;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    array-length v2, p1

    move v1, v0

    :goto_e
    if-ge v1, v2, :cond_b

    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/spotify/music/spotlets/radio/a/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_b

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method protected final b(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final c(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/music/spotlets/radio/model/a;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/a/b;->k:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const v2, 0x7f0a0248

    const/4 v4, 0x0

    if-nez p2, :cond_85

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0300c3

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/spotify/music/spotlets/radio/a/b;->b(Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/widget/CardView;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/stuff/b;->a(Landroid/content/Context;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/CardView;->a(Landroid/view/View;)V

    const/high16 v1, 0x4100

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/a/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/CardView;->a(I)V

    iget-boolean v1, p0, Lcom/spotify/music/spotlets/radio/a/b;->j:Z

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/a/b;->m:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object v1, v0

    :goto_3e
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/CardView;->a(Z)V

    invoke-virtual {p0, p1}, Lcom/spotify/music/spotlets/radio/a/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/music/spotlets/radio/model/a;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/model/a;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/CardView;->a(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/model/a;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8d

    new-instance v2, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/model/a;->getSeedUris()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/spotify/music/spotlets/radio/c/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/CardView;->b(Ljava/lang/CharSequence;)V

    :goto_72
    invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/model/a;->getSeedUris()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/spotify/music/spotlets/radio/a/b;->a([Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/CardView;->b(Z)V

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/CardView;->c()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/spotify/music/spotlets/radio/a/b;->a(Landroid/widget/ImageView;Lcom/spotify/music/spotlets/radio/model/a;)V

    return-object p2

    :cond_85
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/widget/CardView;

    move-object v1, v0

    goto :goto_3e

    :cond_8d
    invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/model/a;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/CardView;->b(Ljava/lang/CharSequence;)V

    goto :goto_72

    :cond_95
    move-object v1, v0

    goto :goto_3e
.end method
