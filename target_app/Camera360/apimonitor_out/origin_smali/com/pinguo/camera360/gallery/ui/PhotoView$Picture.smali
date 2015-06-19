.class interface abstract Lcom/pinguo/camera360/gallery/ui/PhotoView$Picture;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Picture"
.end annotation


# virtual methods
.method public abstract draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Landroid/graphics/Rect;)V
.end method

.method public abstract forceSize()V
.end method

.method public abstract getSize()Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
.end method

.method public abstract isDeletable()Z
.end method

.method public abstract reload()V
.end method

.method public abstract setScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;)V
.end method
