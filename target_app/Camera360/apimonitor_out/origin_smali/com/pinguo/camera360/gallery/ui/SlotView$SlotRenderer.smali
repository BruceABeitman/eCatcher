.class public interface abstract Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SlotRenderer"
.end annotation


# virtual methods
.method public abstract onSlotSizeChanged(II)V
.end method

.method public abstract onVisibleSlotRangeChanged(II)V
.end method

.method public abstract onVisibleTagRangeChanged(II)V
.end method

.method public abstract prepareDrawing()V
.end method

.method public abstract renderSlot(Lcom/pinguo/camera360/gallery/ui/GLCanvas;III)I
.end method

.method public abstract renderSortTag(Lcom/pinguo/camera360/gallery/ui/GLCanvas;III)I
.end method
