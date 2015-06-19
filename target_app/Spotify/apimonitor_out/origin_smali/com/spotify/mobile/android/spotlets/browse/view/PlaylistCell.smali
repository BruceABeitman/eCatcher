.class public Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/spotify/mobile/android/ui/view/PlayButton;

.field private e:Landroid/view/View;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Z

.field private final k:Lcom/spotify/mobile/android/spotlets/browse/b/e;

.field private final l:Lcom/spotify/mobile/android/spotlets/browse/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/e;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/d;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->R:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/b/e;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->k:Lcom/spotify/mobile/android/spotlets/browse/b/e;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/a;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/d;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->U:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/b/a;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->l:Lcom/spotify/mobile/android/spotlets/browse/b/a;

    invoke-virtual {p0, p0}, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/e;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/d;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->R:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/b/e;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->k:Lcom/spotify/mobile/android/spotlets/browse/b/e;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/a;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/d;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->U:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/b/a;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->l:Lcom/spotify/mobile/android/spotlets/browse/b/a;

    invoke-virtual {p0, p0}, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public hasFocusable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->j:Z

    if-eqz v0, :cond_16

    const-string v3, "overview"

    :goto_6
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->k:Lcom/spotify/mobile/android/spotlets/browse/b/e;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->i:I

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->g:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/b/e;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->h:Ljava/lang/String;

    goto :goto_6
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->a:Landroid/widget/TextView;

    const v0, 0x7f0a024d

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0253

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/PlayButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->d:Lcom/spotify/mobile/android/ui/view/PlayButton;

    const v0, 0x7f0a01f8

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a024c

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->e:Landroid/view/View;

    return-void
.end method

.method public setPressed(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/PlaylistCell;->e:Landroid/view/View;

    if-eqz p1, :cond_c

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_c
    const/16 v0, 0x8

    goto :goto_8
.end method
