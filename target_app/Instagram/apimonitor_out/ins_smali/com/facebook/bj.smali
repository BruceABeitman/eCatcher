.class final Lcom/facebook/bj;
.super Ljava/lang/Object;
.source "Request.java"
.implements Lcom/facebook/bi;
.field private final a:Ljava/io/BufferedOutputStream;
.field private final b:Lcom/facebook/g/n;
.field private c:Z
.method public constructor <init>(Ljava/io/BufferedOutputStream;Lcom/facebook/g/n;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/bj;->c:Z
iput-object p1, p0, Lcom/facebook/bj;->a:Ljava/io/BufferedOutputStream;
iput-object p2, p0, Lcom/facebook/bj;->b:Lcom/facebook/g/n;
return-void
.end method
.method private a()V
.registers 5
const-string v0, "--%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
aput-object v3, v1, v2
invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->b(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 6
const-string v0, "image/png"
invoke-direct {p0, p1, p1, v0}, Lcom/facebook/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v1, 0x64
iget-object v2, p0, Lcom/facebook/bj;->a:Ljava/io/BufferedOutputStream;
invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
const-string v0, ""
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->b(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/facebook/bj;->a()V
iget-object v0, p0, Lcom/facebook/bj;->b:Lcom/facebook/g/n;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "    "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-string v2, "<Image>"
invoke-virtual {v0, v1, v2}, Lcom/facebook/g/n;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method private a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
.registers 11
const/4 v2, 0x0
const/4 v4, 0x0
const-string v0, "content/unknown"
invoke-direct {p0, p1, p1, v0}, Lcom/facebook/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_start_7
new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
invoke-direct {v3, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
:try_start_c
:try_end_c
.catchall {:try_start_7 .. :try_end_c} :catchall_59
new-instance v1, Ljava/io/BufferedInputStream;
invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_end_11
.catchall {:try_start_c .. :try_end_11} :catchall_66
const/16 v0, 0x2000
:try_start_13
new-array v2, v0, [B
move v0, v4
:goto_16
invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I
move-result v5
const/4 v6, -0x1
if-eq v5, v6, :cond_25
iget-object v6, p0, Lcom/facebook/bj;->a:Ljava/io/BufferedOutputStream;
const/4 v7, 0x0
invoke-virtual {v6, v2, v7, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
:try_end_23
.catchall {:try_start_13 .. :try_end_23} :catchall_6a
add-int/2addr v0, v5
goto :goto_16
:cond_25
invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
const-string v1, ""
new-array v2, v4, [Ljava/lang/Object;
invoke-direct {p0, v1, v2}, Lcom/facebook/bj;->b(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/facebook/bj;->a()V
iget-object v1, p0, Lcom/facebook/bj;->b:Lcom/facebook/g/n;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "    "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, "<Data: %d>"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v5, v4
invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v2, v0}, Lcom/facebook/g/n;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
:catchall_59
move-exception v0
move-object v1, v2
:goto_5b
if-eqz v1, :cond_60
invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
:cond_60
if-eqz v2, :cond_65
invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
:cond_65
throw v0
:catchall_66
move-exception v0
move-object v1, v2
move-object v2, v3
goto :goto_5b
:catchall_6a
move-exception v0
move-object v2, v3
goto :goto_5b
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
const/4 v4, 0x1
const/4 v3, 0x0
const-string v0, "Content-Disposition: form-data; name=\"%s\""
new-array v1, v4, [Ljava/lang/Object;
aput-object p1, v1, v3
invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->a(Ljava/lang/String;[Ljava/lang/Object;)V
if-eqz p2, :cond_16
const-string v0, "; filename=\"%s\""
new-array v1, v4, [Ljava/lang/Object;
aput-object p2, v1, v3
invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->a(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_16
const-string v0, ""
new-array v1, v3, [Ljava/lang/Object;
invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->b(Ljava/lang/String;[Ljava/lang/Object;)V
if-eqz p3, :cond_2d
const-string v0, "%s: %s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const-string v2, "Content-Type"
aput-object v2, v1, v3
aput-object p3, v1, v4
invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_2d
const-string v0, ""
new-array v1, v3, [Ljava/lang/Object;
invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->b(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method private a(Ljava/lang/String;[B)V
.registers 9
const/4 v5, 0x0
const-string v0, "content/unknown"
invoke-direct {p0, p1, p1, v0}, Lcom/facebook/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/bj;->a:Ljava/io/BufferedOutputStream;
invoke-virtual {v0, p2}, Ljava/io/BufferedOutputStream;->write([B)V
const-string v0, ""
new-array v1, v5, [Ljava/lang/Object;
invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->b(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/facebook/bj;->a()V
iget-object v0, p0, Lcom/facebook/bj;->b:Lcom/facebook/g/n;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "    "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-string v2, "<Data: %d>"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
array-length v4, p2
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v5
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/facebook/g/n;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 5
iget-boolean v0, p0, Lcom/facebook/bj;->c:Z
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/facebook/bj;->a:Ljava/io/BufferedOutputStream;
const-string v1, "--"
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V
iget-object v0, p0, Lcom/facebook/bj;->a:Ljava/io/BufferedOutputStream;
const-string v1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V
iget-object v0, p0, Lcom/facebook/bj;->a:Ljava/io/BufferedOutputStream;
const-string v1, "\r\n"
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/bj;->c:Z
:cond_28
iget-object v0, p0, Lcom/facebook/bj;->a:Ljava/io/BufferedOutputStream;
invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V
return-void
.end method
.method private varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/facebook/bj;->a(Ljava/lang/String;[Ljava/lang/Object;)V
const-string v0, "\r\n"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->a(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
.registers 5
invoke-static {p2}, Lcom/facebook/bc;->a(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
invoke-static {p2}, Lcom/facebook/bc;->b(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/facebook/bj;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_d
return-void
:cond_e
instance-of v0, p2, Landroid/graphics/Bitmap;
if-eqz v0, :cond_18
check-cast p2, Landroid/graphics/Bitmap;
invoke-direct {p0, p1, p2}, Lcom/facebook/bj;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
goto :goto_d
:cond_18
instance-of v0, p2, [B
if-eqz v0, :cond_24
check-cast p2, [B
check-cast p2, [B
invoke-direct {p0, p1, p2}, Lcom/facebook/bj;->a(Ljava/lang/String;[B)V
goto :goto_d
:cond_24
instance-of v0, p2, Landroid/os/ParcelFileDescriptor;
if-eqz v0, :cond_2e
check-cast p2, Landroid/os/ParcelFileDescriptor;
invoke-direct {p0, p1, p2}, Lcom/facebook/bj;->a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
goto :goto_d
:cond_2e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "value is not a supported type: String, Bitmap, byte[]"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const/4 v0, 0x0
invoke-direct {p0, p1, v0, v0}, Lcom/facebook/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p2, v1, v2
invoke-direct {p0, v0, v1}, Lcom/facebook/bj;->b(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/facebook/bj;->a()V
iget-object v0, p0, Lcom/facebook/bj;->b:Lcom/facebook/g/n;
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/facebook/bj;->b:Lcom/facebook/g/n;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "    "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p2}, Lcom/facebook/g/n;->a(Ljava/lang/String;Ljava/lang/Object;)V
:cond_2a
return-void
.end method