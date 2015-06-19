.class public Lorg/scribe/utils/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getStreamContents(Ljava/io/InputStream;)Ljava/lang/String;
.registers 8
const-string v5, "Cannot get String from a null object"
invoke-static {p0, v5}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
const/high16 v5, 0x1
:try_start_7
new-array v0, v5, [C
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
new-instance v1, Ljava/io/InputStreamReader;
const-string v5, "UTF-8"
invoke-direct {v1, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
:cond_15
const/4 v5, 0x0
array-length v6, v0
invoke-virtual {v1, v0, v5, v6}, Ljava/io/Reader;->read([CII)I
move-result v4
if-lez v4, :cond_21
const/4 v5, 0x0
invoke-virtual {v3, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
:cond_21
if-gez v4, :cond_15
invoke-virtual {v1}, Ljava/io/Reader;->close()V
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_29
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_29} :catch_2b
move-result-object v5
return-object v5
:catch_2b
move-exception v2
new-instance v5, Ljava/lang/IllegalStateException;
const-string v6, "Error while reading response body"
invoke-direct {v5, v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v5
.end method