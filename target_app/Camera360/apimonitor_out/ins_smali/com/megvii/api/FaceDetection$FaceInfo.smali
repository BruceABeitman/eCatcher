.class public Lcom/megvii/api/FaceDetection$FaceInfo;
.super Ljava/lang/Object;
.source "FaceDetection.java"
.field  faceRectangle:Landroid/graphics/Rect;
.field  id:I
.method public constructor <init>(IIIII)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V
iput-object v0, p0, Lcom/megvii/api/FaceDetection$FaceInfo;->faceRectangle:Landroid/graphics/Rect;
return-void
.end method
.method public getFaceRectangle()Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lcom/megvii/api/FaceDetection$FaceInfo;->faceRectangle:Landroid/graphics/Rect;
return-object v0
.end method
.method public getId()I
.registers 2
iget v0, p0, Lcom/megvii/api/FaceDetection$FaceInfo;->id:I
return v0
.end method
.method public setFaceRectangle(Landroid/graphics/Rect;)V
.registers 2
iput-object p1, p0, Lcom/megvii/api/FaceDetection$FaceInfo;->faceRectangle:Landroid/graphics/Rect;
return-void
.end method
.method public setId(I)V
.registers 2
iput p1, p0, Lcom/megvii/api/FaceDetection$FaceInfo;->id:I
return-void
.end method