.class final Lcom/facebook/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"
.method static a(Ljava/io/InputStream;)Lorg/json/JSONObject;
.registers 7
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
if-ge v2, v4, :cond_27
invoke-virtual {p0}, Ljava/io/InputStream;->read()I
move-result v4
const/4 v5, -0x1
if-ne v4, v5, :cond_1f
sget-object v0, Lcom/facebook/LoggingBehavior;->d:Lcom/facebook/LoggingBehavior;
sget-object v0, Lcom/facebook/internal/c;->a:Ljava/lang/String;
invoke-static {}, Lcom/facebook/internal/v;->a()V
move-object v0, v1
goto :goto_9
:cond_1f
shl-int/lit8 v3, v3, 0x8
and-int/lit16 v4, v4, 0xff
add-int/2addr v3, v4
add-int/lit8 v2, v2, 0x1
goto :goto_c
:cond_27
new-array v2, v3, [B
:goto_29
if-ge v0, v3, :cond_56
sub-int v4, v3, v0
invoke-virtual {p0, v2, v0, v4}, Ljava/io/InputStream;->read([BII)I
move-result v4
if-gtz v4, :cond_54
sget-object v2, Lcom/facebook/LoggingBehavior;->d:Lcom/facebook/LoggingBehavior;
sget-object v2, Lcom/facebook/internal/c;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string v4, "readHeader: stream.read stopped at "
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " when expected "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/facebook/internal/v;->a()V
move-object v0, v1
goto :goto_9
:cond_54
add-int/2addr v0, v4
goto :goto_29
:cond_56
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
new-instance v2, Lorg/json/JSONTokener;
invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V
:try_start_60
invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;
move-result-object v0
instance-of v2, v0, Lorg/json/JSONObject;
if-nez v2, :cond_83
sget-object v2, Lcom/facebook/LoggingBehavior;->d:Lcom/facebook/LoggingBehavior;
sget-object v2, Lcom/facebook/internal/c;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "readHeader: expected JSONObject, got "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/facebook/internal/v;->a()V
move-object v0, v1
goto :goto_9
:cond_83
check-cast v0, Lorg/json/JSONObject;
:try_end_85
.catch Lorg/json/JSONException; {:try_start_60 .. :try_end_85} :catch_86
goto :goto_9
:catch_86
move-exception v0
new-instance v1, Ljava/io/IOException;
invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
.end method