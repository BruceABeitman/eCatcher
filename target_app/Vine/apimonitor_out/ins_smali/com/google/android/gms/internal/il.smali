.class public final Lcom/google/android/gms/internal/il;
.super Ljava/lang/Object;
.method public static a(Ljava/io/InputStream;Z)[B
.registers 6
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
const/16 v1, 0x2710
new-array v1, v1, [B
:goto_9
:try_start_9
invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_1c
const/4 v3, 0x0
invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
:try_end_14
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_15
goto :goto_9
:catch_15
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_1c
if-eqz p1, :cond_21
:try_start_1e
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
:cond_21
:try_end_21
.catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_15
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
return-object v0
.end method
.method public static b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
.registers 5
const/4 v2, 0x0
iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C
if-eqz v0, :cond_e
iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C
array-length v0, v0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-ge v0, v1, :cond_1b
:cond_e
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
iput-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C
:goto_14
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
iput v0, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I
return-void
:cond_1b
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
iget-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C
invoke-virtual {p0, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V
goto :goto_14
.end method