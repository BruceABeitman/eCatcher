.class public final Lcom/spotify/mobile/android/spotlets/search/adapter/a/j;
.super Lcom/spotify/mobile/android/spotlets/search/adapter/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/spotlets/search/adapter/a/c",
        "<",
        "Lcom/spotify/mobile/android/spotlets/search/model/entity/Profile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/search/a;)V
    .registers 4

    const-class v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Profile;

    sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aL:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {p0, p1, v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/c;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/Class;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Class;
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/c;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;)Ljava/lang/String;
    .registers 4

    check-cast p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Profile;

    iget-boolean v0, p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Profile;->following:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/j;->a:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f032b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    iget-boolean v0, p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Profile;->facebook:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/j;->a:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f032a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_26
    const v0, 0x7f0e0016

    iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Profile;->followersCount:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/j;->a(ILjava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public final bridge synthetic b(ILandroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/c;->b(ILandroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Class;
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/c;->b()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic b(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;)Z
    .registers 3

    check-cast p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Profile;

    iget-boolean v0, p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Profile;->following:Z

    if-nez v0, :cond_c

    iget-boolean v0, p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Profile;->facebook:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected final synthetic e()Lcom/google/common/base/Optional;
    .registers 2

    invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
