.class public interface abstract Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;
.super Ljava/lang/Object;
.source "PuzzleSystemInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PuzzleSystemListener"
.end annotation


# virtual methods
.method public abstract onLoadTemplateEnd(Lcom/pinguo/camera360/puzzle/PuzzleSystem;)V
.end method

.method public abstract onLoadTemplateStart(Lcom/pinguo/camera360/puzzle/PuzzleSystem;)V
.end method

.method public abstract onPuzzleItemClicked(Lcom/pinguo/camera360/puzzle/PuzzleItem;)V
.end method

.method public abstract onPuzzleItemLongClick()V
.end method

.method public abstract onSwapPhoto()V
.end method
