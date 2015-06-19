.class public abstract Lcom/pinguo/album/animations/CanvasAnim;
.super Lcom/pinguo/album/animations/Animation;
.source "CanvasAnim.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/album/animations/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apply(Lcom/pinguo/album/opengles/GLESCanvas;)V
.end method

.method public abstract getCanvasSaveFlags()I
.end method
