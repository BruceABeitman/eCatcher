.class final Lcom/facebook/internal/FileLruCache$StreamHeader;
.super Ljava/lang/Object;
.source "FileLruCache.java"
.field private static final HEADER_VERSION:I
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static readHeader(Ljava/io/InputStream;)Lorg/json/JSONObject;
.registers 18
invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I
move-result v12
if-eqz v12, :cond_8
const/4 v4, 0x0
:goto_7
return-object v4
:cond_8
const/4 v6, 0x0
const/4 v8, 0x0
:goto_a
const/4 v13, 0x3
if-ge v8, v13, :cond_27
invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I
move-result v1
const/4 v13, -0x1
if-ne v1, v13, :cond_1f
sget-object v13, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;
sget-object v14, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;
const-string v15, "readHeader: stream.read returned -1 while reading header size"
invoke-static {v13, v14, v15}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
const/4 v4, 0x0
goto :goto_7
:cond_1f
shl-int/lit8 v6, v6, 0x8
and-int/lit16 v13, v1, 0xff
add-int/2addr v6, v13
add-int/lit8 v8, v8, 0x1
goto :goto_a
:cond_27
new-array v5, v6, [B
const/4 v2, 0x0
:goto_2a
array-length v13, v5
if-ge v2, v13, :cond_63
array-length v13, v5
sub-int/2addr v13, v2
move-object/from16 v0, p0
invoke-virtual {v0, v5, v2, v13}, Ljava/io/InputStream;->read([BII)I
move-result v10
const/4 v13, 0x1
if-ge v10, v13, :cond_61
sget-object v13, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;
sget-object v14, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "readHeader: stream.read stopped at "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
const-string v16, " when expected "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
array-length v0, v5
move/from16 v16, v0
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-static {v13, v14, v15}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
const/4 v4, 0x0
goto :goto_7
:cond_61
add-int/2addr v2, v10
goto :goto_2a
:cond_63
new-instance v7, Ljava/lang/String;
invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V
const/4 v4, 0x0
new-instance v11, Lorg/json/JSONTokener;
invoke-direct {v11, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V
:try_start_6e
invoke-virtual {v11}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;
move-result-object v9
instance-of v13, v9, Lorg/json/JSONObject;
if-nez v13, :cond_9b
sget-object v13, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;
sget-object v14, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;
new-instance v15, Ljava/lang/StringBuilder;
invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "readHeader: expected JSONObject, got "
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-static {v13, v14, v15}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
const/4 v4, 0x0
goto/16 :goto_7
:cond_9b
move-object v0, v9
check-cast v0, Lorg/json/JSONObject;
move-object v4, v0
:try_end_9f
.catch Lorg/json/JSONException; {:try_start_6e .. :try_end_9f} :catch_a1
goto/16 :goto_7
:catch_a1
move-exception v3
new-instance v13, Ljava/io/IOException;
invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;
move-result-object v14
invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v13
.end method
.method static writeHeader(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
.registers 5
invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v0
const/4 v2, 0x0
invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V
array-length v2, v0
shr-int/lit8 v2, v2, 0x10
and-int/lit16 v2, v2, 0xff
invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V
array-length v2, v0
shr-int/lit8 v2, v2, 0x8
and-int/lit16 v2, v2, 0xff
invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V
array-length v2, v0
shr-int/lit8 v2, v2, 0x0
and-int/lit16 v2, v2, 0xff
invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V
invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
return-void
.end method