.class final Lcom/squareup/okhttp/internal/spdy/n;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Lcom/squareup/okhttp/internal/a/h;
.field private b:I
.field private final c:Lcom/squareup/okhttp/internal/a/c;
.method public constructor <init>(Lcom/squareup/okhttp/internal/a/c;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/squareup/okhttp/internal/spdy/n$1;
invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/internal/spdy/n$1;-><init>(Lcom/squareup/okhttp/internal/spdy/n;Lcom/squareup/okhttp/internal/a/c;)V
new-instance v1, Lcom/squareup/okhttp/internal/spdy/n$2;
invoke-direct {v1, p0}, Lcom/squareup/okhttp/internal/spdy/n$2;-><init>(Lcom/squareup/okhttp/internal/spdy/n;)V
new-instance v2, Lcom/squareup/okhttp/internal/a/h;
invoke-direct {v2, v0, v1}, Lcom/squareup/okhttp/internal/a/h;-><init>(Lcom/squareup/okhttp/internal/a/p;Ljava/util/zip/Inflater;)V
iput-object v2, p0, Lcom/squareup/okhttp/internal/spdy/n;->a:Lcom/squareup/okhttp/internal/a/h;
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->a:Lcom/squareup/okhttp/internal/a/h;
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/p;)Lcom/squareup/okhttp/internal/a/c;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:Lcom/squareup/okhttp/internal/a/c;
return-void
.end method
.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/n;)I
.registers 2
iget v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->b:I
return v0
.end method
.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/n;J)I
.registers 5
iget v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->b:I
int-to-long v0, v0
sub-long/2addr v0, p1
long-to-int v0, v0
iput v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->b:I
return v0
.end method
.method private b()Lcom/squareup/okhttp/internal/a/d;
.registers 5
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->j()I
move-result v0
iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:Lcom/squareup/okhttp/internal/a/c;
int-to-long v2, v0
invoke-interface {v1, v2, v3}, Lcom/squareup/okhttp/internal/a/c;->c(J)Lcom/squareup/okhttp/internal/a/d;
move-result-object v0
return-object v0
.end method
.method public final a(I)Ljava/util/List;
.registers 8
iget v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->b:I
add-int/2addr v0, p1
iput v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->b:I
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->j()I
move-result v1
if-gez v1, :cond_22
new-instance v0, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "numberOfPairs < 0: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_22
const/16 v0, 0x400
if-le v1, v0, :cond_3b
new-instance v0, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "numberOfPairs > 1024: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3b
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V
const/4 v0, 0x0
:goto_41
if-ge v0, v1, :cond_68
invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/n;->b()Lcom/squareup/okhttp/internal/a/d;
move-result-object v3
invoke-virtual {v3}, Lcom/squareup/okhttp/internal/a/d;->d()Lcom/squareup/okhttp/internal/a/d;
move-result-object v3
invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/n;->b()Lcom/squareup/okhttp/internal/a/d;
move-result-object v4
invoke-virtual {v3}, Lcom/squareup/okhttp/internal/a/d;->e()I
move-result v5
if-nez v5, :cond_5d
new-instance v0, Ljava/io/IOException;
const-string v1, "name.size == 0"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_5d
new-instance v5, Lcom/squareup/okhttp/internal/spdy/d;
invoke-direct {v5, v3, v4}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lcom/squareup/okhttp/internal/a/d;Lcom/squareup/okhttp/internal/a/d;)V
invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_41
:cond_68
iget v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->b:I
if-lez v0, :cond_8c
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->a:Lcom/squareup/okhttp/internal/a/h;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/h;->a()Z
iget v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->b:I
if-eqz v0, :cond_8c
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "compressedLimit > 0: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/squareup/okhttp/internal/spdy/n;->b:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_8c
return-object v2
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->close()V
return-void
.end method