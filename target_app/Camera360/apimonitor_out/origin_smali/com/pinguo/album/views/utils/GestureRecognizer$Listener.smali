.class public interface abstract Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/utils/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDoubleTap(FF)Z
.end method

.method public abstract onDown(FF)V
.end method

.method public abstract onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end method

.method public abstract onScale(FFF)Z
.end method

.method public abstract onScaleBegin(FF)Z
.end method

.method public abstract onScaleEnd()V
.end method

.method public abstract onScroll(FFFF)Z
.end method

.method public abstract onSingleTapConfirmed(FF)Z
.end method

.method public abstract onUp()V
.end method
