.class public interface abstract Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface;
.super Ljava/lang/Object;
.source "PuzzleSystemInterface.java"
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.method public abstract getCurrState()Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
.end method
.method public abstract getPuzzleTemplate()Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;
.end method
.method public abstract getSelectedItem()Lcom/pinguo/camera360/puzzle/PuzzleItem;
.end method
.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method
.method public abstract setListener(Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;)V
.end method
.method public abstract setPuzzleTempalte(Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;)V
.end method