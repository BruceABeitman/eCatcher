.class final Lcom/spotify/music/spotlets/radio/b/b;
.super Lcom/spotify/music/spotlets/radio/a/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .registers 8

    const/4 v4, 0x0

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->d:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/spotify/music/spotlets/radio/a/a;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;ZZ)V

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ah:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/b/b;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/widget/ImageView;Lcom/spotify/music/spotlets/radio/model/a;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
