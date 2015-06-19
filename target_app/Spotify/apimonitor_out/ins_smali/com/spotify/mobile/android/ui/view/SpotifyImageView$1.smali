.class final Lcom/spotify/mobile/android/ui/view/SpotifyImageView$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/picasso/ai;
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/SpotifyImageView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView$1;->a:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView$1;->a:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
return-void
.end method
.method public final a(Landroid/graphics/drawable/Drawable;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView$1;->a:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a(Lcom/spotify/mobile/android/ui/view/SpotifyImageView;)Landroid/net/Uri;
move-result-object v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView$1;->a:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView$1;->a:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a(Lcom/spotify/mobile/android/ui/view/SpotifyImageView;)Landroid/net/Uri;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a(Landroid/net/Uri;Landroid/net/Uri;)V
goto :goto_8
.end method
.method public final b(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView$1;->a:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method