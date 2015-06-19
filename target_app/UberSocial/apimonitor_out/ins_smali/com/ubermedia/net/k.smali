.class public Lcom/ubermedia/net/k;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final b:[C = null
.field private static final e:Ljava/lang/String; = "\r\n"
.field private static final f:Ljava/lang/String; = "--"
.field  a:Ljava/io/ByteArrayOutputStream;
.field private c:Ljava/lang/String;
.field private d:Ljava/net/HttpURLConnection;
.field private g:Z
.field private h:Ljava/io/File;
.field private i:[B
.field private j:Ljava/io/DataOutputStream;
.method static constructor <clinit>()V
.registers 1
const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
sput-object v0, Lcom/ubermedia/net/k;->b:[C
return-void
.end method
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
iput-object v0, p0, Lcom/ubermedia/net/k;->a:Ljava/io/ByteArrayOutputStream;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/ubermedia/net/k;->g:Z
iput-object p1, p0, Lcom/ubermedia/net/k;->d:Ljava/net/HttpURLConnection;
return-void
.end method
.method private e()V
.registers 3
iget-object v0, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
const-string v1, "--"
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
iget-object v0, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
iget-object v1, p0, Lcom/ubermedia/net/k;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
iget-object v0, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
return-void
.end method
.method private f()V
.registers 3
iget-object v0, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
return-void
.end method
.method public a()V
.registers 5
invoke-virtual {p0}, Lcom/ubermedia/net/k;->c()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ubermedia/net/k;->c:Ljava/lang/String;
iget-object v0, p0, Lcom/ubermedia/net/k;->d:Ljava/net/HttpURLConnection;
const-string v1, "Content-Type"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "multipart/form-data; boundary="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/ubermedia/net/k;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/ubermedia/net/k;->d:Ljava/net/HttpURLConnection;
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
new-instance v0, Ljava/io/DataOutputStream;
iget-object v1, p0, Lcom/ubermedia/net/k;->d:Ljava/net/HttpURLConnection;
invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
iput-object v0, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
return-void
.end method
.method public a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ubermedia/net/k;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 10
invoke-direct {p0}, Lcom/ubermedia/net/k;->e()V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Content-Type: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Content-Disposition: form-data; name="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; filename="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz p4, :cond_62
invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_36
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
iget-object v0, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
new-instance v0, Ljava/io/FileInputStream;
invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
const/16 v1, 0x800
new-array v1, v1, [B
:goto_54
invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_6a
iget-object v3, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
const/4 v4, 0x0
invoke-virtual {v3, v1, v4, v2}, Ljava/io/DataOutputStream;->write([BII)V
goto :goto_54
:cond_62
invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_36
:cond_6a
invoke-direct {p0}, Lcom/ubermedia/net/k;->f()V
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Lcom/ubermedia/net/k;->e()V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Content-Disposition: form-data; name=\""
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
iget-object v0, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
const-string v1, "Content-Type: text/plain\r\n"
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
iget-object v0, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
iget-object v0, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V
invoke-direct {p0}, Lcom/ubermedia/net/k;->f()V
return-void
.end method
.method public a([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-direct {p0}, Lcom/ubermedia/net/k;->e()V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Content-Type: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Content-Disposition: form-data; name=\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\"; filename=\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
iget-object v0, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
iget-object v0, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V
invoke-direct {p0}, Lcom/ubermedia/net/k;->f()V
return-void
.end method
.method public b()V
.registers 3
iget-object v0, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
const-string v1, "--"
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
iget-object v0, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
iget-object v1, p0, Lcom/ubermedia/net/k;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
iget-object v0, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
const-string v1, "--"
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
iget-object v0, p0, Lcom/ubermedia/net/k;->j:Ljava/io/DataOutputStream;
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
return-void
.end method
.method protected c()Ljava/lang/String;
.registers 7
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
new-instance v2, Ljava/util/Random;
invoke-direct {v2}, Ljava/util/Random;-><init>()V
const/16 v0, 0xb
invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I
move-result v0
add-int/lit8 v3, v0, 0x1e
const/4 v0, 0x0
:goto_13
if-ge v0, v3, :cond_26
sget-object v4, Lcom/ubermedia/net/k;->b:[C
sget-object v5, Lcom/ubermedia/net/k;->b:[C
array-length v5, v5
invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I
move-result v5
aget-char v4, v4, v5
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_13
:cond_26
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public d()V
.registers 3
iget-object v0, p0, Lcom/ubermedia/net/k;->a:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "Twitter"
invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method