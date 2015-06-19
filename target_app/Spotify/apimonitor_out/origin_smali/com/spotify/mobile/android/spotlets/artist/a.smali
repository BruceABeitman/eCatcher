.class public abstract Lcom/spotify/mobile/android/spotlets/artist/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/artist/model/b;
.implements Lcom/spotify/mobile/android/ui/fragments/e;


# instance fields
.field protected a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

.field private b:Lcom/spotify/mobile/android/spotlets/artist/b/b;

.field private c:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;

.field private d:Lcom/spotify/mobile/android/spotlets/artist/model/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->c:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->a()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/model/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/model/b;)Lcom/spotify/mobile/android/spotlets/artist/model/a;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->d:Lcom/spotify/mobile/android/spotlets/artist/model/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->d:Lcom/spotify/mobile/android/spotlets/artist/model/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->b:Lcom/spotify/mobile/android/spotlets/artist/b/b;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/model/a;->a(Lcom/spotify/mobile/android/spotlets/artist/b/b;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->a()V

    return-void
.end method

.method private c(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/a;->b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->c:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->b()V

    return-void
.end method


# virtual methods
.method public final D()Landroid/support/v4/app/Fragment;
    .registers 1

    return-object p0
.end method

.method protected abstract E()Landroid/view/View;
.end method

.method protected F()V
    .registers 1

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    const v0, 0x7f030098

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->E()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/spotify/android/paste/widget/EmptyView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0271

    invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/spotlets/artist/a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->cm:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-static {v3, v4}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_3b
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f0f0276

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v2, v3}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/view/View;)V

    new-instance v4, Lcom/spotify/mobile/android/spotlets/artist/a$1;

    invoke-direct {v4, p0}, Lcom/spotify/mobile/android/spotlets/artist/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/a;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;

    const v4, 0x7f0a02bd

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v1, v4, v2}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->c:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    if-nez v1, :cond_6e

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->a()V

    :goto_6d
    return-object v0

    :cond_6e
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    invoke-direct {p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/a;->c(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V

    goto :goto_6d
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artist_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/b/i;->b(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/artist/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->b:Lcom/spotify/mobile/android/spotlets/artist/b/b;

    if-eqz p1, :cond_1f

    const-string v0, "artist_model"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    :cond_1f
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artist_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    :cond_31
    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->o()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/a;->c(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V

    goto :goto_8
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    invoke-interface {v0, p0, p1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "Failed to load artist\'s biography"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->o()Z

    move-result v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->c:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->c()V

    goto :goto_e
.end method

.method protected abstract b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
.end method

.method protected final c()Lcom/spotify/mobile/android/spotlets/artist/b/b;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->b:Lcom/spotify/mobile/android/spotlets/artist/b/b;

    return-object v0
.end method

.method public d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    const-string v0, "artist_model"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public f()V
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->F()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->d:Lcom/spotify/mobile/android/spotlets/artist/model/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/a;->d:Lcom/spotify/mobile/android/spotlets/artist/model/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/a;->a()V

    :cond_c
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V

    return-void
.end method
