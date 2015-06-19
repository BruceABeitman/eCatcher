.class public Lcom/pinguo/camera360/gallery/ui/RelativePosition;
.super Ljava/lang/Object;
.source "RelativePosition.java"
.field private mAbsoluteX:F
.field private mAbsoluteY:F
.field private mReferenceX:F
.field private mReferenceY:F
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getX()F
.registers 3
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/RelativePosition;->mAbsoluteX:F
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/RelativePosition;->mReferenceX:F
sub-float/2addr v0, v1
return v0
.end method
.method public getY()F
.registers 3
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/RelativePosition;->mAbsoluteY:F
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/RelativePosition;->mReferenceY:F
sub-float/2addr v0, v1
return v0
.end method
.method public setAbsolutePosition(II)V
.registers 4
int-to-float v0, p1
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/RelativePosition;->mAbsoluteX:F
int-to-float v0, p2
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/RelativePosition;->mAbsoluteY:F
return-void
.end method
.method public setReferencePosition(II)V
.registers 4
int-to-float v0, p1
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/RelativePosition;->mReferenceX:F
int-to-float v0, p2
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/RelativePosition;->mReferenceY:F
return-void
.end method