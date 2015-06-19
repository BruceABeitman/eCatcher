.class final Lcom/spotify/mobile/android/ui/fragments/p$12;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/picasso/ai;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/p;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/p;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p$12;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$12;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->b(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/b/c;
move-result-object v0
new-instance v1, Landroid/graphics/drawable/BitmapDrawable;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p$12;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/p;->k()Landroid/content/res/Resources;
move-result-object v2
invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/b/c;->a(Landroid/graphics/drawable/Drawable;Z)V
return-void
.end method
.method public final a(Landroid/graphics/drawable/Drawable;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$12;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->b(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/b/c;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/b/c;->a(Landroid/graphics/drawable/Drawable;Z)V
return-void
.end method
.method public final b(Landroid/graphics/drawable/Drawable;)V
.registers 2
return-void
.end method