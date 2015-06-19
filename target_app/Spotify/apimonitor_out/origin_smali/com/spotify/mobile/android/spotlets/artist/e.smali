.class public Lcom/spotify/mobile/android/spotlets/artist/e;
.super Lcom/spotify/mobile/android/spotlets/artist/a;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/model/l;
.implements Lcom/spotify/mobile/android/spotlets/artist/model/b;
.implements Lcom/spotify/mobile/android/ui/activity/o;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/ad;


# instance fields
.field private Y:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

.field private Z:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;

.field private aa:Lcom/spotify/mobile/android/spotlets/artist/model/h;

.field private ab:Lcom/spotify/mobile/android/spotlets/artist/view/c/b;

.field private ac:Lcom/spotify/mobile/android/util/aa;

.field b:Lcom/spotify/mobile/android/util/z;

.field private c:Lcom/spotify/mobile/android/spotlets/artist/view/c/e;

.field private d:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

.field private e:Lcom/spotify/mobile/android/spotlets/artist/b/a;

.field private f:Lcom/spotify/mobile/android/spotlets/artist/a/b;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lcom/spotify/mobile/android/util/tracking/n;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/spotify/mobile/android/spotlets/artist/e;

    const-class v1, Lcom/spotify/mobile/android/spotlets/artist/view/c/e;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/artist/view/c/e;

    invoke-direct {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/c/e;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/spotlets/artist/e;

    const-class v1, Lcom/spotify/mobile/android/spotlets/artist/view/c/e;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/view/c/e;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->c:Lcom/spotify/mobile/android/spotlets/artist/view/c/e;

    const/4 v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->g:I

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/e$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/e$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/e;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->aa:Lcom/spotify/mobile/android/spotlets/artist/model/h;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/e$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/e$2;-><init>(Lcom/spotify/mobile/android/spotlets/artist/e;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->ab:Lcom/spotify/mobile/android/spotlets/artist/view/c/b;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/e$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/e$3;-><init>(Lcom/spotify/mobile/android/spotlets/artist/e;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->ac:Lcom/spotify/mobile/android/util/aa;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/e;)Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->d:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/artist/e;)Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->Z:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;

    return-object v0
.end method


# virtual methods
.method protected final E()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->d:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->c()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final G()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->d:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->g()Z

    move-result v0

    return v0
.end method

.method public final H()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->Y:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->a()V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->d:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a(Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a0166

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->b:Lcom/spotify/mobile/android/util/z;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->Z:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->u()Landroid/support/v4/app/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->a(Landroid/support/v4/app/y;)V

    invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/spotlets/artist/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->h:Ljava/lang/String;

    if-nez v0, :cond_c

    const v0, 0x7f0f005e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->h:Ljava/lang/String;

    goto :goto_b
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/a;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artist_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/b/i;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/artist/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->e:Lcom/spotify/mobile/android/spotlets/artist/b/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->c:Lcom/spotify/mobile/android/spotlets/artist/view/c/e;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->e:Lcom/spotify/mobile/android/spotlets/artist/b/a;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/e;->a(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/b/a;)Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->d:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->d:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->ab:Lcom/spotify/mobile/android/spotlets/artist/view/c/b;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a(Lcom/spotify/mobile/android/spotlets/artist/view/c/b;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/a/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->d:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/a/b;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/a/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->f:Lcom/spotify/mobile/android/spotlets/artist/a/b;

    if-eqz p1, :cond_44

    const-string v0, "gallery_item"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->g:I

    :cond_44
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->c()Lcom/spotify/mobile/android/spotlets/artist/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/b/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->i:Lcom/spotify/mobile/android/util/tracking/n;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->i:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->e:Lcom/spotify/mobile/android/spotlets/artist/b/a;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->Y:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/e;->a(Z)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->e:Lcom/spotify/mobile/android/spotlets/artist/b/a;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->aa:Lcom/spotify/mobile/android/spotlets/artist/model/h;

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/model/h;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->Z:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;

    new-instance v0, Lcom/spotify/mobile/android/util/z;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->ac:Lcom/spotify/mobile/android/util/aa;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->b:Lcom/spotify/mobile/android/util/z;

    return-void
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 8

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->J:Lcom/spotify/mobile/android/util/ea;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->e:Lcom/spotify/mobile/android/spotlets/artist/b/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->e:Lcom/spotify/mobile/android/spotlets/artist/b/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v2, v1}, Lcom/spotify/mobile/android/ui/menus/a;->b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->e:Lcom/spotify/mobile/android/spotlets/artist/b/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->f()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->e:Lcom/spotify/mobile/android/spotlets/artist/b/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/b;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, p1, v2, v1}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->d:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public final b(Landroid/view/Menu;)V
    .registers 5

    const/4 v2, 0x0

    const v0, 0x7f0a0119

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->topTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_27

    :cond_23
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_a

    :cond_27
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_a

    :cond_2c
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_a
.end method

.method protected final b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->d:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    invoke-virtual {v1, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->f:Lcom/spotify/mobile/android/spotlets/artist/a/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/a/b;->c()V

    iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->x_()V

    :cond_1e
    iget v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->g:I

    if-ltz v1, :cond_29

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->d:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->g:I

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a(I)V

    :cond_29
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->d:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->i:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/tracking/n;->d()Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->i:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/tracking/n;->b()V

    :cond_3f
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->x_()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "autoplay"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "autoplay"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->d:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->f()V

    :cond_6d
    :goto_6d
    return-void

    :cond_6e
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "track_uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->topTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_97

    const-string v0, "Top tracks is empty"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "artist uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->e:Lcom/spotify/mobile/android/spotlets/artist/b/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    :cond_97
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b1

    :goto_9d
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->d:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->b:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a(II)I

    move-result v0

    if-ltz v0, :cond_6d

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->d:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b(I)V

    goto :goto_6d

    :cond_b1
    invoke-virtual {p1, v2}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->findTopTrackIndex(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_c7

    const-string v1, "Couldn\'t find track (%s) in artist\'s (%s) top tracks"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const/4 v2, 0x1

    iget-object v4, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->uri:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9d

    :cond_c7
    move v0, v1

    goto :goto_9d
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/a;->d(Landroid/os/Bundle;)V

    const-string v0, "gallery_item"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->d:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->i:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final f()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->Z:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->a()V

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->f()V

    return-void
.end method

.method public final g_()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->e:Lcom/spotify/mobile/android/spotlets/artist/b/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6

    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->Y:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->a(Landroid/view/ContextMenu;Landroid/view/View;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->Y:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->a(Landroid/view/ContextMenu;Landroid/view/View;)V

    goto :goto_d
.end method

.method public final r_()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->r_()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->i:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V

    return-void
.end method

.method public final s_()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->s_()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->i:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V

    return-void
.end method

.method public final x()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->x()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->f:Lcom/spotify/mobile/android/spotlets/artist/a/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/a/b;->a()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    invoke-interface {v0, p0}, Lcom/spotify/mobile/android/ui/activity/n;->a(Lcom/spotify/mobile/android/ui/activity/o;)V

    const-class v0, Lcom/spotify/mobile/android/util/ac;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ac;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/ac;->a(Lcom/spotify/mobile/android/util/ad;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final y()V
    .registers 3

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/e;->f:Lcom/spotify/mobile/android/spotlets/artist/a/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/a/b;->b()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Lcom/spotify/mobile/android/ui/activity/o;)V

    const-class v0, Lcom/spotify/mobile/android/util/ac;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ac;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ac;->a()V

    return-void
.end method
