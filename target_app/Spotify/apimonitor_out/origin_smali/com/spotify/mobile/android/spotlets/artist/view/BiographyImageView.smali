.class public Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field a:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;->a:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a(Landroid/net/Uri;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;->a:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/BiographyImageView;->a:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    const v1, 0x7f0201bc

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a(I)V

    return-void
.end method
