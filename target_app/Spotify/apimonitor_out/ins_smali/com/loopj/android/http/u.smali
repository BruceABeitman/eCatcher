.class final Lcom/loopj/android/http/u;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/http/HttpEntity;
.field private static final a:[B
.field private static final b:[B
.field private static final c:[C
.field private final d:Ljava/lang/String;
.field private final e:[B
.field private final f:[B
.field private g:Z
.field private final h:Ljava/util/List;
.field private final i:Ljava/io/ByteArrayOutputStream;
.field private final j:Lcom/loopj/android/http/s;
.field private k:I
.field private l:I
.method static constructor <clinit>()V
.registers 1
const-string v0, "\r\n"
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
sput-object v0, Lcom/loopj/android/http/u;->a:[B
const-string v0, "Content-Transfer-Encoding: binary\r\n"
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
sput-object v0, Lcom/loopj/android/http/u;->b:[B
const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
sput-object v0, Lcom/loopj/android/http/u;->c:[C
return-void
.end method
.method public constructor <init>(Lcom/loopj/android/http/s;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/loopj/android/http/u;->h:Ljava/util/List;
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
iput-object v0, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
new-instance v2, Ljava/util/Random;
invoke-direct {v2}, Ljava/util/Random;-><init>()V
const/4 v0, 0x0
:goto_1c
const/16 v3, 0x1e
if-ge v0, v3, :cond_31
sget-object v3, Lcom/loopj/android/http/u;->c:[C
sget-object v4, Lcom/loopj/android/http/u;->c:[C
array-length v4, v4
invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I
move-result v4
aget-char v3, v3, v4
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_1c
:cond_31
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/loopj/android/http/u;->d:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "--"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/loopj/android/http/u;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
iput-object v0, p0, Lcom/loopj/android/http/u;->e:[B
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "--"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/loopj/android/http/u;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "--\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
iput-object v0, p0, Lcom/loopj/android/http/u;->f:[B
iput-object p1, p0, Lcom/loopj/android/http/u;->j:Lcom/loopj/android/http/s;
return-void
.end method
.method private a(I)V
.registers 5
iget v0, p0, Lcom/loopj/android/http/u;->k:I
add-int/2addr v0, p1
iput v0, p0, Lcom/loopj/android/http/u;->k:I
iget-object v0, p0, Lcom/loopj/android/http/u;->j:Lcom/loopj/android/http/s;
iget v1, p0, Lcom/loopj/android/http/u;->k:I
iget v2, p0, Lcom/loopj/android/http/u;->l:I
invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/s;->a(II)V
return-void
.end method
.method static synthetic a()[B
.registers 1
sget-object v0, Lcom/loopj/android/http/u;->b:[B
return-object v0
.end method
.method static synthetic a(Lcom/loopj/android/http/u;)[B
.registers 2
iget-object v0, p0, Lcom/loopj/android/http/u;->e:[B
return-object v0
.end method
.method static synthetic a(Ljava/lang/String;)[B
.registers 2
invoke-static {p0}, Lcom/loopj/android/http/u;->c(Ljava/lang/String;)[B
move-result-object v0
return-object v0
.end method
.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)[B
.registers 3
invoke-static {p0, p1}, Lcom/loopj/android/http/u;->b(Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v0
return-object v0
.end method
.method private static b(Ljava/lang/String;)Ljava/lang/String;
.registers 1
if-nez p0, :cond_4
const-string p0, "application/octet-stream"
:cond_4
return-object p0
.end method
.method static synthetic b()[B
.registers 1
sget-object v0, Lcom/loopj/android/http/u;->a:[B
return-object v0
.end method
.method private static b(Ljava/lang/String;Ljava/lang/String;)[B
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Content-Disposition: form-data; name=\""
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\"; filename=\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\"\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
return-object v0
.end method
.method private static c(Ljava/lang/String;)[B
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Content-Type: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Lcom/loopj/android/http/u;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.registers 12
iget-object v6, p0, Lcom/loopj/android/http/u;->h:Ljava/util/List;
new-instance v0, Lcom/loopj/android/http/v;
invoke-static {p3}, Lcom/loopj/android/http/u;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/loopj/android/http/v;-><init>(Lcom/loopj/android/http/u;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
.registers 9
iget-object v0, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
iget-object v1, p0, Lcom/loopj/android/http/u;->e:[B
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
invoke-static {p1, p2}, Lcom/loopj/android/http/u;->b(Ljava/lang/String;Ljava/lang/String;)[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
invoke-static {p4}, Lcom/loopj/android/http/u;->c(Ljava/lang/String;)[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
sget-object v1, Lcom/loopj/android/http/u;->b:[B
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
sget-object v1, Lcom/loopj/android/http/u;->a:[B
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
const/16 v0, 0x1000
new-array v0, v0, [B
:goto_2b
invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I
move-result v1
const/4 v2, -0x1
if-eq v1, v2, :cond_39
iget-object v2, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
const/4 v3, 0x0
invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
goto :goto_2b
:cond_39
iget-object v0, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
sget-object v1, Lcom/loopj/android/http/u;->a:[B
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
iget-object v0, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
invoke-static {v0}, Lcom/loopj/android/http/b;->a(Ljava/io/OutputStream;)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
if-nez p3, :cond_4
const-string p3, "UTF-8"
:cond_4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "text/plain; charset="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:try_start_13
iget-object v1, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
iget-object v2, p0, Lcom/loopj/android/http/u;->e:[B
invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v1, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Content-Disposition: form-data; name=\""
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\"\r\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v1, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
invoke-static {v0}, Lcom/loopj/android/http/u;->c(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
sget-object v1, Lcom/loopj/android/http/u;->a:[B
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
sget-object v1, Lcom/loopj/android/http/u;->a:[B
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
:goto_58
:try_end_58
.catch Ljava/io/IOException; {:try_start_13 .. :try_end_58} :catch_59
return-void
:catch_59
move-exception v0
const-string v1, "SimpleMultipartEntity"
const-string v2, "addPart ByteArrayOutputStream exception"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_58
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/loopj/android/http/u;->g:Z
return-void
.end method
.method public final consumeContent()V
.registers 3
invoke-virtual {p0}, Lcom/loopj/android/http/u;->isStreaming()Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Streaming entity does not implement #consumeContent()"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
return-void
.end method
.method public final getContent()Ljava/io/InputStream;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "getContent() is not supported. Use writeTo() instead."
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final getContentEncoding()Lorg/apache/http/Header;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final getContentLength()J
.registers 9
iget-object v0, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I
move-result v0
int-to-long v0, v0
iget-object v2, p0, Lcom/loopj/android/http/u;->h:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move-wide v1, v0
:goto_e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_37
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/loopj/android/http/v;
iget-object v4, v0, Lcom/loopj/android/http/v;->a:Ljava/io/File;
invoke-virtual {v4}, Ljava/io/File;->length()J
move-result-wide v4
sget-object v6, Lcom/loopj/android/http/u;->a:[B
array-length v6, v6
int-to-long v6, v6
add-long/2addr v4, v6
iget-object v0, v0, Lcom/loopj/android/http/v;->b:[B
array-length v0, v0
int-to-long v6, v0
add-long/2addr v4, v6
const-wide/16 v6, 0x0
cmp-long v0, v4, v6
if-gez v0, :cond_33
const-wide/16 v0, -0x1
:goto_32
return-wide v0
:cond_33
add-long v0, v1, v4
move-wide v1, v0
goto :goto_e
:cond_37
iget-object v0, p0, Lcom/loopj/android/http/u;->f:[B
array-length v0, v0
int-to-long v3, v0
add-long v0, v1, v3
goto :goto_32
.end method
.method public final getContentType()Lorg/apache/http/Header;
.registers 5
new-instance v0, Lorg/apache/http/message/BasicHeader;
const-string v1, "Content-Type"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "multipart/form-data; boundary="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/loopj/android/http/u;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final isChunked()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final isRepeatable()Z
.registers 2
iget-boolean v0, p0, Lcom/loopj/android/http/u;->g:Z
return v0
.end method
.method public final isStreaming()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeTo(Ljava/io/OutputStream;)V
.registers 9
const/4 v6, 0x0
iput v6, p0, Lcom/loopj/android/http/u;->k:I
invoke-virtual {p0}, Lcom/loopj/android/http/u;->getContentLength()J
move-result-wide v0
long-to-int v0, v0
iput v0, p0, Lcom/loopj/android/http/u;->l:I
iget-object v0, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
iget-object v0, p0, Lcom/loopj/android/http/u;->i:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I
move-result v0
invoke-direct {p0, v0}, Lcom/loopj/android/http/u;->a(I)V
iget-object v0, p0, Lcom/loopj/android/http/u;->h:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_66
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/loopj/android/http/v;
iget-object v2, v0, Lcom/loopj/android/http/v;->b:[B
invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V
iget-object v2, v0, Lcom/loopj/android/http/v;->c:Lcom/loopj/android/http/u;
iget-object v3, v0, Lcom/loopj/android/http/v;->b:[B
array-length v3, v3
invoke-direct {v2, v3}, Lcom/loopj/android/http/u;->a(I)V
new-instance v2, Ljava/io/FileInputStream;
iget-object v3, v0, Lcom/loopj/android/http/v;->a:Ljava/io/File;
invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
const/16 v3, 0x1000
new-array v3, v3, [B
:goto_42
invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I
move-result v4
const/4 v5, -0x1
if-eq v4, v5, :cond_52
invoke-virtual {p1, v3, v6, v4}, Ljava/io/OutputStream;->write([BII)V
iget-object v5, v0, Lcom/loopj/android/http/v;->c:Lcom/loopj/android/http/u;
invoke-direct {v5, v4}, Lcom/loopj/android/http/u;->a(I)V
goto :goto_42
:cond_52
sget-object v3, Lcom/loopj/android/http/u;->a:[B
invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V
iget-object v0, v0, Lcom/loopj/android/http/v;->c:Lcom/loopj/android/http/u;
sget-object v3, Lcom/loopj/android/http/u;->a:[B
array-length v3, v3
invoke-direct {v0, v3}, Lcom/loopj/android/http/u;->a(I)V
invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
invoke-static {v2}, Lcom/loopj/android/http/b;->a(Ljava/io/InputStream;)V
goto :goto_1e
:cond_66
iget-object v0, p0, Lcom/loopj/android/http/u;->f:[B
invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
iget-object v0, p0, Lcom/loopj/android/http/u;->f:[B
array-length v0, v0
invoke-direct {p0, v0}, Lcom/loopj/android/http/u;->a(I)V
return-void
.end method