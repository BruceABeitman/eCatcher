.class final Lcom/facebook/g/m;
.super Ljava/lang/Object;
.source "FileLruCache.java"
.method static a(Ljava/io/InputStream;)Lorg/json/JSONObject;
.registers 8
const/4 v0, 0x0
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/io/InputStream;->read()I
move-result v2
if-eqz v2, :cond_a
move-object v0, v1
:goto_9
return-object v0
:cond_a
move v2, v0
move v3, v0
:goto_c
const/4 v4, 0x3
if-ge v2, v4, :cond_29
invoke-virtual {p0}, Ljava/io/InputStream;->read()I
move-result v4
const/4 v5, -0x1
if-ne v4, v5, :cond_21
sget-object v0, Lcom/facebook/ak;->d:Lcom/facebook/ak;
sget-object v2, Lcom/facebook/g/b;->a:Ljava/lang/String;
const-string v3, "readHeader: stream.read returned -1 while reading header size"
invoke-static {v0, v2, v3}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v1
goto :goto_9
:cond_21
shl-int/lit8 v3, v3, 0x8
and-int/lit16 v4, v4, 0xff
add-int/2addr v3, v4
add-int/lit8 v2, v2, 0x1
goto :goto_c
:cond_29
new-array v2, v3, [B
:goto_2b
if-ge v0, v3, :cond_5d
sub-int v4, v3, v0
invoke-virtual {p0, v2, v0, v4}, Ljava/io/InputStream;->read([BII)I
move-result v4
if-gtz v4, :cond_5b
sget-object v2, Lcom/facebook/ak;->d:Lcom/facebook/ak;
sget-object v4, Lcom/facebook/g/b;->a:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "readHeader: stream.read stopped at "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, " when expected "
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v4, v0}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v1
goto :goto_9
:cond_5b
add-int/2addr v0, v4
goto :goto_2b
:cond_5d
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
new-instance v2, Lorg/json/JSONTokener;
invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V
:try_start_67
invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;
move-result-object v0
instance-of v2, v0, Lorg/json/JSONObject;
if-nez v2, :cond_90
sget-object v2, Lcom/facebook/ak;->d:Lcom/facebook/ak;
sget-object v3, Lcom/facebook/g/b;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "readHeader: expected JSONObject, got "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v3, v0}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v1
goto/16 :goto_9
:cond_90
check-cast v0, Lorg/json/JSONObject;
:try_end_92
.catch Lorg/json/JSONException; {:try_start_67 .. :try_end_92} :catch_94
goto/16 :goto_9
:catch_94
move-exception v0
new-instance v1, Ljava/io/IOException;
invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method static a(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
.registers 4
invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V
array-length v1, v0
shr-int/lit8 v1, v1, 0x10
and-int/lit16 v1, v1, 0xff
invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V
array-length v1, v0
shr-int/lit8 v1, v1, 0x8
and-int/lit16 v1, v1, 0xff
invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V
array-length v1, v0
shr-int/lit8 v1, v1, 0x0
and-int/lit16 v1, v1, 0xff
invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V
invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
return-void
.end method