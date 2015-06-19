.class public interface abstract Lcom/pinguo/camera360/gallery/ui/GLCanvas;
.super Ljava/lang/Object;
.source "GLCanvas.java"
.field public static final SAVE_FLAG_ALL:I = -0x1
.field public static final SAVE_FLAG_ALPHA:I = 0x1
.field public static final SAVE_FLAG_MATRIX:I = 0x2
.method public abstract beginRenderTarget(Lcom/pinguo/camera360/gallery/ui/RawTexture;)V
.end method
.method public abstract clearBuffer()V
.end method
.method public abstract deleteBuffer(I)V
.end method
.method public abstract deleteRecycledResources()V
.end method
.method public abstract drawLine(FFFFLcom/pinguo/camera360/gallery/ui/GLPaint;)V
.end method
.method public abstract drawMesh(Lcom/pinguo/camera360/gallery/ui/BasicTexture;IIIIII)V
.end method
.method public abstract drawMixed(Lcom/pinguo/camera360/gallery/ui/BasicTexture;IFIIII)V
.end method
.method public abstract drawRect(FFFFLcom/pinguo/camera360/gallery/ui/GLPaint;)V
.end method
.method public abstract drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;IIII)V
.end method
.method public abstract drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method
.method public abstract drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;[FIIII)V
.end method
.method public abstract dumpStatisticsAndClear()V
.end method
.method public abstract endRenderTarget()V
.end method
.method public abstract fillRect(FFFFI)V
.end method
.method public abstract getAlpha()F
.end method
.method public abstract getGLInstance()Ljavax/microedition/khronos/opengles/GL11;
.end method
.method public abstract multiplyAlpha(F)V
.end method
.method public abstract multiplyMatrix([FI)V
.end method
.method public abstract restore()V
.end method
.method public abstract rotate(FFFF)V
.end method
.method public abstract save()V
.end method
.method public abstract save(I)V
.end method
.method public abstract scale(FFF)V
.end method
.method public abstract setAlpha(F)V
.end method
.method public abstract setSize(II)V
.end method
.method public abstract translate(FF)V
.end method
.method public abstract translate(FFF)V
.end method
.method public abstract unloadTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;)Z
.end method