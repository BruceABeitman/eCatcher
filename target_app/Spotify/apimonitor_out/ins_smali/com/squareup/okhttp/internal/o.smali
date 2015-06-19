.class public final Lcom/squareup/okhttp/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:[B
.field public static final b:[Ljava/lang/String;
.field public static final c:Ljava/io/InputStream;
.field public static final d:Ljava/nio/charset/Charset;
.field public static final e:Ljava/nio/charset/Charset;
.field public static final f:Ljava/util/List;
.field public static final g:Ljava/util/List;
.field public static final h:Ljava/util/List;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-array v0, v2, [B
sput-object v0, Lcom/squareup/okhttp/internal/o;->a:[B
new-array v0, v2, [Ljava/lang/String;
sput-object v0, Lcom/squareup/okhttp/internal/o;->b:[Ljava/lang/String;
new-instance v0, Ljava/io/ByteArrayInputStream;
sget-object v1, Lcom/squareup/okhttp/internal/o;->a:[B
invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
sput-object v0, Lcom/squareup/okhttp/internal/o;->c:Ljava/io/InputStream;
const-string v0, "US-ASCII"
invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
sput-object v0, Lcom/squareup/okhttp/internal/o;->d:Ljava/nio/charset/Charset;
const-string v0, "UTF-8"
invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
sput-object v0, Lcom/squareup/okhttp/internal/o;->e:Ljava/nio/charset/Charset;
const/4 v0, 0x3
new-array v0, v0, [Lcom/squareup/okhttp/Protocol;
sget-object v1, Lcom/squareup/okhttp/Protocol;->a:Lcom/squareup/okhttp/Protocol;
aput-object v1, v0, v2
sget-object v1, Lcom/squareup/okhttp/Protocol;->b:Lcom/squareup/okhttp/Protocol;
aput-object v1, v0, v3
sget-object v1, Lcom/squareup/okhttp/Protocol;->c:Lcom/squareup/okhttp/Protocol;
aput-object v1, v0, v4
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/o;->a(Ljava/util/List;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/squareup/okhttp/internal/o;->f:Ljava/util/List;
new-array v0, v4, [Lcom/squareup/okhttp/Protocol;
sget-object v1, Lcom/squareup/okhttp/Protocol;->b:Lcom/squareup/okhttp/Protocol;
aput-object v1, v0, v2
sget-object v1, Lcom/squareup/okhttp/Protocol;->c:Lcom/squareup/okhttp/Protocol;
aput-object v1, v0, v3
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/o;->a(Ljava/util/List;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/squareup/okhttp/internal/o;->g:Ljava/util/List;
new-array v0, v4, [Lcom/squareup/okhttp/Protocol;
sget-object v1, Lcom/squareup/okhttp/Protocol;->a:Lcom/squareup/okhttp/Protocol;
aput-object v1, v0, v2
sget-object v1, Lcom/squareup/okhttp/Protocol;->c:Lcom/squareup/okhttp/Protocol;
aput-object v1, v0, v3
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/o;->a(Ljava/util/List;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/squareup/okhttp/internal/o;->h:Ljava/util/List;
return-void
.end method
.method public static a(Ljava/lang/String;)I
.registers 2
const-string v0, "http"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b
const/16 v0, 0x50
:goto_a
return v0
:cond_b
const-string v0, "https"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
const/16 v0, 0x1bb
goto :goto_a
:cond_16
const/4 v0, -0x1
goto :goto_a
.end method
.method private static a(Ljava/lang/String;I)I
.registers 3
const/4 v0, -0x1
if-eq p1, v0, :cond_4
:goto_3
return p1
:cond_4
invoke-static {p0}, Lcom/squareup/okhttp/internal/o;->a(Ljava/lang/String;)I
move-result p1
goto :goto_3
.end method
.method public static a(Ljava/net/URI;)I
.registers 3
invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Ljava/net/URI;->getPort()I
move-result v1
invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public static a(Ljava/net/URL;)I
.registers 3
invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Ljava/net/URL;->getPort()I
move-result v1
invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public static a(Lcom/squareup/okhttp/internal/a/d;)Lcom/squareup/okhttp/Protocol;
.registers 6
if-nez p0, :cond_5
sget-object v0, Lcom/squareup/okhttp/Protocol;->c:Lcom/squareup/okhttp/Protocol;
:cond_4
return-object v0
:cond_5
invoke-static {}, Lcom/squareup/okhttp/Protocol;->values()[Lcom/squareup/okhttp/Protocol;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
move v1, v0
:goto_c
if-ge v1, v3, :cond_1c
aget-object v0, v2, v1
iget-object v4, v0, Lcom/squareup/okhttp/Protocol;->name:Lcom/squareup/okhttp/internal/a/d;
invoke-virtual {v4, p0}, Lcom/squareup/okhttp/internal/a/d;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_4
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_c
:cond_1c
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unexpected protocol: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/d;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static a(Ljava/util/List;)Ljava/util/List;
.registers 2
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static a([Ljava/lang/Object;)Ljava/util/List;
.registers 2
invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Object;
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static a(JJ)V
.registers 8
const-wide/16 v2, 0x0
or-long v0, v2, p2
cmp-long v0, v0, v2
if-ltz v0, :cond_12
cmp-long v0, v2, p0
if-gtz v0, :cond_12
sub-long v0, p0, v2
cmp-long v0, v0, p2
if-gez v0, :cond_18
:cond_12
new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V
throw v0
:cond_18
return-void
.end method
.method public static a(Ljava/io/Closeable;)V
.registers 2
if-eqz p0, :cond_5
:try_start_2
invoke-interface {p0}, Ljava/io/Closeable;->close()V
:goto_5
:try_end_5
.catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8
:cond_5
return-void
:catch_6
move-exception v0
throw v0
:catch_8
move-exception v0
goto :goto_5
.end method
.method public static a(Ljava/io/Closeable;Ljava/io/Closeable;)V
.registers 4
const/4 v0, 0x0
:try_start_1
invoke-interface {p0}, Ljava/io/Closeable;->close()V
:try_start_4
:goto_4
:try_end_4
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_2a
invoke-interface {p1}, Ljava/io/Closeable;->close()V
:try_end_7
.catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_a
:goto_7
:cond_7
if-nez v0, :cond_f
return-void
:catch_a
move-exception v1
if-nez v0, :cond_7
move-object v0, v1
goto :goto_7
:cond_f
instance-of v1, v0, Ljava/io/IOException;
if-eqz v1, :cond_16
check-cast v0, Ljava/io/IOException;
throw v0
:cond_16
instance-of v1, v0, Ljava/lang/RuntimeException;
if-eqz v1, :cond_1d
check-cast v0, Ljava/lang/RuntimeException;
throw v0
:cond_1d
instance-of v1, v0, Ljava/lang/Error;
if-eqz v1, :cond_24
check-cast v0, Ljava/lang/Error;
throw v0
:cond_24
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
:catch_2a
move-exception v0
goto :goto_4
.end method
.method public static a(Ljava/io/File;)V
.registers 6
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v1
if-nez v1, :cond_1b
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "not a readable directory: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
array-length v2, v1
const/4 v0, 0x0
:goto_1d
if-ge v0, v2, :cond_48
aget-object v3, v1, v0
invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z
move-result v4
if-eqz v4, :cond_2a
invoke-static {v3}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/File;)V
:cond_2a
invoke-virtual {v3}, Ljava/io/File;->delete()Z
move-result v4
if-nez v4, :cond_45
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "failed to delete file: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_45
add-int/lit8 v0, v0, 0x1
goto :goto_1d
:cond_48
return-void
.end method
.method public static a(Lcom/squareup/okhttp/internal/a/p;)Z
.registers 8
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
new-instance v2, Lcom/squareup/okhttp/internal/a/i;
invoke-direct {v2}, Lcom/squareup/okhttp/internal/a/i;-><init>()V
:goto_9
sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v4
sub-long/2addr v4, v0
invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v3
const-wide/16 v5, 0x64
cmp-long v3, v3, v5
if-gez v3, :cond_2c
const-wide/16 v3, 0x800
invoke-interface {p0, v2, v3, v4}, Lcom/squareup/okhttp/internal/a/p;->b(Lcom/squareup/okhttp/internal/a/i;J)J
move-result-wide v3
const-wide/16 v5, -0x1
cmp-long v3, v3, v5
if-nez v3, :cond_28
const/4 v0, 0x1
:goto_27
return v0
:cond_28
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/i;->p()V
goto :goto_9
:cond_2c
const/4 v0, 0x0
goto :goto_27
.end method
.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 3
if-eq p0, p1, :cond_a
if-eqz p0, :cond_c
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public static b(Ljava/lang/String;)Ljava/lang/String;
.registers 3
:try_start_0
const-string v0, "MD5"
invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v0
const-string v1, "UTF-8"
invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/d;->a([B)Lcom/squareup/okhttp/internal/a/d;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/d;->c()Ljava/lang/String;
:try_end_17
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_17} :catch_19
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_17} :catch_20
move-result-object v0
return-object v0
:catch_19
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
:catch_20
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
.end method
.method public static c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
.registers 2
new-instance v0, Lcom/squareup/okhttp/internal/o$1;
invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/o$1;-><init>(Ljava/lang/String;)V
return-object v0
.end method