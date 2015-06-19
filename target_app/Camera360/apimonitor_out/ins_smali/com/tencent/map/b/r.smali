.class public final Lcom/tencent/map/b/r;
.super Ljava/lang/Object;
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 7
:try_start_0
const-string/jumbo v0, "MD5"
invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
move-result-object v1
const-string/jumbo v2, ""
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
array-length v4, v1
const/4 v0, 0x0
:goto_1c
if-ge v0, v4, :cond_30
aget-byte v5, v1, v0
and-int/lit16 v5, v5, 0xff
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_1c
:cond_30
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_33
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_35
move-result-object p0
:goto_34
return-object p0
:catch_35
move-exception v0
goto :goto_34
.end method
.method public static a([B)[B
.registers 6
const/4 v0, 0x0
if-nez p0, :cond_4
:goto_3
return-object v0
:cond_4
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v2, Ljava/util/zip/DeflaterOutputStream;
invoke-direct {v2, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V
const/4 v3, 0x0
:try_start_f
array-length v4, p0
invoke-virtual {v2, p0, v3, v4}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V
invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->finish()V
invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->flush()V
invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
:try_end_1c
.catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_21
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
goto :goto_3
:catch_21
move-exception v1
goto :goto_3
.end method
.method public static b([B)[B
.registers 12
const/4 v3, 0x0
const/4 v0, 0x0
if-nez p0, :cond_6
move-object v1, v3
:goto_5
return-object v1
:cond_6
new-instance v4, Ljava/io/ByteArrayInputStream;
invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
new-instance v5, Ljava/util/zip/InflaterInputStream;
invoke-direct {v5, v4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
new-array v2, v0, [B
const/16 v1, 0x400
new-array v6, v1, [B
:try_start_16
:goto_16
invoke-virtual {v5, v6}, Ljava/util/zip/InflaterInputStream;->read([B)I
move-result v7
if-lez v7, :cond_3b
add-int/2addr v0, v7
new-array v1, v0, [B
const/4 v8, 0x0
const/4 v9, 0x0
array-length v10, v2
invoke-static {v2, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/4 v8, 0x0
array-length v2, v2
invoke-static {v6, v8, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:try_end_2a
.catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2a} :catch_36
:goto_2a
if-gtz v7, :cond_39
:try_start_2c
invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
invoke-virtual {v5}, Ljava/util/zip/InflaterInputStream;->close()V
:try_end_32
.catch Ljava/io/IOException; {:try_start_2c .. :try_end_32} :catch_33
goto :goto_5
:catch_33
move-exception v0
move-object v1, v3
goto :goto_5
:catch_36
move-exception v0
move-object v1, v3
goto :goto_5
:cond_39
move-object v2, v1
goto :goto_16
:cond_3b
move-object v1, v2
goto :goto_2a
.end method