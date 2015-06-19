.class public interface abstract Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/PhotoView;
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

.method public abstract getImageSize(ILcom/pinguo/camera360/gallery/ui/PhotoView$Size;)V
.end method

.method public abstract getLoadingState(I)I
.end method

.method public abstract getMediaItem(I)Lcom/pinguo/camera360/gallery/data/MediaItem;
.end method

.method public abstract getScreenNail(I)Lcom/pinguo/camera360/gallery/ui/ScreenNail;
.end method

.method public abstract isDeletable(I)Z
.end method

.method public abstract isVideo(I)Z
.end method

.method public abstract moveTo(I)V
.end method

.method public abstract setFocusHintDirection(I)V
.end method

.method public abstract setFocusHintPath(Lcom/pinguo/camera360/gallery/data/Path;)V
.end method

.method public abstract setNeedFullImage(Z)V
.end method
