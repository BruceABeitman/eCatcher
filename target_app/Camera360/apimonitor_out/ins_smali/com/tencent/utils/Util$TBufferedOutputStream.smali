.class  Lcom/tencent/utils/Util$TBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "ProGuard"
.field private a:I
.method public constructor <init>(Ljava/io/OutputStream;)V
.registers 3
invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
const/4 v0, 0x0
iput v0, p0, Lcom/tencent/utils/Util$TBufferedOutputStream;->a:I
return-void
.end method
.method public getLength()I
.registers 2
iget v0, p0, Lcom/tencent/utils/Util$TBufferedOutputStream;->a:I
return v0
.end method
.method public write([B)V
.registers 4
invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V
iget v0, p0, Lcom/tencent/utils/Util$TBufferedOutputStream;->a:I
array-length v1, p1
add-int/2addr v0, v1
iput v0, p0, Lcom/tencent/utils/Util$TBufferedOutputStream;->a:I
return-void
.end method