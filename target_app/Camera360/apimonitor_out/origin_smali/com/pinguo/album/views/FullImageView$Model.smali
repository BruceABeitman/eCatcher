.class public interface abstract Lcom/pinguo/album/views/FullImageView$Model;
.super Ljava/lang/Object;
.source "FullImageView.java"

# interfaces
.implements Lcom/pinguo/album/views/TileImageView$TileSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/FullImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# static fields
.field public static final FOCUS_HINT_NEXT:I = 0x0

.field public static final FOCUS_HINT_PREVIOUS:I = 0x1

.field public static final LOADING_COMPLETE:I = 0x1

.field public static final LOADING_FAIL:I = 0x2

.field public static final LOADING_INIT:I


# virtual methods
.method public abstract getCurrentIndex()I
.end method

.method public abstract getImageRotation(I)I
.end method

.method public abstract getImageSize(ILcom/pinguo/album/views/FullImageView$Size;)V
.end method

.method public abstract getLoadingState(I)I
.end method

.method public abstract getMediaItem(I)Lcom/pinguo/album/data/MediaItem;
.end method

.method public abstract getScreenNail(I)Lcom/pinguo/album/opengles/ScreenNail;
.end method

.method public abstract isCamera(I)Z
.end method

.method public abstract isDeletable(I)Z
.end method

.method public abstract isPanorama(I)Z
.end method

.method public abstract isStaticCamera(I)Z
.end method

.method public abstract isVideo(I)Z
.end method

.method public abstract moveTo(I)V
.end method

.method public abstract setFocusHintDirection(I)V
.end method

.method public abstract setFocusHintPath(Lcom/pinguo/album/data/MediaPath;)V
.end method

.method public abstract setNeedFullImage(Z)V
.end method
