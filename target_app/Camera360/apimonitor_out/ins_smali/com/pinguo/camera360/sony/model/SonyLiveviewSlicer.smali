.class public Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;
.super Ljava/lang/Object;
.source "SonyLiveviewSlicer.java"
.field private static final CONNECTION_TIMEOUT:I = 0x7d0
.field private mHttpConn:Ljava/net/HttpURLConnection;
.field private mInputStream:Ljava/io/InputStream;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static bytesToInt([BII)I
.registers 7
const/4 v1, 0x0
move v0, p1
:goto_2
add-int v2, p1, p2
if-lt v0, v2, :cond_7
return v1
:cond_7
shl-int/lit8 v2, v1, 0x8
aget-byte v3, p0, v0
and-int/lit16 v3, v3, 0xff
or-int v1, v2, v3
add-int/lit8 v0, v0, 0x1
goto :goto_2
.end method
.method private static readBytes(Ljava/io/InputStream;I)[B
.registers 10
const/4 v7, 0x0
new-instance v3, Ljava/io/ByteArrayOutputStream;
invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
const/16 v5, 0x400
new-array v0, v5, [B
:cond_a
array-length v5, v0
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I
move-result v6
sub-int v6, p1, v6
invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I
move-result v4
invoke-virtual {p0, v0, v7, v4}, Ljava/io/InputStream;->read([BII)I
move-result v1
if-gez v1, :cond_23
:goto_1b
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v2
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
return-object v2
:cond_23
invoke-virtual {v3, v0, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I
move-result v5
if-gt p1, v5, :cond_a
goto :goto_1b
.end method
.method public close()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mInputStream:Ljava/io/InputStream;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mInputStream:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
iput-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mInputStream:Ljava/io/InputStream;
:cond_c
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mHttpConn:Ljava/net/HttpURLConnection;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mHttpConn:Ljava/net/HttpURLConnection;
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
iput-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mHttpConn:Ljava/net/HttpURLConnection;
:cond_17
return-void
.end method
.method public nextPayload()Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer$Payload;
.registers 14
const/4 v8, 0x0
const/4 v12, 0x3
const/4 v11, 0x0
const/4 v10, 0x1
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mInputStream:Ljava/io/InputStream;
if-eqz v7, :cond_8d
const/16 v6, 0x8
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mInputStream:Ljava/io/InputStream;
invoke-static {v7, v6}, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->readBytes(Ljava/io/InputStream;I)[B
move-result-object v0
if-eqz v0, :cond_15
array-length v7, v0
if-eq v7, v6, :cond_1e
:cond_15
new-instance v7, Ljava/io/IOException;
const-string/jumbo v8, "Cannot read stream for common header."
invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v7
:cond_1e
aget-byte v7, v0, v11
const/4 v9, -0x1
if-eq v7, v9, :cond_2c
new-instance v7, Ljava/io/IOException;
const-string/jumbo v8, "Unexpected data format. (Start byte)"
invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v7
:cond_2c
aget-byte v7, v0, v10
if-eq v7, v10, :cond_39
new-instance v7, Ljava/io/IOException;
const-string/jumbo v8, "Unexpected data format. (Payload byte)"
invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v7
:cond_39
const/16 v6, 0x80
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mInputStream:Ljava/io/InputStream;
invoke-static {v7, v6}, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->readBytes(Ljava/io/InputStream;I)[B
move-result-object v5
if-eqz v5, :cond_46
array-length v7, v5
if-eq v7, v6, :cond_4f
:cond_46
new-instance v7, Ljava/io/IOException;
const-string/jumbo v8, "Cannot read stream for payload header."
invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v7
:cond_4f
aget-byte v7, v5, v11
const/16 v9, 0x24
if-ne v7, v9, :cond_68
aget-byte v7, v5, v10
const/16 v9, 0x35
if-ne v7, v9, :cond_68
const/4 v7, 0x2
aget-byte v7, v5, v7
const/16 v9, 0x68
if-ne v7, v9, :cond_68
aget-byte v7, v5, v12
const/16 v9, 0x79
if-eq v7, v9, :cond_71
:cond_68
new-instance v7, Ljava/io/IOException;
const-string/jumbo v8, "Unexpected data format. (Start code)"
invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v7
:cond_71
const/4 v7, 0x4
invoke-static {v5, v7, v12}, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->bytesToInt([BII)I
move-result v2
const/4 v7, 0x7
invoke-static {v5, v7, v10}, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->bytesToInt([BII)I
move-result v4
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mInputStream:Ljava/io/InputStream;
invoke-static {v7, v2}, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->readBytes(Ljava/io/InputStream;I)[B
move-result-object v1
iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mInputStream:Ljava/io/InputStream;
invoke-static {v7, v4}, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->readBytes(Ljava/io/InputStream;I)[B
move-result-object v3
new-instance v7, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer$Payload;
invoke-direct {v7, v1, v3, v8}, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer$Payload;-><init>([B[BLcom/pinguo/camera360/sony/model/SonyLiveviewSlicer$Payload;)V
:goto_8c
return-object v7
:cond_8d
move-object v7, v8
goto :goto_8c
.end method
.method public open(Ljava/lang/String;)V
.registers 6
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mInputStream:Ljava/io/InputStream;
if-nez v1, :cond_8
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mHttpConn:Ljava/net/HttpURLConnection;
if-eqz v1, :cond_11
:cond_8
new-instance v1, Ljava/lang/IllegalStateException;
const-string/jumbo v2, "Slicer is already open."
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_11
new-instance v0, Ljava/net/URL;
invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v1
check-cast v1, Ljava/net/HttpURLConnection;
iput-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mHttpConn:Ljava/net/HttpURLConnection;
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mHttpConn:Ljava/net/HttpURLConnection;
const-string/jumbo v2, "GET"
invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mHttpConn:Ljava/net/HttpURLConnection;
const/16 v2, 0x7d0
invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mHttpConn:Ljava/net/HttpURLConnection;
invoke-static {v1}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mHttpConn:Ljava/net/HttpURLConnection;
invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v1
const/16 v2, 0xc8
if-ne v1, v2, :cond_44
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mHttpConn:Ljava/net/HttpURLConnection;
invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mInputStream:Ljava/io/InputStream;
:cond_44
iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;->mInputStream:Ljava/io/InputStream;
if-nez v1, :cond_5e
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "open error: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_5e
return-void
.end method