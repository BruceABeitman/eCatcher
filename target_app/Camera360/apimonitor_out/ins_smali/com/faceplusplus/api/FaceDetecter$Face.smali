.class public Lcom/faceplusplus/api/FaceDetecter$Face;
.super Ljava/lang/Object;
.source "FaceDetecter.java"
.field public bottom:F
.field public left:F
.field public right:F
.field public top:F
.field public trackingID:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public initial(IFFFF)V
.registers 6
iput p1, p0, Lcom/faceplusplus/api/FaceDetecter$Face;->trackingID:I
iput p2, p0, Lcom/faceplusplus/api/FaceDetecter$Face;->left:F
iput p3, p0, Lcom/faceplusplus/api/FaceDetecter$Face;->top:F
iput p4, p0, Lcom/faceplusplus/api/FaceDetecter$Face;->right:F
iput p5, p0, Lcom/faceplusplus/api/FaceDetecter$Face;->bottom:F
return-void
.end method