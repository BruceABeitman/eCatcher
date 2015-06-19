.class public Lco/vine/android/network/MultipartEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "MultipartEntity.java"
.field public static final BOUNDARY:Ljava/lang/String; = "--vineaADFASDFADSFAFD"
.field public static final BOUNDARY_NAME:Ljava/lang/String; = "vineaADFASDFADSFAFD"
.field private static final BUFF_SIZE:I = 0x1000
.field public static final CRLF:Ljava/lang/String; = "\r\n"
.field public static final DASH_DASH:Ljava/lang/String; = "--"
.field private static final UTF8:Ljava/lang/String; = "UTF-8"
.field private mApproxStreamLength:I
.field private final mContext:Landroid/content/Context;
.field private final mEntities:Ljava/util/ArrayList;
.field private mLength:I
.field private final mListener:Lco/vine/android/network/ProgressListener;
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/network/ProgressListener;)V
.registers 6
invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V
iput-object p2, p0, Lco/vine/android/network/MultipartEntity;->mListener:Lco/vine/android/network/ProgressListener;
new-instance v0, Lorg/apache/http/message/BasicHeader;
const-string v1, "Content-Type"
const-string v2, "multipart/form-data; boundary=vineaADFASDFADSFAFD"
invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lco/vine/android/network/MultipartEntity;->contentType:Lorg/apache/http/Header;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/network/MultipartEntity;->mEntities:Ljava/util/ArrayList;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lco/vine/android/network/MultipartEntity;->mContext:Landroid/content/Context;
return-void
.end method
.method public addFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
.registers 10
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "--vineaADFASDFADSFAFD"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\r\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "Content-Disposition: form-data; name=\""
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\"; filename=\""
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\""
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\r\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "Content-Type: image/jpeg"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\r\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "Content-Transfer-Encoding: binary"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\r\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\r\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string v4, "UTF-8"
invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v2
const-string v3, "\r\n"
const-string v4, "UTF-8"
invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v1
iget-object v0, p0, Lco/vine/android/network/MultipartEntity;->mEntities:Ljava/util/ArrayList;
new-instance v3, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;
invoke-direct {v3, v2}, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;-><init>([B)V
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v3, Lco/vine/android/network/MultipartEntity$UriEntity;
iget-object v4, p0, Lco/vine/android/network/MultipartEntity;->mContext:Landroid/content/Context;
invoke-direct {v3, v4, p3}, Lco/vine/android/network/MultipartEntity$UriEntity;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v3, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;
invoke-direct {v3, v1}, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;-><init>([B)V
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget v3, p0, Lco/vine/android/network/MultipartEntity;->mApproxStreamLength:I
int-to-float v3, v3
iget-object v4, p0, Lco/vine/android/network/MultipartEntity;->mContext:Landroid/content/Context;
invoke-static {v4, p3}, Lco/vine/android/util/Util;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)F
move-result v4
const/high16 v5, 0x4480
mul-float/2addr v4, v5
array-length v5, v2
int-to-float v5, v5
add-float/2addr v4, v5
array-length v5, v1
int-to-float v5, v5
add-float/2addr v4, v5
add-float/2addr v3, v4
float-to-int v3, v3
iput v3, p0, Lco/vine/android/network/MultipartEntity;->mApproxStreamLength:I
return-void
.end method
.method public addString(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "--vineaADFASDFADSFAFD"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "Content-Disposition: form-data; name=\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v0
iget v1, p0, Lco/vine/android/network/MultipartEntity;->mApproxStreamLength:I
array-length v2, v0
add-int/2addr v1, v2
iput v1, p0, Lco/vine/android/network/MultipartEntity;->mApproxStreamLength:I
iget v1, p0, Lco/vine/android/network/MultipartEntity;->mLength:I
array-length v2, v0
add-int/2addr v1, v2
iput v1, p0, Lco/vine/android/network/MultipartEntity;->mLength:I
iget-object v1, p0, Lco/vine/android/network/MultipartEntity;->mEntities:Ljava/util/ArrayList;
new-instance v2, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;
invoke-direct {v2, v0}, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;-><init>([B)V
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public end()V
.registers 5
iget-object v0, p0, Lco/vine/android/network/MultipartEntity;->mEntities:Ljava/util/ArrayList;
new-instance v1, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;
const-string v2, "--vineaADFASDFADSFAFD--\r\n"
const-string v3, "UTF-8"
invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v2
invoke-direct {v1, v2}, Lco/vine/android/network/MultipartEntity$ByteArrayEntity;-><init>([B)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public getContent()Ljava/io/InputStream;
.registers 3
new-instance v0, Lco/vine/android/network/MultipartInputStream;
iget-object v1, p0, Lco/vine/android/network/MultipartEntity;->mEntities:Ljava/util/ArrayList;
invoke-direct {v0, v1}, Lco/vine/android/network/MultipartInputStream;-><init>(Ljava/util/ArrayList;)V
return-object v0
.end method
.method public getContentLength()J
.registers 3
iget v0, p0, Lco/vine/android/network/MultipartEntity;->mLength:I
int-to-long v0, v0
return-wide v0
.end method
.method public isRepeatable()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isStreaming()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 8
new-instance v2, Lco/vine/android/network/CountingOutputStream;
iget v3, p0, Lco/vine/android/network/MultipartEntity;->mApproxStreamLength:I
int-to-long v3, v3
iget-object v5, p0, Lco/vine/android/network/MultipartEntity;->mListener:Lco/vine/android/network/ProgressListener;
invoke-direct {v2, p1, v3, v4, v5}, Lco/vine/android/network/CountingOutputStream;-><init>(Ljava/io/OutputStream;JLco/vine/android/network/ProgressListener;)V
iget-object v3, p0, Lco/vine/android/network/MultipartEntity;->mEntities:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_10
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_20
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/network/MultipartEntity$Entity;
invoke-interface {v0, v2}, Lco/vine/android/network/MultipartEntity$Entity;->writeTo(Ljava/io/OutputStream;)V
goto :goto_10
:cond_20
return-void
.end method