.class interface abstract Lcom/pinguo/album/views/FullImageView$Picture;
.super Ljava/lang/Object;
.source "FullImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/FullImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Picture"
.end annotation


# virtual methods
.method public abstract draw(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;)V
.end method

.method public abstract forceSize()V
.end method

.method public abstract getSize()Lcom/pinguo/album/views/FullImageView$Size;
.end method

.method public abstract isCamera()Z
.end method

.method public abstract isDeletable()Z
.end method

.method public abstract reload()V
.end method

.method public abstract setScreenNail(Lcom/pinguo/album/opengles/ScreenNail;)V
.end method
