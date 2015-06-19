.class public Lco/vine/android/drawable/RecyclableBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "RecyclableBitmapDrawable.java"
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
return-void
.end method
.method public constructor <init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
return-void
.end method
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
return-void
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 4
invoke-virtual {p0}, Lco/vine/android/drawable/RecyclableBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v1
if-nez v1, :cond_f
:try_start_c
invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
:goto_f
:cond_f
:try_end_f
.catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v1
goto :goto_f
.end method