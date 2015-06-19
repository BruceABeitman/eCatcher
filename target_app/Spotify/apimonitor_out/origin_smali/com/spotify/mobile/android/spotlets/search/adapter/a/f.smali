.class public final Lcom/spotify/mobile/android/spotlets/search/adapter/a/f;
.super Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/spotlets/search/adapter/a/b",
        "<",
        "Lcom/spotify/mobile/android/spotlets/search/model/entity/Genre;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/search/a;)V
    .registers 4

    const-class v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Genre;

    sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->j:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {p0, p1, v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/Class;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Class;
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
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

.method protected final synthetic e()Lcom/google/common/base/Optional;
    .registers 2

    invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
