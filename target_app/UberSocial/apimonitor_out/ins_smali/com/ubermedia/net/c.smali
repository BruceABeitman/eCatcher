.class public final Lcom/ubermedia/net/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.field private static final d:J = -0x78d96ac49142488cL
.field private static final e:Ljava/lang/String; = "image/jpeg"
.field private static final f:Ljava/lang/String; = "image/gif"
.field private static final g:Ljava/lang/String; = "image/png"
.field private static final h:Ljava/lang/String; = "application/octet-stream"
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Ljava/io/File;
.method public constructor <init>(Ljava/lang/String;D)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/ubermedia/net/c;->c:Ljava/io/File;
iput-object p1, p0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;I)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/ubermedia/net/c;->c:Ljava/io/File;
iput-object p1, p0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;J)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/ubermedia/net/c;->c:Ljava/io/File;
iput-object p1, p0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/ubermedia/net/c;->c:Ljava/io/File;
iput-object p1, p0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/ubermedia/net/c;->c:Ljava/io/File;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/ubermedia/net/c;->c:Ljava/io/File;
iput-object p1, p0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Z)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/ubermedia/net/c;->c:Ljava/io/File;
iput-object p1, p0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
return-void
.end method
.method static a(Ljava/util/List;)Z
.registers 4
const/4 v1, 0x0
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_5
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ubermedia/net/c;
invoke-virtual {v0}, Lcom/ubermedia/net/c;->d()Z
move-result v0
if-eqz v0, :cond_5
const/4 v0, 0x1
:goto_18
return v0
:cond_19
move v0, v1
goto :goto_18
.end method
.method public static a([Lcom/ubermedia/net/c;)Z
.registers 5
const/4 v0, 0x0
if-nez p0, :cond_4
:cond_3
:goto_3
return v0
:cond_4
array-length v2, p0
move v1, v0
:goto_6
if-ge v1, v2, :cond_3
aget-object v3, p0, v1
invoke-virtual {v3}, Lcom/ubermedia/net/c;->d()Z
move-result v3
if-eqz v3, :cond_12
const/4 v0, 0x1
goto :goto_3
:cond_12
add-int/lit8 v1, v1, 0x1
goto :goto_6
.end method
.method public static a(Ljava/lang/String;I)[Lcom/ubermedia/net/c;
.registers 3
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/ubermedia/net/c;->a(Ljava/lang/String;Ljava/lang/String;)[Lcom/ubermedia/net/c;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;ILjava/lang/String;I)[Lcom/ubermedia/net/c;
.registers 6
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, p2, v1}, Lcom/ubermedia/net/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/ubermedia/net/c;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)[Lcom/ubermedia/net/c;
.registers 5
const/4 v0, 0x1
new-array v0, v0, [Lcom/ubermedia/net/c;
const/4 v1, 0x0
new-instance v2, Lcom/ubermedia/net/c;
invoke-direct {v2, p0, p1}, Lcom/ubermedia/net/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v2, v0, v1
return-object v0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/ubermedia/net/c;
.registers 7
const/4 v0, 0x2
new-array v0, v0, [Lcom/ubermedia/net/c;
const/4 v1, 0x0
new-instance v2, Lcom/ubermedia/net/c;
invoke-direct {v2, p0, p1}, Lcom/ubermedia/net/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v2, v0, v1
const/4 v1, 0x1
new-instance v2, Lcom/ubermedia/net/c;
invoke-direct {v2, p2, p3}, Lcom/ubermedia/net/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v2, v0, v1
return-object v0
.end method
.method public static b([Lcom/ubermedia/net/c;)Ljava/lang/String;
.registers 6
if-nez p0, :cond_5
const-string v0, ""
:goto_4
return-object v0
:cond_5
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
:goto_b
array-length v2, p0
if-ge v0, v2, :cond_64
aget-object v2, p0, v0
invoke-virtual {v2}, Lcom/ubermedia/net/c;->d()Z
move-result v2
if-eqz v2, :cond_39
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "parameter ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
aget-object v0, p0, v0
iget-object v0, v0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "]should be text"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_39
if-eqz v0, :cond_40
const-string v2, "&"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_40
:try_start_40
aget-object v2, p0, v0
iget-object v2, v2, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
const-string v3, "UTF-8"
invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "="
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
aget-object v3, p0, v0
iget-object v3, v3, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
const-string v4, "UTF-8"
invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:try_end_61
.catch Ljava/io/UnsupportedEncodingException; {:try_start_40 .. :try_end_61} :catch_69
:goto_61
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_64
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
:catch_69
move-exception v2
goto :goto_61
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
return-object v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
return-object v0
.end method
.method public c()Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/ubermedia/net/c;->c:Ljava/io/File;
return-object v0
.end method
.method public compareTo(Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/ubermedia/net/c;
iget-object v0, p0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
iget-object v1, p1, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_14
iget-object v0, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
iget-object v1, p1, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
:cond_14
return v0
.end method
.method public d()Z
.registers 2
iget-object v0, p0, Lcom/ubermedia/net/c;->c:Ljava/io/File;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public e()Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Lcom/ubermedia/net/c;->d()Z
move-result v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "not a file"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iget-object v0, p0, Lcom/ubermedia/net/c;->c:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
const-string v1, "."
invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v1
const/4 v2, -0x1
if-ne v2, v1, :cond_20
const-string v0, "application/octet-stream"
:goto_1f
return-object v0
:cond_20
const-string v1, "."
invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v1
add-int/lit8 v1, v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
const/4 v2, 0x3
if-ne v1, v2, :cond_5b
const-string v1, "gif"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_42
const-string v0, "image/gif"
goto :goto_1f
:cond_42
const-string v1, "png"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4d
const-string v0, "image/png"
goto :goto_1f
:cond_4d
const-string v1, "jpg"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_58
const-string v0, "image/jpeg"
goto :goto_1f
:cond_58
const-string v0, "application/octet-stream"
goto :goto_1f
:cond_5b
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
const/4 v2, 0x4
if-ne v1, v2, :cond_70
const-string v1, "jpeg"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6d
const-string v0, "image/jpeg"
goto :goto_1f
:cond_6d
const-string v0, "application/octet-stream"
goto :goto_1f
:cond_70
const-string v0, "application/octet-stream"
goto :goto_1f
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
instance-of v2, p1, Lcom/ubermedia/net/c;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/ubermedia/net/c;
iget-object v2, p0, Lcom/ubermedia/net/c;->c:Ljava/io/File;
if-eqz v2, :cond_1d
iget-object v2, p0, Lcom/ubermedia/net/c;->c:Ljava/io/File;
iget-object v3, p1, Lcom/ubermedia/net/c;->c:Ljava/io/File;
invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_21
:cond_1b
move v0, v1
goto :goto_4
:cond_1d
iget-object v2, p1, Lcom/ubermedia/net/c;->c:Ljava/io/File;
if-nez v2, :cond_1b
:cond_21
iget-object v2, p0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
iget-object v3, p1, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
if-eqz v2, :cond_3d
iget-object v2, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:goto_3b
move v0, v1
goto :goto_4
:cond_3d
iget-object v2, p1, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
if-eqz v2, :cond_4
goto :goto_3b
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_13
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/ubermedia/net/c;->c:Ljava/io/File;
if-eqz v2, :cond_20
iget-object v1, p0, Lcom/ubermedia/net/c;->c:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->hashCode()I
move-result v1
:cond_20
add-int/2addr v0, v1
return v0
:cond_22
move v0, v1
goto :goto_13
.end method
.method public toString()Ljava/lang/String;
.registers 4
const/16 v2, 0x27
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "PostParameter{name=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/ubermedia/net/c;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", value=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/ubermedia/net/c;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", file="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/ubermedia/net/c;->c:Ljava/io/File;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method