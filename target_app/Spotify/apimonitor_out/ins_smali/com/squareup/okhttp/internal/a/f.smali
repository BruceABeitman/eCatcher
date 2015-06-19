.class public final Lcom/squareup/okhttp/internal/a/f;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/okhttp/internal/a/o;
.field private final a:Lcom/squareup/okhttp/internal/a/b;
.field private final b:Ljava/util/zip/Deflater;
.field private c:Z
.method public constructor <init>(Lcom/squareup/okhttp/internal/a/o;Ljava/util/zip/Deflater;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/o;)Lcom/squareup/okhttp/internal/a/b;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/a/f;->a:Lcom/squareup/okhttp/internal/a/b;
iput-object p2, p0, Lcom/squareup/okhttp/internal/a/f;->b:Ljava/util/zip/Deflater;
return-void
.end method
.method private a(Z)V
.registers 9
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/f;->a:Lcom/squareup/okhttp/internal/a/b;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->b()Lcom/squareup/okhttp/internal/a/i;
move-result-object v1
:goto_6
:cond_6
const/4 v0, 0x1
invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/a/i;->d(I)Lcom/squareup/okhttp/internal/a/m;
move-result-object v2
if-eqz p1, :cond_2f
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/f;->b:Ljava/util/zip/Deflater;
iget-object v3, v2, Lcom/squareup/okhttp/internal/a/m;->a:[B
iget v4, v2, Lcom/squareup/okhttp/internal/a/m;->c:I
iget v5, v2, Lcom/squareup/okhttp/internal/a/m;->c:I
rsub-int v5, v5, 0x800
const/4 v6, 0x2
invoke-virtual {v0, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I
move-result v0
:goto_1c
if-lez v0, :cond_3e
iget v3, v2, Lcom/squareup/okhttp/internal/a/m;->c:I
add-int/2addr v3, v0
iput v3, v2, Lcom/squareup/okhttp/internal/a/m;->c:I
iget-wide v2, v1, Lcom/squareup/okhttp/internal/a/i;->b:J
int-to-long v4, v0
add-long/2addr v2, v4
iput-wide v2, v1, Lcom/squareup/okhttp/internal/a/i;->b:J
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/f;->a:Lcom/squareup/okhttp/internal/a/b;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->d()Lcom/squareup/okhttp/internal/a/b;
goto :goto_6
:cond_2f
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/f;->b:Ljava/util/zip/Deflater;
iget-object v3, v2, Lcom/squareup/okhttp/internal/a/m;->a:[B
iget v4, v2, Lcom/squareup/okhttp/internal/a/m;->c:I
iget v5, v2, Lcom/squareup/okhttp/internal/a/m;->c:I
rsub-int v5, v5, 0x800
invoke-virtual {v0, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I
move-result v0
goto :goto_1c
:cond_3e
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/f;->b:Ljava/util/zip/Deflater;
invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z
move-result v0
if-eqz v0, :cond_6
return-void
.end method
.method public final a()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/a/f;->a(Z)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/f;->a:Lcom/squareup/okhttp/internal/a/b;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
return-void
.end method
.method public final a(Lcom/squareup/okhttp/internal/a/i;J)V
.registers 12
const-wide/16 v2, 0x0
iget-wide v0, p1, Lcom/squareup/okhttp/internal/a/i;->b:J
move-wide v4, p2
invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a/q;->a(JJJ)V
:goto_8
cmp-long v0, p2, v2
if-lez v0, :cond_45
iget-object v0, p1, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;
iget v1, v0, Lcom/squareup/okhttp/internal/a/m;->c:I
iget v4, v0, Lcom/squareup/okhttp/internal/a/m;->b:I
sub-int/2addr v1, v4
int-to-long v4, v1
invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J
move-result-wide v4
long-to-int v1, v4
iget-object v4, p0, Lcom/squareup/okhttp/internal/a/f;->b:Ljava/util/zip/Deflater;
iget-object v5, v0, Lcom/squareup/okhttp/internal/a/m;->a:[B
iget v6, v0, Lcom/squareup/okhttp/internal/a/m;->b:I
invoke-virtual {v4, v5, v6, v1}, Ljava/util/zip/Deflater;->setInput([BII)V
const/4 v4, 0x0
invoke-direct {p0, v4}, Lcom/squareup/okhttp/internal/a/f;->a(Z)V
iget-wide v4, p1, Lcom/squareup/okhttp/internal/a/i;->b:J
int-to-long v6, v1
sub-long/2addr v4, v6
iput-wide v4, p1, Lcom/squareup/okhttp/internal/a/i;->b:J
iget v4, v0, Lcom/squareup/okhttp/internal/a/m;->b:I
add-int/2addr v4, v1
iput v4, v0, Lcom/squareup/okhttp/internal/a/m;->b:I
iget v4, v0, Lcom/squareup/okhttp/internal/a/m;->b:I
iget v5, v0, Lcom/squareup/okhttp/internal/a/m;->c:I
if-ne v4, v5, :cond_42
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/m;->a()Lcom/squareup/okhttp/internal/a/m;
move-result-object v4
iput-object v4, p1, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;
sget-object v4, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/internal/a/n;
invoke-virtual {v4, v0}, Lcom/squareup/okhttp/internal/a/n;->a(Lcom/squareup/okhttp/internal/a/m;)V
:cond_42
int-to-long v0, v1
sub-long/2addr p2, v0
goto :goto_8
:cond_45
return-void
.end method
.method public final close()V
.registers 3
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a/f;->c:Z
if-eqz v0, :cond_5
:cond_4
return-void
:cond_5
const/4 v1, 0x0
:try_start_6
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/f;->b:Ljava/util/zip/Deflater;
invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/a/f;->a(Z)V
:try_end_f
.catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_f} :catch_20
:try_start_f
:goto_f
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/f;->b:Ljava/util/zip/Deflater;
invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
:try_end_14
.catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_23
move-object v0, v1
:cond_15
:try_start_15
:goto_15
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/f;->a:Lcom/squareup/okhttp/internal/a/b;
invoke-interface {v1}, Lcom/squareup/okhttp/internal/a/b;->close()V
:try_end_1a
.catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1a} :catch_28
:goto_1a
:cond_1a
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/squareup/okhttp/internal/a/f;->c:Z
if-eqz v0, :cond_4
throw v0
:catch_20
move-exception v0
move-object v1, v0
goto :goto_f
:catch_23
move-exception v0
if-eqz v1, :cond_15
move-object v0, v1
goto :goto_15
:catch_28
move-exception v1
if-nez v0, :cond_1a
move-object v0, v1
goto :goto_1a
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "DeflaterSink("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/f;->a:Lcom/squareup/okhttp/internal/a/b;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method