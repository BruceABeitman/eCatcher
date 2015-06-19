.class public abstract Lcom/lenovo/anyshare/sdk/internal/t;
.super Ljava/lang/Object;
.source "Packet.java"
.field protected a:B
.field protected b:B
.field protected c:I
.field protected d:[B
.method protected constructor <init>(B)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-byte v0, p0, Lcom/lenovo/anyshare/sdk/internal/t;->a:B
iput-byte p1, p0, Lcom/lenovo/anyshare/sdk/internal/t;->b:B
const/4 v0, 0x0
iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/t;->c:I
return-void
.end method
.method public a(Ljava/io/OutputStream;)V
.registers 3
iget-byte v0, p0, Lcom/lenovo/anyshare/sdk/internal/t;->a:B
and-int/lit16 v0, v0, 0xff
invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V
iget-byte v0, p0, Lcom/lenovo/anyshare/sdk/internal/t;->b:B
and-int/lit16 v0, v0, 0xff
invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/t;->c:I
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(I)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/t;->c:I
if-lez v0, :cond_20
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/t;->d:[B
invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
:cond_20
invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "Packet [version = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-byte v1, p0, Lcom/lenovo/anyshare/sdk/internal/t;->a:B
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", type = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-byte v1, p0, Lcom/lenovo/anyshare/sdk/internal/t;->b:B
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", length = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/t;->c:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method