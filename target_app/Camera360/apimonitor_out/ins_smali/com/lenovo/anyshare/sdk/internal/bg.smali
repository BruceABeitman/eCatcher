.class public final Lcom/lenovo/anyshare/sdk/internal/bg;
.super Ljava/lang/Object;
.source "Utils.java"
.method public static a(Ljava/io/InputStream;[B)I
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-static {p0, p1, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/InputStream;[BII)I
move-result v0
return v0
.end method
.method public static a(Ljava/io/InputStream;[BII)I
.registers 7
const/4 v1, 0x0
:goto_1
if-lez p3, :cond_e
invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
move-result v0
const/4 v2, -0x1
if-eq v0, v2, :cond_e
add-int/2addr v1, v0
add-int/2addr p2, v0
sub-int/2addr p3, v0
goto :goto_1
:cond_e
return v1
.end method
.method public static a([BI)I
.registers 8
const/4 v3, 0x0
array-length v4, p0
add-int/lit8 v5, p1, 0x4
invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I
move-result v0
const/4 v2, 0x0
move v1, p1
:goto_a
if-ge v1, v0, :cond_17
aget-byte v4, p0, v1
and-int/lit16 v4, v4, 0xff
shl-int/2addr v4, v2
or-int/2addr v3, v4
add-int/lit8 v2, v2, 0x8
add-int/lit8 v1, v1, 0x1
goto :goto_a
:cond_17
return v3
.end method
.method public static a(Ljava/io/InputStream;Z)Ljava/lang/String;
.registers 7
if-eqz p1, :cond_22
new-instance v1, Ljava/io/InputStreamReader;
const-string/jumbo v4, "UTF-8"
invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v4
invoke-direct {v1, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
:goto_e
new-instance v0, Ljava/io/BufferedReader;
invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
:goto_18
invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_28
invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_18
:cond_22
new-instance v1, Ljava/io/InputStreamReader;
invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
goto :goto_e
:cond_28
invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
return-object v4
.end method
.method public static a(Ljava/lang/String;IC)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
if-nez p0, :cond_11
const/4 v2, 0x0
:goto_8
move v1, v2
:goto_9
if-ge v1, p1, :cond_16
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_9
:cond_11
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
goto :goto_8
:cond_16
if-eqz p0, :cond_1b
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_1b
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method public static a(Landroid/database/Cursor;)V
.registers 2
if-eqz p0, :cond_5
:try_start_2
invoke-interface {p0}, Landroid/database/Cursor;->close()V
:try_end_5
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method public static a(Ljava/io/InputStream;)V
.registers 2
if-eqz p0, :cond_5
:try_start_2
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
:try_end_5
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.registers 5
const/16 v2, 0x4000
new-array v0, v2, [B
:goto_4
invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
move-result v1
const/4 v2, -0x1
if-eq v1, v2, :cond_10
const/4 v2, 0x0
invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
goto :goto_4
:cond_10
return-void
.end method
.method public static a(Ljava/io/OutputStream;)V
.registers 2
if-eqz p0, :cond_5
:try_start_2
invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
:try_end_5
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method public static a(Ljava/io/RandomAccessFile;)V
.registers 2
if-eqz p0, :cond_5
:try_start_2
invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
:try_end_5
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method public static a(Ljava/io/Reader;)V
.registers 2
if-eqz p0, :cond_5
:try_start_2
invoke-virtual {p0}, Ljava/io/Reader;->close()V
:try_end_5
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method public static a(Ljava/io/Writer;)V
.registers 2
if-eqz p0, :cond_5
:try_start_2
invoke-virtual {p0}, Ljava/io/Writer;->close()V
:try_end_5
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
if-nez p0, :cond_d
move v0, v3
:goto_5
if-nez p1, :cond_f
move v1, v3
:goto_8
xor-int v4, v0, v1
if-eqz v4, :cond_11
:goto_c
return v2
:cond_d
move v0, v2
goto :goto_5
:cond_f
move v1, v2
goto :goto_8
:cond_11
if-eqz v0, :cond_17
if-eqz v1, :cond_17
move v2, v3
goto :goto_c
:cond_17
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
goto :goto_c
.end method
.method public static a(Ljava/lang/String;)Z
.registers 3
if-eqz p0, :cond_18
const-string/jumbo v0, ""
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_18
const-string/jumbo v0, ""
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
:cond_18
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method public static a(I)[B
.registers 4
const/4 v2, 0x4
new-array v1, v2, [B
const/4 v0, 0x0
:goto_4
array-length v2, v1
if-ge v0, v2, :cond_f
int-to-byte v2, p0
aput-byte v2, v1, v0
shr-int/lit8 p0, p0, 0x8
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_f
return-object v1
.end method
.method public static b(Ljava/lang/String;)Z
.registers 2
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public static c(Ljava/lang/String;)Z
.registers 2
if-eqz p0, :cond_b
const-string/jumbo v0, ""
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d
:cond_b
const/4 v0, 0x1
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public static d(Ljava/lang/String;)Z
.registers 2
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/bg;->c(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public static e(Ljava/lang/String;)Z
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5
const/4 v1, 0x1
:goto_4
return v1
:catch_5
move-exception v0
const/4 v1, 0x0
goto :goto_4
.end method