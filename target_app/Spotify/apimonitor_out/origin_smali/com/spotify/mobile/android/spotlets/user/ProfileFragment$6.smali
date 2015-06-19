.class Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/user/f;->F()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver",
        "<",
        "Lcom/spotify/mobile/android/spotlets/user/ProfileModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/user/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/user/f;Landroid/os/Handler;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 5

    const-string v0, "Profile failed to load"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->l(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->c:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 11

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    check-cast p2, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    const-class v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getFollowData()Lcom/spotify/mobile/android/spotlets/follow/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a(Lcom/spotify/mobile/android/spotlets/follow/a;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0, p2}, Lcom/spotify/mobile/android/spotlets/user/f;->a(Lcom/spotify/mobile/android/spotlets/user/f;Lcom/spotify/mobile/android/spotlets/user/ProfileModel;)Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->c(Lcom/spotify/mobile/android/spotlets/user/f;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/user/f;->d(Lcom/spotify/mobile/android/spotlets/user/f;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getPlaylistCount()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/user/f;->a(Landroid/view/View;Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->e(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v0

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Ljava/lang/String;)V

    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getImageHttpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/i;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v1

    new-instance v2, Lcom/spotify/mobile/android/ui/c/a;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/ui/c/a;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/user/f;->e(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/spotify/mobile/android/ui/prettylist/c;->d()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getImageHttpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/i;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/stuff/k;->d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/user/f;->e(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->e()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->e(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->e()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->f(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/o;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->g(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->d()Z

    move-result v0

    if-nez v0, :cond_c8

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->g(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V

    :cond_c8
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->h(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getPlaylists()[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;

    move-result-object v0

    if-eqz v0, :cond_fd

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->i(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/user/d;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/user/f;->h(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getPlaylists()[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/d;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->f(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->f(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v0

    new-array v1, v5, [I

    aput v6, v1, v4

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V

    :cond_fd
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->h(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getTopArtists()[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;

    move-result-object v0

    if-eqz v0, :cond_13d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->h(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getTopArtists()[Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;

    move-result-object v0

    array-length v1, v0

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v4, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/spotlets/user/TopArtistModel;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/user/f;->j(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/user/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/user/i;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->f(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->f(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v0

    new-array v1, v5, [I

    aput v6, v1, v4

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V

    :cond_13d
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->h(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getInvitationCodes()[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;

    move-result-object v0

    if-eqz v0, :cond_19a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->h(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getInvitationCodes()[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_19a

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->S:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_19a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->k(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/user/b;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/user/f;->h(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->hasMoreInvitationCodes()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/b;->a(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->k(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/user/b;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/user/f;->h(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getInvitationCodes()[Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/b;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->f(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->f(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v0

    new-array v1, v5, [I

    aput v6, v1, v4

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V

    :cond_19a
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfileFragment$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->l(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->d:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V

    return-void
.end method
