.class  Lcom/admarvel/android/ads/AdMarvelActivity$y$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelActivity$y;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity$y;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y$2;->a:Lcom/admarvel/android/ads/AdMarvelActivity$y;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y$2;->a:Lcom/admarvel/android/ads/AdMarvelActivity$y;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y$2;->a:Lcom/admarvel/android/ads/AdMarvelActivity$y;
iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelActivity$y;->c:Ljava/io/InputStream;
invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, v0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
return-void
.end method