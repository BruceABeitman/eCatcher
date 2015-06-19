.class  Lcom/glympse/android/lib/dq;
.super Ljava/lang/Object;
.source "HashCodeBuilder.java"
.implements Lcom/glympse/android/core/GCommon;
.field private mY:I
.field private mZ:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x25
iput v0, p0, Lcom/glympse/android/lib/dq;->mY:I
const/16 v0, 0x11
iput v0, p0, Lcom/glympse/android/lib/dq;->mZ:I
return-void
.end method
.method public a(F)V
.registers 4
iget v0, p0, Lcom/glympse/android/lib/dq;->mZ:I
iget v1, p0, Lcom/glympse/android/lib/dq;->mY:I
mul-int/2addr v0, v1
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->floatToIntBits(F)I
move-result v1
add-int/2addr v0, v1
iput v0, p0, Lcom/glympse/android/lib/dq;->mZ:I
return-void
.end method
.method public append(I)V
.registers 4
iget v0, p0, Lcom/glympse/android/lib/dq;->mZ:I
iget v1, p0, Lcom/glympse/android/lib/dq;->mY:I
mul-int/2addr v0, v1
add-int/2addr v0, p1
iput v0, p0, Lcom/glympse/android/lib/dq;->mZ:I
return-void
.end method
.method public bP()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/dq;->mZ:I
return v0
.end method
.method public f(J)V
.registers 6
iget v0, p0, Lcom/glympse/android/lib/dq;->mZ:I
iget v1, p0, Lcom/glympse/android/lib/dq;->mY:I
mul-int/2addr v0, v1
const/16 v1, 0x20
shr-long v1, p1, v1
xor-long/2addr v1, p1
long-to-int v1, v1
add-int/2addr v0, v1
iput v0, p0, Lcom/glympse/android/lib/dq;->mZ:I
return-void
.end method