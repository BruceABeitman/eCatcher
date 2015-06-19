.class Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigState"
.end annotation


# instance fields
.field mAlpha:F

.field mMatrix:[F

.field mNextFree:Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;-><init>()V

    return-void
.end method


# virtual methods
.method public restore(Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->setAlpha(F)V

    :cond_d
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    aget v0, v0, v3

    const/high16 v1, -0x80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl$ConfigState;->mMatrix:[F

    #getter for: Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->mMatrixValues:[F
    invoke-static {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;->access$0(Lcom/pinguo/camera360/gallery/ui/GLCanvasImpl;)[F

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_22
    return-void
.end method
