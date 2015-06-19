.class public interface abstract Lcom/pinguo/album/opengles/GLESCanvas;
.super Ljava/lang/Object;
.source "GLESCanvas.java"
.field public static final SAVE_FLAG_ALL:I = -0x1
.field public static final SAVE_FLAG_ALPHA:I = 0x1
.field public static final SAVE_FLAG_MATRIX:I = 0x2
.method public abstract beginRenderTarget(Lcom/pinguo/album/opengles/RawTexture;)V
.end method
.method public abstract clearBuffer()V
.end method
.method public abstract clearBuffer([F)V
.end method
.method public abstract deleteBuffer(I)V
.end method
.method public abstract deleteRecycledResources()V
.end method
.method public abstract drawLine(FFFFLcom/pinguo/album/opengles/GLPaint;)V
.end method
.method public abstract drawMesh(Lcom/pinguo/album/opengles/BasicTexture;IIIIII)V
.end method
.method public abstract drawMixed(Lcom/pinguo/album/opengles/BasicTexture;IFIIII)V
.end method
.method public abstract drawMixed(Lcom/pinguo/album/opengles/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method
.method public abstract drawRect(FFFFLcom/pinguo/album/opengles/GLPaint;)V
.end method
.method public abstract drawTexture(Lcom/pinguo/album/opengles/BasicTexture;IIII)V
.end method
.method public abstract drawTexture(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method
.method public abstract drawTexture(Lcom/pinguo/album/opengles/BasicTexture;[FIIII)V
.end method
.method public abstract dumpStatisticsAndClear()V
.end method
.method public abstract endRenderTarget()V
.end method
.method public abstract fillRect(FFFFI)V
.end method
.method public abstract getAlpha()F
.end method
.method public abstract getBounds(Landroid/graphics/Rect;IIII)V
.end method
.method public abstract getGLId()Lcom/pinguo/album/opengles/GLId;
.end method
.method public abstract initializeTexture(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/Bitmap;)V
.end method
.method public abstract initializeTextureSize(Lcom/pinguo/album/opengles/BasicTexture;II)V
.end method
.method public abstract multiplyAlpha(F)V
.end method
.method public abstract multiplyMatrix([FI)V
.end method
.method public abstract recoverFromLightCycle()V
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
.method public abstract setTextureParameters(Lcom/pinguo/album/opengles/BasicTexture;)V
.end method
.method public abstract texSubImage2D(Lcom/pinguo/album/opengles/BasicTexture;IILandroid/graphics/Bitmap;II)V
.end method
.method public abstract translate(FF)V
.end method
.method public abstract translate(FFF)V
.end method
.method public abstract unloadTexture(Lcom/pinguo/album/opengles/BasicTexture;)Z
.end method
.method public abstract uploadBuffer(Ljava/nio/ByteBuffer;)I
.end method
.method public abstract uploadBuffer(Ljava/nio/FloatBuffer;)I
.end method