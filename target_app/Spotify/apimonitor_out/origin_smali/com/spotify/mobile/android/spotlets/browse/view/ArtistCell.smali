.class public Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

.field private c:Lcom/spotify/mobile/android/ui/view/PlayButton;

.field private d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:Lcom/spotify/mobile/android/spotlets/browse/b/f;

.field private final j:Lcom/spotify/mobile/android/spotlets/browse/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/f;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/d;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->Q:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/b/f;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->i:Lcom/spotify/mobile/android/spotlets/browse/b/f;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/a;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/d;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->U:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/b/a;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->j:Lcom/spotify/mobile/android/spotlets/browse/b/a;

    invoke-virtual {p0, p0}, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/f;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/d;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->Q:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/b/f;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->i:Lcom/spotify/mobile/android/spotlets/browse/b/f;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/a;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/d;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->U:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/b/a;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->j:Lcom/spotify/mobile/android/spotlets/browse/b/a;

    invoke-virtual {p0, p0}, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003d

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;

    const v1, 0x7f0a0253

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/spotlets/browse/model/Artist;ILcom/spotify/mobile/android/a/b;)V
    .registers 13

    const/4 v8, -0x1

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/browse/model/Artist;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/browse/model/Artist;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->f:Ljava/lang/String;

    iput p2, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->g:I

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->b:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/browse/model/Artist;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/i;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->c:Lcom/spotify/mobile/android/ui/view/PlayButton;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/browse/model/Artist;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/PlayButton;->a(Z)V

    new-instance v0, Lcom/spotify/mobile/android/a/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/spotify/mobile/android/util/SpotifyLink;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/a/a;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/a/b;)V

    iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->h:Z

    if-eqz v1, :cond_6c

    const-string v5, "overview"

    :goto_47
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->j:Lcom/spotify/mobile/android/spotlets/browse/b/a;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->f:Ljava/lang/String;

    const-string v6, "play"

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Lcom/spotify/mobile/android/spotlets/browse/b/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v7

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->j:Lcom/spotify/mobile/android/spotlets/browse/b/a;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->f:Ljava/lang/String;

    const-string v6, "pause"

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Lcom/spotify/mobile/android/spotlets/browse/b/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-virtual {v0, v2, v7, v1}, Lcom/spotify/mobile/android/a/a;->a(Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->c:Lcom/spotify/mobile/android/ui/view/PlayButton;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/view/PlayButton;->a(Lcom/spotify/mobile/android/ui/view/o;)V

    return-void

    :cond_6c
    const-string v5, "root"

    goto :goto_47
.end method

.method public hasFocusable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->h:Z

    if-eqz v0, :cond_16

    const-string v3, "overview"

    :goto_6
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->i:Lcom/spotify/mobile/android/spotlets/browse/b/f;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->g:I

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/b/f;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    const-string v3, "root"

    goto :goto_6
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->a:Landroid/widget/TextView;

    const v0, 0x7f0a01f8

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->b:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    const v0, 0x7f0a0253

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/PlayButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->c:Lcom/spotify/mobile/android/ui/view/PlayButton;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->b:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a(I)V

    const v0, 0x7f0a024c

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->d:Landroid/view/View;

    return-void
.end method

.method public setPressed(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/ArtistCell;->d:Landroid/view/View;

    if-eqz p1, :cond_c

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_c
    const/16 v0, 0x8

    goto :goto_8
.end method
