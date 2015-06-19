.class public final Lcom/squareup/okhttp/internal/a/h;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/okhttp/internal/a/p;
.field private final a:Lcom/squareup/okhttp/internal/a/c;
.field private final b:Ljava/util/zip/Inflater;
.field private c:I
.field private d:Z
.method constructor <init>(Lcom/squareup/okhttp/internal/a/c;Ljava/util/zip/Inflater;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "source == null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
if-nez p2, :cond_17
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "inflater == null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
iput-object p1, p0, Lcom/squareup/okhttp/internal/a/h;->a:Lcom/squareup/okhttp/internal/a/c;
iput-object p2, p0, Lcom/squareup/okhttp/internal/a/h;->b:Ljava/util/zip/Inflater;
return-void
.end method
.method public constructor <init>(Lcom/squareup/okhttp/internal/a/p;Ljava/util/zip/Inflater;)V
.registers 4
invoke-static {p1}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/p;)Lcom/squareup/okhttp/internal/a/c;
move-result-object v0
invoke-direct {p0, v0, p2}, Lcom/squareup/okhttp/internal/a/h;-><init>(Lcom/squareup/okhttp/internal/a/c;Ljava/util/zip/Inflater;)V
return-void
.end method
.method private b()V
.registers 5
iget v0, p0, Lcom/squareup/okhttp/internal/a/h;->c:I
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget v0, p0, Lcom/squareup/okhttp/internal/a/h;->c:I
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/h;->b:Ljava/util/zip/Inflater;
invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I
move-result v1
sub-int/2addr v0, v1
iget v1, p0, Lcom/squareup/okhttp/internal/a/h;->c:I
sub-int/2addr v1, v0
iput v1, p0, Lcom/squareup/okhttp/internal/a/h;->c:I
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/h;->a:Lcom/squareup/okhttp/internal/a/c;
int-to-long v2, v0
invoke-interface {v1, v2, v3}, Lcom/squareup/okhttp/internal/a/c;->b(J)V
goto :goto_4
.end method
.method public final a()Z
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/h;->b:Ljava/util/zip/Inflater;
invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z
move-result v1
if-nez v1, :cond_a
:goto_9
return v0
:cond_a
invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/h;->b()V
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/h;->b:Ljava/util/zip/Inflater;
invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I
move-result v1
if-eqz v1, :cond_1d
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "?"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1d
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/h;->a:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v1}, Lcom/squareup/okhttp/internal/a/c;->f()Z
move-result v1
if-eqz v1, :cond_27
const/4 v0, 0x1
goto :goto_9
:cond_27
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/h;->a:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v1}, Lcom/squareup/okhttp/internal/a/c;->b()Lcom/squareup/okhttp/internal/a/i;
move-result-object v1
iget-object v1, v1, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;
iget v2, v1, Lcom/squareup/okhttp/internal/a/m;->c:I
iget v3, v1, Lcom/squareup/okhttp/internal/a/m;->b:I
sub-int/2addr v2, v3
iput v2, p0, Lcom/squareup/okhttp/internal/a/h;->c:I
iget-object v2, p0, Lcom/squareup/okhttp/internal/a/h;->b:Ljava/util/zip/Inflater;
iget-object v3, v1, Lcom/squareup/okhttp/internal/a/m;->a:[B
iget v1, v1, Lcom/squareup/okhttp/internal/a/m;->b:I
iget v4, p0, Lcom/squareup/okhttp/internal/a/h;->c:I
invoke-virtual {v2, v3, v1, v4}, Ljava/util/zip/Inflater;->setInput([BII)V
goto :goto_9
.end method
.method public final b(Lcom/squareup/okhttp/internal/a/i;J)J
.registers 10
const-wide/16 v0, 0x0
cmp-long v2, p2, v0
if-gez v2, :cond_1b
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "byteCount < 0: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
iget-boolean v2, p0, Lcom/squareup/okhttp/internal/a/h;->d:Z
if-eqz v2, :cond_27
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "closed"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_27
cmp-long v2, p2, v0
if-nez v2, :cond_2c
:goto_2b
return-wide v0
:cond_2c
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/h;->a()Z
move-result v0
const/4 v1, 0x1
:try_start_31
invoke-virtual {p1, v1}, Lcom/squareup/okhttp/internal/a/i;->d(I)Lcom/squareup/okhttp/internal/a/m;
move-result-object v1
iget-object v2, p0, Lcom/squareup/okhttp/internal/a/h;->b:Ljava/util/zip/Inflater;
iget-object v3, v1, Lcom/squareup/okhttp/internal/a/m;->a:[B
iget v4, v1, Lcom/squareup/okhttp/internal/a/m;->c:I
iget v5, v1, Lcom/squareup/okhttp/internal/a/m;->c:I
rsub-int v5, v5, 0x800
invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->inflate([BII)I
move-result v2
if-lez v2, :cond_52
iget v0, v1, Lcom/squareup/okhttp/internal/a/m;->c:I
add-int/2addr v0, v2
iput v0, v1, Lcom/squareup/okhttp/internal/a/m;->c:I
iget-wide v0, p1, Lcom/squareup/okhttp/internal/a/i;->b:J
int-to-long v3, v2
add-long/2addr v0, v3
iput-wide v0, p1, Lcom/squareup/okhttp/internal/a/i;->b:J
int-to-long v0, v2
goto :goto_2b
:cond_52
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/h;->b:Ljava/util/zip/Inflater;
invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z
move-result v1
if-nez v1, :cond_62
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/h;->b:Ljava/util/zip/Inflater;
invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsDictionary()Z
move-result v1
if-eqz v1, :cond_68
:cond_62
invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/h;->b()V
const-wide/16 v0, -0x1
goto :goto_2b
:cond_68
if-eqz v0, :cond_2c
new-instance v0, Ljava/io/EOFException;
const-string v1, "source exhausted prematurely"
invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V
throw v0
:catch_72
:try_end_72
.catch Ljava/util/zip/DataFormatException; {:try_start_31 .. :try_end_72} :catch_72
move-exception v0
new-instance v1, Ljava/io/IOException;
invoke-direct {v1}, Ljava/io/IOException;-><init>()V
invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
throw v1
.end method
.method public final close()V
.registers 2
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a/h;->d:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/h;->b:Ljava/util/zip/Inflater;
invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/squareup/okhttp/internal/a/h;->d:Z
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/h;->a:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->close()V
goto :goto_4
.end method