.class public final Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;
.super Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/spotlets/search/adapter/a/b",
        "<",
        "Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/spotify/mobile/android/ui/contextmenu/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/search/a;)V
    .registers 4

    const-class v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;

    sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->Z:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {p0, p1, v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/Class;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/g$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/g$1;-><init>(Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;->b:Lcom/spotify/mobile/android/ui/contextmenu/f;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Class;
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;)Ljava/lang/String;
    .registers 4

    check-cast p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;

    iget-boolean v0, p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;->following:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;->a:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0328

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    const v0, 0x7f0e0003

    iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;->followersCount:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;->a(ILjava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public final bridge synthetic b(ILandroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;->b(ILandroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Class;
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;->b()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic b(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;)Z
    .registers 3

    check-cast p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;

    iget-boolean v0, p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;->following:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected final synthetic e()Lcom/google/common/base/Optional;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/g;->b:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-static {v0}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
