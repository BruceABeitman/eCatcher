.class abstract Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;
.super Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Lcom/spotify/mobile/android/spotlets/search/model/entity/e;",
        ">",
        "Lcom/spotify/mobile/android/spotlets/search/adapter/a/a",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private final b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/Class;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/spotlets/search/a;",
            "Ljava/lang/Class",
            "<TD;>;",
            "Lcom/spotify/android/paste/graphics/SpotifyIcon;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/Class;)V

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public synthetic a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->b(ILandroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/spotify/mobile/android/spotlets/search/model/entity/e;)Lcom/spotify/mobile/android/util/dg;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lcom/spotify/mobile/android/util/dg;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a(ILandroid/view/View;Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .registers 5

    check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;

    check-cast p3, Lcom/spotify/mobile/android/spotlets/search/model/entity/e;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;->a(ILcom/spotify/android/paste/widget/ListItemView;Lcom/spotify/mobile/android/spotlets/search/model/entity/e;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic a(ILcom/spotify/android/paste/widget/ListItemView;Lcom/spotify/mobile/android/spotlets/search/model/entity/b;Landroid/view/ViewGroup;)V
    .registers 5

    check-cast p3, Lcom/spotify/mobile/android/spotlets/search/model/entity/e;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;->a(ILcom/spotify/android/paste/widget/ListItemView;Lcom/spotify/mobile/android/spotlets/search/model/entity/e;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final a(ILcom/spotify/android/paste/widget/ListItemView;Lcom/spotify/mobile/android/spotlets/search/model/entity/e;Landroid/view/ViewGroup;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/spotify/android/paste/widget/ListItemView;",
            "TD;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->a(ILcom/spotify/android/paste/widget/ListItemView;Lcom/spotify/mobile/android/spotlets/search/model/entity/b;Landroid/view/ViewGroup;)V

    invoke-interface {p3}, Lcom/spotify/mobile/android/spotlets/search/model/entity/e;->getImageUri()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p3}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;->a(Lcom/spotify/mobile/android/spotlets/search/model/entity/e;)Lcom/spotify/mobile/android/util/dg;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/b;->a(Lcom/spotify/android/paste/widget/ListItemView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/spotify/mobile/android/util/dg;)V

    return-void
.end method

.method protected final d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
