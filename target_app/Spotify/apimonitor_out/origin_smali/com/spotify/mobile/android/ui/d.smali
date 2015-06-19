.class public final Lcom/spotify/mobile/android/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/spotify/mobile/android/ui/fragments/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/ui/e;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/e;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/ui/d;->a:Lcom/spotify/mobile/android/ui/fragments/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/spotify/mobile/android/util/SpotifyLink;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_72

    :goto_10
    return-object v0

    :pswitch_11
    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;-><init>()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    const-string v1, "time_added"

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->b(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->c(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a()Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->u:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->b(Z)Lcom/spotify/mobile/android/ui/fragments/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/fragments/e;->D()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_10

    :pswitch_3b
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/spotify/mobile/android/ui/fragments/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/c;

    move-result-object v0

    goto :goto_10

    :pswitch_45
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/fragments/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/d;

    move-result-object v0

    goto :goto_10

    :pswitch_4e
    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;-><init>()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->c(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a()Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->u:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->b(Z)Lcom/spotify/mobile/android/ui/fragments/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/fragments/e;->D()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_10

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_11
        :pswitch_3b
        :pswitch_45
        :pswitch_4e
        :pswitch_4e
    .end packed-switch
.end method

.method public static a(Lcom/spotify/mobile/android/util/SpotifyLink;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/e;
    .registers 7

    const/4 v2, 0x0

    sget-object v0, Lcom/spotify/mobile/android/ui/d$1;->a:[I

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2b8

    const/4 v0, 0x0

    :cond_11
    :goto_11
    return-object v0

    :pswitch_12
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->i()Z

    move-result v2

    invoke-static {v0, p2, v1, v2}, Lcom/spotify/mobile/android/spotlets/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/spotify/mobile/android/spotlets/a/a;

    move-result-object v0

    invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/a/a;->b(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/d;->a(Lcom/spotify/mobile/android/ui/fragments/e;Landroid/content/Intent;)V

    goto :goto_11

    :pswitch_2c
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->i()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/e;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "artist_uri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/d;->a(Lcom/spotify/mobile/android/ui/fragments/e;Landroid/content/Intent;)V

    goto :goto_11

    :pswitch_4b
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/f;->b(Ljava/lang/String;Landroid/os/Bundle;)Lcom/spotify/mobile/android/ui/fragments/e;

    move-result-object v0

    goto :goto_11

    :pswitch_58
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/f;->c(Ljava/lang/String;Landroid/os/Bundle;)Lcom/spotify/mobile/android/ui/fragments/e;

    move-result-object v0

    goto :goto_11

    :pswitch_65
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/f;->a(Ljava/lang/String;Landroid/os/Bundle;)Lcom/spotify/mobile/android/ui/fragments/e;

    move-result-object v0

    goto :goto_11

    :pswitch_72
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/f;->f(Ljava/lang/String;Landroid/os/Bundle;)Lcom/spotify/mobile/android/ui/fragments/e;

    move-result-object v0

    goto :goto_11

    :pswitch_7f
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/f;->d(Ljava/lang/String;Landroid/os/Bundle;)Lcom/spotify/mobile/android/ui/fragments/e;

    move-result-object v0

    goto :goto_11

    :pswitch_8c
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/f;->e(Ljava/lang/String;Landroid/os/Bundle;)Lcom/spotify/mobile/android/ui/fragments/e;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_9a
    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;-><init>()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    const-string v1, "time_added"

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->b(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->c(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->u:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->b(Z)Lcom/spotify/mobile/android/ui/fragments/e;

    move-result-object v0

    const-string v1, "playlist_uri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/d;->a(Lcom/spotify/mobile/android/ui/fragments/e;Landroid/content/Intent;)V

    goto/16 :goto_11

    :pswitch_c8
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, v2}, Lcom/spotify/mobile/android/ui/fragments/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/c;

    move-result-object v0

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/fragments/c;->b(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/d;->a(Lcom/spotify/mobile/android/ui/fragments/e;Landroid/content/Intent;)V

    goto/16 :goto_11

    :pswitch_db
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/spotify/mobile/android/ui/fragments/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/d;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_e5
    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;-><init>()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->c(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->d(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a(Z)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->u:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->b(Z)Lcom/spotify/mobile/android/ui/fragments/e;

    move-result-object v0

    const-string v1, "playlist_uri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/d;->a(Lcom/spotify/mobile/android/ui/fragments/e;Landroid/content/Intent;)V

    goto/16 :goto_11

    :pswitch_11d
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/spotify/mobile/android/spotlets/user/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/user/f;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_127
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;)Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_133
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;->b:Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;)Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_13f
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/e;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/user/e;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_149
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artists-json"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15f

    new-instance v0, Lcom/spotify/mobile/android/spotlets/user/j;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/user/j;-><init>()V

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/d;->a(Lcom/spotify/mobile/android/ui/fragments/e;Landroid/content/Intent;)V

    goto/16 :goto_11

    :cond_15f
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/j;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/user/j;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_169
    invoke-static {p0}, Lcom/spotify/mobile/android/spotlets/user/c;->a(Lcom/spotify/mobile/android/util/SpotifyLink;)Lcom/spotify/mobile/android/spotlets/user/c;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_16f
    new-instance v0, Lcom/spotify/mobile/android/spotlets/follow/c;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/follow/c;-><init>()V

    goto/16 :goto_11

    :pswitch_176
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;->c:Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;)Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_182
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;->d:Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;->a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment$Type;)Lcom/spotify/mobile/android/spotlets/user/ProfilesListFragment;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_18e
    new-instance v0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;-><init>()V

    goto/16 :goto_11

    :pswitch_195
    invoke-static {p2, p3}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/browse/a;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_19b
    invoke-static {p2, p3}, Lcom/spotify/mobile/android/spotlets/browse/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/browse/b;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_1a1
    invoke-static {p2, p3}, Lcom/spotify/mobile/android/spotlets/browse/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/browse/d;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_1a7
    invoke-static {p2, p3, p1}, Lcom/spotify/mobile/android/spotlets/browse/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/spotify/mobile/android/spotlets/browse/c;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_1ad
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->U:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->e()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c1

    invoke-static {p2}, Lcom/spotify/music/spotlets/radio/b/a;->a(Ljava/lang/String;)Lcom/spotify/music/spotlets/radio/b/a;

    move-result-object v0

    goto/16 :goto_11

    :cond_1c1
    invoke-static {p2}, Lcom/spotify/mobile/android/ui/fragments/s;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/s;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_1c7
    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/b;->c()Lcom/spotify/mobile/android/ui/fragments/b;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_1cd
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->M:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    if-ne v0, v1, :cond_1e3

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->g:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1e3

    invoke-static {p2, p3}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/browse/a;

    move-result-object v0

    goto/16 :goto_11

    :cond_1e3
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1f1

    invoke-static {p2}, Lcom/spotify/mobile/android/spotlets/discover/b/a;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/discover/b/a;

    move-result-object v0

    goto/16 :goto_11

    :cond_1f1
    const-string v0, "Falling through to BrowseStartFragment"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/browse/a;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_1fc
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->L:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_20b

    new-instance v0, Lcom/spotify/mobile/android/spotlets/socialchart/c;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;-><init>()V

    goto/16 :goto_11

    :cond_20b
    sget-object v0, Lcom/spotify/mobile/android/ui/d;->a:Lcom/spotify/mobile/android/ui/fragments/e;

    goto/16 :goto_11

    :pswitch_20f
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->K:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_21d

    invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/share/a;->b(Landroid/content/Intent;)Lcom/spotify/mobile/android/spotlets/share/a;

    move-result-object v0

    goto/16 :goto_11

    :cond_21d
    sget-object v0, Lcom/spotify/mobile/android/ui/d;->a:Lcom/spotify/mobile/android/ui/fragments/e;

    goto/16 :goto_11

    :pswitch_221
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->L:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_22f

    invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/socialchart/a;->b(Landroid/content/Intent;)Lcom/spotify/mobile/android/spotlets/socialchart/a;

    move-result-object v0

    goto/16 :goto_11

    :cond_22f
    sget-object v0, Lcom/spotify/mobile/android/ui/d;->a:Lcom/spotify/mobile/android/ui/fragments/e;

    goto/16 :goto_11

    :pswitch_233
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->M:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_24a

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-nez v0, :cond_24a

    new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/a;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;-><init>()V

    goto/16 :goto_11

    :cond_24a
    sget-object v0, Lcom/spotify/mobile/android/ui/d;->a:Lcom/spotify/mobile/android/ui/fragments/e;

    goto/16 :goto_11

    :pswitch_24e
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->M:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_25c

    invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->b(Landroid/content/Intent;)Lcom/spotify/mobile/android/spotlets/activityfeed/b;

    move-result-object v0

    goto/16 :goto_11

    :cond_25c
    sget-object v0, Lcom/spotify/mobile/android/ui/d;->a:Lcom/spotify/mobile/android/ui/fragments/e;

    goto/16 :goto_11

    :pswitch_260
    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/w;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/w;-><init>()V

    goto/16 :goto_11

    :pswitch_267
    sget-object v0, Lcom/spotify/mobile/android/ui/d;->a:Lcom/spotify/mobile/android/ui/fragments/e;

    goto/16 :goto_11

    :pswitch_26b
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_277

    sget-object v0, Lcom/spotify/mobile/android/ui/d;->a:Lcom/spotify/mobile/android/ui/fragments/e;

    goto/16 :goto_11

    :cond_277
    invoke-static {}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->a()Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_27d
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_289

    sget-object v0, Lcom/spotify/mobile/android/ui/d;->a:Lcom/spotify/mobile/android/ui/fragments/e;

    goto/16 :goto_11

    :cond_289
    invoke-static {}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->a()Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_28f
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_299
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_2a3
    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;-><init>()V

    goto/16 :goto_11

    :pswitch_2aa
    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/f;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/f;-><init>()V

    goto/16 :goto_11

    :pswitch_2b1
    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;-><init>()V

    goto/16 :goto_11

    :pswitch_data_2b8
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_c8
        :pswitch_db
        :pswitch_e5
        :pswitch_e5
        :pswitch_12
        :pswitch_12
        :pswitch_2c
        :pswitch_2c
        :pswitch_4b
        :pswitch_58
        :pswitch_65
        :pswitch_72
        :pswitch_7f
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_e5
        :pswitch_11d
        :pswitch_127
        :pswitch_133
        :pswitch_13f
        :pswitch_149
        :pswitch_169
        :pswitch_16f
        :pswitch_176
        :pswitch_182
        :pswitch_18e
        :pswitch_195
        :pswitch_19b
        :pswitch_1a1
        :pswitch_1a7
        :pswitch_1ad
        :pswitch_1c7
        :pswitch_1cd
        :pswitch_1cd
        :pswitch_1fc
        :pswitch_20f
        :pswitch_221
        :pswitch_233
        :pswitch_24e
        :pswitch_260
        :pswitch_267
        :pswitch_26b
        :pswitch_27d
        :pswitch_27d
        :pswitch_27d
        :pswitch_27d
        :pswitch_28f
        :pswitch_299
        :pswitch_2a3
        :pswitch_2aa
        :pswitch_2b1
    .end packed-switch
.end method

.method private static a(Lcom/spotify/mobile/android/ui/fragments/e;Landroid/content/Intent;)V
    .registers 4

    invoke-interface {p0}, Lcom/spotify/mobile/android/ui/fragments/e;->D()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->c_(Landroid/os/Bundle;)V

    return-void
.end method
