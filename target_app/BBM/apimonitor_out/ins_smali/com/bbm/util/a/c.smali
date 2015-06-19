.class final Lcom/bbm/util/a/c;
.super Ljava/lang/Object;
.source "GlympseInfoWindowAdapter.java"
.implements Lcom/glympse/android/api/GEventListener;
.field final synthetic a:Lcom/glympse/android/api/GImage;
.field final synthetic b:Landroid/widget/ImageView;
.field final synthetic c:Lcom/bbm/util/a/b;
.method constructor <init>(Lcom/bbm/util/a/b;Lcom/glympse/android/api/GImage;Landroid/widget/ImageView;)V
.registers 4
iput-object p1, p0, Lcom/bbm/util/a/c;->c:Lcom/bbm/util/a/b;
iput-object p2, p0, Lcom/bbm/util/a/c;->a:Lcom/glympse/android/api/GImage;
iput-object p3, p0, Lcom/bbm/util/a/c;->b:Landroid/widget/ImageView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 7
const/4 v0, 0x7
if-ne p2, v0, :cond_2a
const/4 v0, 0x1
if-ne p3, v0, :cond_2a
iget-object v0, p0, Lcom/bbm/util/a/c;->a:Lcom/glympse/android/api/GImage;
invoke-interface {v0}, Lcom/glympse/android/api/GImage;->getDrawable()Lcom/glympse/android/core/GDrawable;
move-result-object v0
check-cast v0, Lcom/glympse/android/ui/GDrawableExt;
if-eqz v0, :cond_25
invoke-interface {v0}, Lcom/glympse/android/ui/GDrawableExt;->getImage()Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
if-eqz v0, :cond_25
invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v1
if-eqz v1, :cond_25
iget-object v1, p0, Lcom/bbm/util/a/c;->b:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_25
iget-object v0, p0, Lcom/bbm/util/a/c;->a:Lcom/glympse/android/api/GImage;
invoke-interface {v0, p0}, Lcom/glympse/android/api/GImage;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
:cond_2a
return-void
.end method