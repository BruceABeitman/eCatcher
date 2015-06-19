.class public final Ltwitter4j/internal/http/HttpParameter;
.super Ljava/lang/Object;
.source "HttpParameter.java"
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;
.field private static final GIF:Ljava/lang/String; = "image/gif"
.field private static final JPEG:Ljava/lang/String; = "image/jpeg"
.field private static final OCTET:Ljava/lang/String; = "application/octet-stream"
.field private static final PNG:Ljava/lang/String; = "image/png"
.field private static final serialVersionUID:J = -0x78d96ac49142488cL
.field private file:Ljava/io/File;
.field private fileBody:Ljava/io/InputStream;
.field private name:Ljava/lang/String;
.field private value:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;D)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;
iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;I)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;
iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;J)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;
iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;
iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
iput-object p2, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;
iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
iput-object p2, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;
iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
new-instance v0, Ljava/io/File;
invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
iput-object p3, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Z)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;
iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
return-void
.end method
.method static containsFile(Ljava/util/List;)Z
.registers 5
const/4 v0, 0x0
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_5
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_18
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ltwitter4j/internal/http/HttpParameter;
invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z
move-result v3
if-eqz v3, :cond_5
const/4 v0, 0x1
:cond_18
return v0
.end method
.method public static containsFile([Ltwitter4j/internal/http/HttpParameter;)Z
.registers 7
const/4 v1, 0x0
if-nez p0, :cond_5
const/4 v5, 0x0
:goto_4
return v5
:cond_5
move-object v0, p0
array-length v3, v0
const/4 v2, 0x0
:goto_8
if-ge v2, v3, :cond_13
aget-object v4, v0, v2
invoke-virtual {v4}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z
move-result v5
if-eqz v5, :cond_15
const/4 v1, 0x1
:cond_13
move v5, v1
goto :goto_4
:cond_15
add-int/lit8 v2, v2, 0x1
goto :goto_8
.end method
.method public static encode(Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/4 v1, 0x0
:try_start_1
const-string v4, "UTF-8"
invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_6
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_62
move-result-object v1
:goto_7
new-instance v0, Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v4
invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v3, 0x0
:goto_11
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v4
if-ge v3, v4, :cond_5d
invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C
move-result v2
const/16 v4, 0x2a
if-ne v2, v4, :cond_27
const-string v4, "%2A"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_24
add-int/lit8 v3, v3, 0x1
goto :goto_11
:cond_27
const/16 v4, 0x2b
if-ne v2, v4, :cond_31
const-string v4, "%20"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_24
:cond_31
const/16 v4, 0x25
if-ne v2, v4, :cond_59
add-int/lit8 v4, v3, 0x1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v5
if-ge v4, v5, :cond_59
add-int/lit8 v4, v3, 0x1
invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x37
if-ne v4, v5, :cond_59
add-int/lit8 v4, v3, 0x2
invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x45
if-ne v4, v5, :cond_59
const/16 v4, 0x7e
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v3, v3, 0x2
goto :goto_24
:cond_59
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_24
:cond_5d
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
:catch_62
move-exception v4
goto :goto_7
.end method
.method public static encodeParameters([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;
.registers 6
if-nez p0, :cond_5
const-string v2, ""
:goto_4
return-object v2
:cond_5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const/4 v1, 0x0
:goto_b
array-length v2, p0
if-ge v1, v2, :cond_60
aget-object v2, p0, v1
invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z
move-result v2
if-eqz v2, :cond_39
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "parameter ["
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
aget-object v4, p0, v1
iget-object v4, v4, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "]should be text"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_39
if-eqz v1, :cond_40
const-string v2, "&"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_40
aget-object v2, p0, v1
iget-object v2, v2, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
invoke-static {v2}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
aget-object v3, p0, v1
iget-object v3, v3, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
invoke-static {v3}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_b
:cond_60
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_4
.end method
.method public static getParameterArray(Ljava/lang/String;I)[Ltwitter4j/internal/http/HttpParameter;
.registers 3
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;
move-result-object v0
return-object v0
.end method
.method public static getParameterArray(Ljava/lang/String;ILjava/lang/String;I)[Ltwitter4j/internal/http/HttpParameter;
.registers 6
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, p2, v1}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;
move-result-object v0
return-object v0
.end method
.method public static getParameterArray(Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;
.registers 5
const/4 v0, 0x1
new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;
const/4 v1, 0x0
new-instance v2, Ltwitter4j/internal/http/HttpParameter;
invoke-direct {v2, p0, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v2, v0, v1
return-object v0
.end method
.method public static getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;
.registers 7
const/4 v0, 0x2
new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;
const/4 v1, 0x0
new-instance v2, Ltwitter4j/internal/http/HttpParameter;
invoke-direct {v2, p0, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v2, v0, v1
const/4 v1, 0x1
new-instance v2, Ltwitter4j/internal/http/HttpParameter;
invoke-direct {v2, p2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v2, v0, v1
return-object v0
.end method
.method public compareTo(Ljava/lang/Object;)I
.registers 6
move-object v1, p1
check-cast v1, Ltwitter4j/internal/http/HttpParameter;
iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
iget-object v3, v1, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_15
iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
iget-object v3, v1, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
:cond_15
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
instance-of v3, p1, Ltwitter4j/internal/http/HttpParameter;
if-nez v3, :cond_b
move v1, v2
goto :goto_4
:cond_b
move-object v0, p1
check-cast v0, Ltwitter4j/internal/http/HttpParameter;
iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
if-eqz v3, :cond_1e
iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
iget-object v4, v0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_22
:cond_1c
move v1, v2
goto :goto_4
:cond_1e
iget-object v3, v0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
if-nez v3, :cond_1c
:cond_22
iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;
if-eqz v3, :cond_32
iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;
iget-object v4, v0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;
invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_36
:cond_30
move v1, v2
goto :goto_4
:cond_32
iget-object v3, v0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;
if-nez v3, :cond_30
:cond_36
iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_42
move v1, v2
goto :goto_4
:cond_42
iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
if-eqz v3, :cond_52
iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
:goto_50
move v1, v2
goto :goto_4
:cond_52
iget-object v3, v0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
if-eqz v3, :cond_4
goto :goto_50
.end method
.method public getContentType()Ljava/lang/String;
.registers 6
invoke-virtual {p0}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z
move-result v3
if-nez v3, :cond_e
new-instance v3, Ljava/lang/IllegalStateException;
const-string v4, "not a file"
invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_e
iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
const-string v3, "."
invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v2
const/4 v3, -0x1
if-ne v3, v2, :cond_20
const-string v0, "application/octet-stream"
:goto_1f
return-object v0
:cond_20
const-string v3, "."
invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v3
add-int/lit8 v3, v3, 0x1
invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v3
const/4 v4, 0x3
if-ne v3, v4, :cond_5b
const-string v3, "gif"
invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_42
const-string v0, "image/gif"
goto :goto_1f
:cond_42
const-string v3, "png"
invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_4d
const-string v0, "image/png"
goto :goto_1f
:cond_4d
const-string v3, "jpg"
invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_58
const-string v0, "image/jpeg"
goto :goto_1f
:cond_58
const-string v0, "application/octet-stream"
goto :goto_1f
:cond_5b
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v3
const/4 v4, 0x4
if-ne v3, v4, :cond_70
const-string v3, "jpeg"
invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_6d
const-string v0, "image/jpeg"
goto :goto_1f
:cond_6d
const-string v0, "application/octet-stream"
goto :goto_1f
:cond_70
const-string v0, "application/octet-stream"
goto :goto_1f
.end method
.method public getFile()Ljava/io/File;
.registers 2
iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
return-object v0
.end method
.method public getFileBody()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
return-object v0
.end method
.method public getValue()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
return-object v0
.end method
.method public hasFileBody()Z
.registers 2
iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public hashCode()I
.registers 5
const/4 v2, 0x0
iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v0
mul-int/lit8 v3, v0, 0x1f
iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
if-eqz v1, :cond_32
iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_13
add-int v0, v3, v1
mul-int/lit8 v3, v0, 0x1f
iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
if-eqz v1, :cond_34
iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->hashCode()I
move-result v1
:goto_21
add-int v0, v3, v1
mul-int/lit8 v1, v0, 0x1f
iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;
if-eqz v3, :cond_2f
iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;
invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
move-result v2
:cond_2f
add-int v0, v1, v2
return v0
:cond_32
move v1, v2
goto :goto_13
:cond_34
move v1, v2
goto :goto_21
.end method
.method public isFile()Z
.registers 2
iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public toString()Ljava/lang/String;
.registers 4
const/16 v2, 0x27
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "PostParameter{name=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", value=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", file="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", fileBody="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method