.class public Lcom/spotify/mobile/android/spotlets/artist/d;
.super Lcom/spotify/mobile/android/spotlets/artist/a;
.source "SourceFile"


# instance fields
.field private b:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final E()Landroid/view/View;
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/d;->b:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/d;->b:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;

    const v1, 0x7f0a031c

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/d;->b:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/d;->b:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->c()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/d;->b:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/d;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artist_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/a;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/d;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artist_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/d;->c:Ljava/lang/String;

    return-void
.end method

.method protected final b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
    .registers 6

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/d;->b:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;

    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;

    iget-object v2, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->gallery:Lcom/google/common/base/Optional;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;->EMPTY_GALLERY:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;

    invoke-virtual {v0, v3}, Lcom/google/common/base/Optional;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistGallery;->images:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/d;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->info:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final x()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->x()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/d;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/d;->a(Ljava/lang/String;)V

    return-void
.end method
