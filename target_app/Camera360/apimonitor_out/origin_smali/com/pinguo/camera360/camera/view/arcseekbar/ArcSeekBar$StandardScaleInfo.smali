.class Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;
.super Ljava/lang/Object;
.source "ArcSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StandardScaleInfo"
.end annotation


# instance fields
.field currentItem:I

.field currentX:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;->currentItem:I

    iput p2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;->currentX:I

    return-void
.end method
