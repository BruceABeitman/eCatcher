.class final Lcom/squareup/okhttp/internal/a/l$1;
.super Ljava/io/InputStream;
.source "SourceFile"
.field final synthetic a:Lcom/squareup/okhttp/internal/a/l;
.method constructor <init>(Lcom/squareup/okhttp/internal/a/l;)V
.registers 2
iput-object p1, p0, Lcom/squareup/okhttp/internal/a/l$1;->a:Lcom/squareup/okhttp/internal/a/l;
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
return-void
.end method
.method private a()V
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l$1;->a:Lcom/squareup/okhttp/internal/a/l;
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/l;->a(Lcom/squareup/okhttp/internal/a/l;)Z
move-result v0
if-eqz v0, :cond_10
new-instance v0, Ljava/io/IOException;
const-string v1, "closed"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
return-void
.end method
.method public final available()I
.registers 5
invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/l$1;->a()V
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l$1;->a:Lcom/squareup/okhttp/internal/a/l;
iget-object v0, v0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
iget-wide v0, v0, Lcom/squareup/okhttp/internal/a/i;->b:J
const-wide/32 v2, 0x7fffffff
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
long-to-int v0, v0
return v0
.end method
.method public final close()V
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l$1;->a:Lcom/squareup/okhttp/internal/a/l;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/l;->close()V
return-void
.end method
.method public final read()I
.registers 5
invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/l$1;->a()V
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l$1;->a:Lcom/squareup/okhttp/internal/a/l;
iget-object v0, v0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
iget-wide v0, v0, Lcom/squareup/okhttp/internal/a/i;->b:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_25
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l$1;->a:Lcom/squareup/okhttp/internal/a/l;
iget-object v0, v0, Lcom/squareup/okhttp/internal/a/l;->b:Lcom/squareup/okhttp/internal/a/p;
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/l$1;->a:Lcom/squareup/okhttp/internal/a/l;
iget-object v1, v1, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
const-wide/16 v2, 0x800
invoke-interface {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/a/p;->b(Lcom/squareup/okhttp/internal/a/i;J)J
move-result-wide v0
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-nez v0, :cond_25
const/4 v0, -0x1
:goto_24
return v0
:cond_25
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l$1;->a:Lcom/squareup/okhttp/internal/a/l;
iget-object v0, v0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->g()B
move-result v0
and-int/lit16 v0, v0, 0xff
goto :goto_24
.end method
.method public final read([BII)I
.registers 10
invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/l$1;->a()V
array-length v0, p1
int-to-long v0, v0
int-to-long v2, p2
int-to-long v4, p3
invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a/q;->a(JJJ)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l$1;->a:Lcom/squareup/okhttp/internal/a/l;
iget-object v0, v0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
iget-wide v0, v0, Lcom/squareup/okhttp/internal/a/i;->b:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_2c
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l$1;->a:Lcom/squareup/okhttp/internal/a/l;
iget-object v0, v0, Lcom/squareup/okhttp/internal/a/l;->b:Lcom/squareup/okhttp/internal/a/p;
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/l$1;->a:Lcom/squareup/okhttp/internal/a/l;
iget-object v1, v1, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
const-wide/16 v2, 0x800
invoke-interface {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/a/p;->b(Lcom/squareup/okhttp/internal/a/i;J)J
move-result-wide v0
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-nez v0, :cond_2c
const/4 v0, -0x1
:goto_2b
return v0
:cond_2c
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l$1;->a:Lcom/squareup/okhttp/internal/a/l;
iget-object v0, v0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/a/i;->b([BII)I
move-result v0
goto :goto_2b
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/l$1;->a:Lcom/squareup/okhttp/internal/a/l;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".inputStream()"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method