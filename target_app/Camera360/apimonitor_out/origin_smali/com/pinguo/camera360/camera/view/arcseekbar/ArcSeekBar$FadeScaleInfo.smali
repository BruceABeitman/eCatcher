.class Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$FadeScaleInfo;
.super Ljava/lang/Object;
.source "ArcSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeScaleInfo"
.end annotation


# instance fields
.field alpha:F

.field index:I


# direct methods
.method public constructor <init>(IF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$FadeScaleInfo;->index:I

    iput p2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$FadeScaleInfo;->alpha:F

    return-void
.end method
