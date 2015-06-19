.class public Lcom/lenovo/anyshare/sdk/internal/u$a;
.super Lcom/lenovo/anyshare/sdk/internal/t;
.source "Packets.java"
.method public constructor <init>()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/t;-><init>(B)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 6
const/4 v2, 0x1
invoke-direct {p0, v2}, Lcom/lenovo/anyshare/sdk/internal/t;-><init>(B)V
:try_start_4
const-string/jumbo v2, "UTF-8"
invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/t;->d:[B
array-length v2, v0
iput v2, p0, Lcom/lenovo/anyshare/sdk/internal/t;->c:I
:try_end_10
.catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_10} :catch_11
:goto_10
return-void
:catch_11
move-exception v1
const-string/jumbo v2, "StringPacket"
invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_10
.end method
.method public a()Ljava/lang/String;
.registers 7
:try_start_0
new-instance v1, Ljava/lang/String;
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/u$a;->d:[B
const/4 v3, 0x0
iget v4, p0, Lcom/lenovo/anyshare/sdk/internal/u$a;->c:I
const-string/jumbo v5, "UTF-8"
invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
:try_end_d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_e
:goto_d
return-object v1
:catch_e
move-exception v0
const-string/jumbo v1, "StringPacket"
const-string/jumbo v2, "UnsupportedEncodingException"
invoke-static {v1, v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v1, 0x0
goto :goto_d
.end method
.method public a([B)V
.registers 3
array-length v0, p1
iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/t;->c:I
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/t;->d:[B
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "GeneralPacket [type = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-byte v1, p0, Lcom/lenovo/anyshare/sdk/internal/u$a;->b:B
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", length = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/u$a;->c:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", body = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/u$a;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method