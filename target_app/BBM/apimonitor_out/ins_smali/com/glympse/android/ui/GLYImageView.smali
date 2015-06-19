.class public Lcom/glympse/android/ui/GLYImageView;
.super Landroid/widget/ImageView;
.source "GLYImageView.java"
.implements Lcom/glympse/android/api/GEventListener;
.field private nN:Lcom/glympse/android/api/GImage;
.field private vu:Landroid/graphics/drawable/BitmapDrawable;
.field private vv:Landroid/graphics/drawable/BitmapDrawable;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public attachImage(Lcom/glympse/android/api/GImage;)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
if-ne p1, v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
invoke-interface {v0, p0}, Lcom/glympse/android/api/GImage;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
invoke-virtual {p0, v0}, Lcom/glympse/android/ui/GLYImageView;->b(Lcom/glympse/android/api/GImage;)V
:cond_13
if-nez p1, :cond_1e
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->vu:Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {p0, v0}, Lcom/glympse/android/ui/GLYImageView;->setRawImage(Landroid/graphics/drawable/BitmapDrawable;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
goto :goto_4
:cond_1e
iput-object p1, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
invoke-interface {v0, p0}, Lcom/glympse/android/api/GImage;->addListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
invoke-interface {v0}, Lcom/glympse/android/api/GImage;->getState()I
move-result v0
const/4 v1, 0x3
if-ne v1, v0, :cond_32
invoke-virtual {p0}, Lcom/glympse/android/ui/GLYImageView;->dq()V
goto :goto_4
:cond_32
const/4 v1, 0x1
if-ne v1, v0, :cond_3c
invoke-virtual {p0}, Lcom/glympse/android/ui/GLYImageView;->onComplete()V
invoke-virtual {p0}, Lcom/glympse/android/ui/GLYImageView;->dr()V
goto :goto_4
:cond_3c
if-nez v0, :cond_47
invoke-virtual {p0}, Lcom/glympse/android/ui/GLYImageView;->onComplete()V
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
invoke-interface {v0}, Lcom/glympse/android/api/GImage;->load()Z
goto :goto_4
:cond_47
invoke-virtual {p0}, Lcom/glympse/android/ui/GLYImageView;->onComplete()V
goto :goto_4
.end method
.method protected b(Lcom/glympse/android/api/GImage;)V
.registers 2
invoke-interface {p1}, Lcom/glympse/android/api/GImage;->unload()Z
return-void
.end method
.method protected dq()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->vv:Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {p0, v0}, Lcom/glympse/android/ui/GLYImageView;->setRawImage(Landroid/graphics/drawable/BitmapDrawable;)V
return-void
.end method
.method protected dr()V
.registers 1
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 7
const/4 v0, 0x7
if-ne v0, p2, :cond_13
and-int/lit8 v0, p3, 0x1
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
if-nez v0, :cond_14
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
invoke-interface {v0, p0}, Lcom/glympse/android/api/GImage;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
invoke-virtual {p0}, Lcom/glympse/android/ui/GLYImageView;->onComplete()V
:cond_13
:goto_13
return-void
:cond_14
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
invoke-interface {v0}, Lcom/glympse/android/api/GImage;->getState()I
move-result v0
const/4 v1, 0x3
if-ne v1, v0, :cond_21
invoke-virtual {p0}, Lcom/glympse/android/ui/GLYImageView;->dq()V
goto :goto_13
:cond_21
const/4 v1, 0x1
if-ne v1, v0, :cond_28
invoke-virtual {p0}, Lcom/glympse/android/ui/GLYImageView;->dr()V
goto :goto_13
:cond_28
if-nez v0, :cond_32
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
invoke-interface {v0}, Lcom/glympse/android/api/GImage;->load()Z
move-result v0
if-nez v0, :cond_13
:cond_32
invoke-virtual {p0}, Lcom/glympse/android/ui/GLYImageView;->onComplete()V
goto :goto_13
.end method
.method public getImage()Lcom/glympse/android/api/GImage;
.registers 2
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
return-object v0
.end method
.method protected onComplete()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
if-nez v0, :cond_a
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->vu:Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {p0, v0}, Lcom/glympse/android/ui/GLYImageView;->setRawImage(Landroid/graphics/drawable/BitmapDrawable;)V
:goto_9
:cond_9
return-void
:cond_a
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
invoke-interface {v0}, Lcom/glympse/android/api/GImage;->getDrawable()Lcom/glympse/android/core/GDrawable;
move-result-object v0
check-cast v0, Lcom/glympse/android/ui/GDrawableExt;
if-nez v0, :cond_20
invoke-virtual {p0}, Lcom/glympse/android/ui/GLYImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-nez v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->vu:Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {p0, v0}, Lcom/glympse/android/ui/GLYImageView;->setRawImage(Landroid/graphics/drawable/BitmapDrawable;)V
goto :goto_9
:cond_20
invoke-interface {v0}, Lcom/glympse/android/ui/GDrawableExt;->getImage()Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
if-nez v0, :cond_32
invoke-virtual {p0}, Lcom/glympse/android/ui/GLYImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-nez v0, :cond_9
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->vu:Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {p0, v0}, Lcom/glympse/android/ui/GLYImageView;->setRawImage(Landroid/graphics/drawable/BitmapDrawable;)V
goto :goto_9
:cond_32
invoke-virtual {p0, v0}, Lcom/glympse/android/ui/GLYImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_9
.end method
.method protected onDetachedFromWindow()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
invoke-interface {v0, p0}, Lcom/glympse/android/api/GImage;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
invoke-virtual {p0, v0}, Lcom/glympse/android/ui/GLYImageView;->b(Lcom/glympse/android/api/GImage;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->nN:Lcom/glympse/android/api/GImage;
:cond_11
return-void
.end method
.method public setDefault(Landroid/graphics/drawable/BitmapDrawable;)V
.registers 4
invoke-virtual {p0}, Lcom/glympse/android/ui/GLYImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/ui/GLYImageView;->vu:Landroid/graphics/drawable/BitmapDrawable;
if-ne v0, v1, :cond_13
const/4 v0, 0x1
:goto_9
iput-object p1, p0, Lcom/glympse/android/ui/GLYImageView;->vu:Landroid/graphics/drawable/BitmapDrawable;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->vu:Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {p0, v0}, Lcom/glympse/android/ui/GLYImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_12
return-void
:cond_13
const/4 v0, 0x0
goto :goto_9
.end method
.method public setFailed(Landroid/graphics/drawable/BitmapDrawable;)V
.registers 4
invoke-virtual {p0}, Lcom/glympse/android/ui/GLYImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/ui/GLYImageView;->vv:Landroid/graphics/drawable/BitmapDrawable;
if-ne v0, v1, :cond_13
const/4 v0, 0x1
:goto_9
iput-object p1, p0, Lcom/glympse/android/ui/GLYImageView;->vv:Landroid/graphics/drawable/BitmapDrawable;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/glympse/android/ui/GLYImageView;->vv:Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {p0, v0}, Lcom/glympse/android/ui/GLYImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_12
return-void
:cond_13
const/4 v0, 0x0
goto :goto_9
.end method
.method public setRawImage(Landroid/graphics/drawable/BitmapDrawable;)V
.registers 2
if-eqz p1, :cond_5
invoke-virtual {p0, p1}, Lcom/glympse/android/ui/GLYImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_5
return-void
.end method