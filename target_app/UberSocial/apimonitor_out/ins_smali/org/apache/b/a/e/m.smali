.class  Lorg/apache/b/a/e/m;
.super Lorg/apache/b/a/e/a;
.source "SourceFile"
.implements Lorg/apache/b/a/e/b;
.field private a:Lorg/apache/b/a/e/a/e;
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 5
invoke-direct {p0}, Lorg/apache/b/a/e/a;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/b/a/e/m;->a:Lorg/apache/b/a/e/a/e;
invoke-static {}, Lorg/apache/b/a/e/a/g;->b()Lorg/apache/b/a/e/a/g;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/b/a/e/a/g;->a()Lorg/apache/b/a/e/a/f;
move-result-object v0
const-string v1, "attachment"
const-string v2, ".bin"
invoke-interface {v0, v1, v2}, Lorg/apache/b/a/e/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/b/a/e/a/e;
move-result-object v0
iput-object v0, p0, Lorg/apache/b/a/e/m;->a:Lorg/apache/b/a/e/a/e;
iget-object v0, p0, Lorg/apache/b/a/e/m;->a:Lorg/apache/b/a/e/a/e;
invoke-interface {v0}, Lorg/apache/b/a/e/a/e;->b()Ljava/io/OutputStream;
move-result-object v0
invoke-static {p1, v0}, Lorg/apache/b/a/a/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
return-void
.end method
.method public a(Ljava/io/OutputStream;I)V
.registers 4
invoke-virtual {p0}, Lorg/apache/b/a/e/m;->c()Ljava/io/InputStream;
move-result-object v0
invoke-static {v0, p1}, Lorg/apache/b/a/a/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
return-void
.end method
.method public b()V
.registers 2
iget-object v0, p0, Lorg/apache/b/a/e/m;->a:Lorg/apache/b/a/e/a/e;
if-eqz v0, :cond_c
iget-object v0, p0, Lorg/apache/b/a/e/m;->a:Lorg/apache/b/a/e/a/e;
invoke-interface {v0}, Lorg/apache/b/a/e/a/e;->d()V
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/b/a/e/m;->a:Lorg/apache/b/a/e/a/e;
:cond_c
return-void
.end method
.method public c()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/e/m;->a:Lorg/apache/b/a/e/a/e;
invoke-interface {v0}, Lorg/apache/b/a/e/a/e;->a()Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method