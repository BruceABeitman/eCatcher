.class final Lcom/squareup/okhttp/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.field private final b:Lcom/squareup/okhttp/internal/http/e;
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.field private final e:Lcom/squareup/okhttp/internal/http/e;
.field private final f:Lcom/squareup/okhttp/i;
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/z;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->a()Lcom/squareup/okhttp/internal/http/u;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->c()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/e;->a:Ljava/lang/String;
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->a()Lcom/squareup/okhttp/internal/http/u;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->e()Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->j()Ljava/util/Set;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/e;->a(Ljava/util/Set;)Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/e;->b:Lcom/squareup/okhttp/internal/http/e;
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->a()Lcom/squareup/okhttp/internal/http/u;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->d()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/e;->c:Ljava/lang/String;
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/e;->d:Ljava/lang/String;
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->g()Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/e;->e:Lcom/squareup/okhttp/internal/http/e;
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->f()Lcom/squareup/okhttp/i;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/e;->f:Lcom/squareup/okhttp/i;
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 8
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
:try_start_4
invoke-static {p1}, Lcom/squareup/okhttp/internal/a/j;->a(Ljava/io/InputStream;)Lcom/squareup/okhttp/internal/a/p;
move-result-object v1
invoke-static {v1}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/p;)Lcom/squareup/okhttp/internal/a/c;
move-result-object v2
invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/squareup/okhttp/e;->a:Ljava/lang/String;
invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/squareup/okhttp/e;->c:Ljava/lang/String;
new-instance v3, Lcom/squareup/okhttp/internal/http/f;
invoke-direct {v3}, Lcom/squareup/okhttp/internal/http/f;-><init>()V
invoke-static {v2}, Lcom/squareup/okhttp/b;->a(Lcom/squareup/okhttp/internal/a/c;)I
move-result v4
move v1, v0
:goto_22
if-ge v1, v4, :cond_2e
invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Lcom/squareup/okhttp/internal/http/f;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
add-int/lit8 v1, v1, 0x1
goto :goto_22
:cond_2e
invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/f;->a()Lcom/squareup/okhttp/internal/http/e;
move-result-object v1
iput-object v1, p0, Lcom/squareup/okhttp/e;->b:Lcom/squareup/okhttp/internal/http/e;
invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/squareup/okhttp/e;->d:Ljava/lang/String;
new-instance v1, Lcom/squareup/okhttp/internal/http/f;
invoke-direct {v1}, Lcom/squareup/okhttp/internal/http/f;-><init>()V
invoke-static {v2}, Lcom/squareup/okhttp/b;->a(Lcom/squareup/okhttp/internal/a/c;)I
move-result v3
:goto_43
if-ge v0, v3, :cond_4f
invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Lcom/squareup/okhttp/internal/http/f;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
add-int/lit8 v0, v0, 0x1
goto :goto_43
:cond_4f
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/f;->a()Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/e;->e:Lcom/squareup/okhttp/internal/http/e;
invoke-direct {p0}, Lcom/squareup/okhttp/e;->a()Z
move-result v0
if-eqz v0, :cond_9b
invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_85
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "expected \"\" but was \""
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "\""
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:try_end_80
.catchall {:try_start_4 .. :try_end_80} :catchall_80
:catchall_80
move-exception v0
invoke-virtual {p1}, Ljava/io/InputStream;->close()V
throw v0
:try_start_85
:cond_85
invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;
move-result-object v0
invoke-static {v2}, Lcom/squareup/okhttp/e;->a(Lcom/squareup/okhttp/internal/a/c;)Ljava/util/List;
move-result-object v1
invoke-static {v2}, Lcom/squareup/okhttp/e;->a(Lcom/squareup/okhttp/internal/a/c;)Ljava/util/List;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/i;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/squareup/okhttp/i;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/e;->f:Lcom/squareup/okhttp/i;
:try_end_97
.catchall {:try_start_85 .. :try_end_97} :catchall_80
:goto_97
invoke-virtual {p1}, Ljava/io/InputStream;->close()V
return-void
:cond_9b
const/4 v0, 0x0
:try_start_9c
iput-object v0, p0, Lcom/squareup/okhttp/e;->f:Lcom/squareup/okhttp/i;
:try_end_9e
.catchall {:try_start_9c .. :try_end_9e} :catchall_80
goto :goto_97
.end method
.method private static a(Lcom/squareup/okhttp/internal/a/c;)Ljava/util/List;
.registers 7
invoke-static {p0}, Lcom/squareup/okhttp/b;->a(Lcom/squareup/okhttp/internal/a/c;)I
move-result v2
const/4 v0, -0x1
if-ne v2, v0, :cond_c
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
:cond_b
return-object v0
:cond_c
:try_start_c
const-string v0, "X.509"
invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
move-result-object v3
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V
const/4 v1, 0x0
:goto_18
if-ge v1, v2, :cond_b
invoke-interface {p0}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/squareup/okhttp/internal/a/d;->b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;
move-result-object v4
invoke-virtual {v4}, Lcom/squareup/okhttp/internal/a/d;->f()[B
move-result-object v4
new-instance v5, Ljava/io/ByteArrayInputStream;
invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
move-result-object v4
invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_32
.catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_32} :catch_35
add-int/lit8 v1, v1, 0x1
goto :goto_18
:catch_35
move-exception v0
new-instance v1, Ljava/io/IOException;
invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method private static a(Ljava/io/Writer;Ljava/util/List;)V
.registers 6
:try_start_0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0xa
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v2
move v1, v0
:goto_24
if-ge v1, v2, :cond_5d
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/security/cert/Certificate;
invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/d;->a([B)Lcom/squareup/okhttp/internal/a/d;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/d;->b()Ljava/lang/String;
move-result-object v0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v3, 0xa
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
:try_end_4e
.catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_4e} :catch_52
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_24
:catch_52
move-exception v0
new-instance v1, Ljava/io/IOException;
invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_5d
return-void
.end method
.method private a()Z
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/e;->a:Ljava/lang/String;
const-string v1, "https://"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public final a(Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/internal/h;)Lcom/squareup/okhttp/internal/http/z;
.registers 7
iget-object v0, p0, Lcom/squareup/okhttp/e;->e:Lcom/squareup/okhttp/internal/http/e;
const-string v1, "Content-Type"
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/e;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/squareup/okhttp/e;->e:Lcom/squareup/okhttp/internal/http/e;
const-string v2, "Content-Length"
invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/http/e;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/squareup/okhttp/internal/http/ab;
invoke-direct {v2}, Lcom/squareup/okhttp/internal/http/ab;-><init>()V
invoke-virtual {v2, p1}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/u;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v2
iget-object v3, p0, Lcom/squareup/okhttp/e;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/http/ab;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v2
iget-object v3, p0, Lcom/squareup/okhttp/e;->e:Lcom/squareup/okhttp/internal/http/e;
invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v2
new-instance v3, Lcom/squareup/okhttp/d;
invoke-direct {v3, p2, v0, v1}, Lcom/squareup/okhttp/d;-><init>(Lcom/squareup/okhttp/internal/h;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/aa;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
iget-object v1, p0, Lcom/squareup/okhttp/e;->f:Lcom/squareup/okhttp/i;
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/i;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ab;->a()Lcom/squareup/okhttp/internal/http/z;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/squareup/okhttp/internal/e;)V
.registers 8
const/4 v1, 0x0
const/16 v5, 0xa
invoke-virtual {p1, v1}, Lcom/squareup/okhttp/internal/e;->a(I)Ljava/io/OutputStream;
move-result-object v0
new-instance v2, Ljava/io/BufferedWriter;
new-instance v3, Ljava/io/OutputStreamWriter;
sget-object v4, Lcom/squareup/okhttp/internal/o;->e:Ljava/nio/charset/Charset;
invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/squareup/okhttp/e;->a:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/squareup/okhttp/e;->c:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/squareup/okhttp/e;->b:Lcom/squareup/okhttp/internal/http/e;
invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/e;->a()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
move v0, v1
:goto_5e
iget-object v3, p0, Lcom/squareup/okhttp/e;->b:Lcom/squareup/okhttp/internal/http/e;
invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/e;->a()I
move-result v3
if-ge v0, v3, :cond_93
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget-object v4, p0, Lcom/squareup/okhttp/e;->b:Lcom/squareup/okhttp/internal/http/e;
invoke-virtual {v4, v0}, Lcom/squareup/okhttp/internal/http/e;->a(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ": "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/squareup/okhttp/e;->b:Lcom/squareup/okhttp/internal/http/e;
invoke-virtual {v4, v0}, Lcom/squareup/okhttp/internal/http/e;->b(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_5e
:cond_93
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/squareup/okhttp/e;->d:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/squareup/okhttp/e;->e:Lcom/squareup/okhttp/internal/http/e;
invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/e;->a()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
:goto_c7
iget-object v0, p0, Lcom/squareup/okhttp/e;->e:Lcom/squareup/okhttp/internal/http/e;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/e;->a()I
move-result v0
if-ge v1, v0, :cond_fc
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/squareup/okhttp/e;->e:Lcom/squareup/okhttp/internal/http/e;
invoke-virtual {v3, v1}, Lcom/squareup/okhttp/internal/http/e;->a(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, ": "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v3, p0, Lcom/squareup/okhttp/e;->e:Lcom/squareup/okhttp/internal/http/e;
invoke-virtual {v3, v1}, Lcom/squareup/okhttp/internal/http/e;->b(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
add-int/lit8 v1, v1, 0x1
goto :goto_c7
:cond_fc
invoke-direct {p0}, Lcom/squareup/okhttp/e;->a()Z
move-result v0
if-eqz v0, :cond_131
invoke-virtual {v2, v5}, Ljava/io/Writer;->write(I)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/squareup/okhttp/e;->f:Lcom/squareup/okhttp/i;
invoke-virtual {v1}, Lcom/squareup/okhttp/i;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
iget-object v0, p0, Lcom/squareup/okhttp/e;->f:Lcom/squareup/okhttp/i;
invoke-virtual {v0}, Lcom/squareup/okhttp/i;->b()Ljava/util/List;
move-result-object v0
invoke-static {v2, v0}, Lcom/squareup/okhttp/e;->a(Ljava/io/Writer;Ljava/util/List;)V
iget-object v0, p0, Lcom/squareup/okhttp/e;->f:Lcom/squareup/okhttp/i;
invoke-virtual {v0}, Lcom/squareup/okhttp/i;->d()Ljava/util/List;
move-result-object v0
invoke-static {v2, v0}, Lcom/squareup/okhttp/e;->a(Ljava/io/Writer;Ljava/util/List;)V
:cond_131
invoke-virtual {v2}, Ljava/io/Writer;->close()V
return-void
.end method
.method public final a(Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/internal/http/z;)Z
.registers 5
iget-object v0, p0, Lcom/squareup/okhttp/e;->a:Ljava/lang/String;
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/squareup/okhttp/e;->c:Ljava/lang/String;
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/squareup/okhttp/e;->b:Lcom/squareup/okhttp/internal/http/e;
invoke-virtual {p2, v0, p1}, Lcom/squareup/okhttp/internal/http/z;->a(Lcom/squareup/okhttp/internal/http/e;Lcom/squareup/okhttp/internal/http/u;)Z
move-result v0
if-eqz v0, :cond_22
const/4 v0, 0x1
:goto_21
return v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method