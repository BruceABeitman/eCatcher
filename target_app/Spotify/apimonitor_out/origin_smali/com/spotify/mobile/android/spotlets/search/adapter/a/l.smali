.class public final Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;
.super Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/spotlets/search/adapter/a/a",
        "<",
        "Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/StringBuilder;

.field private final c:Lcom/spotify/mobile/android/ui/contextmenu/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/search/a;)V
    .registers 3

    const-class v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/Class;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;->b:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l$1;-><init>(Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;->c:Lcom/spotify/mobile/android/ui/contextmenu/f;

    return-void
.end method


# virtual methods
.method public final synthetic a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;->b(ILandroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Ljava/lang/Class;
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;)Ljava/lang/String;
    .registers 5

    check-cast p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;->b:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-boolean v0, p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;->saved:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;->b:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;->a:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f032c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;->b:Ljava/lang/StringBuilder;

    const-string v1, " \u2022 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;->artists()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;->album:Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;->b:Ljava/lang/StringBuilder;

    const-string v1, " \u2022 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;->album:Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;)Z
    .registers 5

    check-cast p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;->getUri()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->trackUri:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final b(ILandroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->b(ILandroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Class;
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->b()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;->a:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->l_()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;->a:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->k_()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected final synthetic e()Lcom/google/common/base/Optional;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/l;->c:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-static {v0}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;

    return-object v0
.end method
