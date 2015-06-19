.class public final Lcom/spotify/mobile/android/spotlets/search/adapter/a/d;
.super Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/spotlets/search/adapter/a/b",
        "<",
        "Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/spotify/mobile/android/ui/contextmenu/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/search/a;)V
    .registers 4

    const-class v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;

    sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->b:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {p0, p1, v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/Class;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/d$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/d$1;-><init>(Lcom/spotify/mobile/android/spotlets/search/adapter/a/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/d;->b:Lcom/spotify/mobile/android/ui/contextmenu/f;

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
    .registers 5

    check-cast p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;

    iget-boolean v0, p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;->saved:Z

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/d;->a:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0323

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2022 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;->artists()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;->artists()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e
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

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/d;->b:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-static {v0}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;

    return-object v0
.end method
