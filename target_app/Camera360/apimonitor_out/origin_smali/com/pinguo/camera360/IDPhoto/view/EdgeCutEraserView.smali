.class public Lcom/pinguo/camera360/IDPhoto/view/EdgeCutEraserView;
.super Landroid/view/View;
.source "EdgeCutEraserView.java"


# instance fields
.field private mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    const/high16 v6, 0x4000

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutEraserView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutEraserView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutEraserView;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutEraserView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    new-instance v3, Landroid/graphics/PointF;

    int-to-float v4, v1

    div-float/2addr v4, v6

    int-to-float v5, v0

    div-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, p1, v3}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->drawWithCenter(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    :cond_1c
    return-void
.end method

.method public setEraser(Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutEraserView;->mEraser:Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;

    return-void
.end method
