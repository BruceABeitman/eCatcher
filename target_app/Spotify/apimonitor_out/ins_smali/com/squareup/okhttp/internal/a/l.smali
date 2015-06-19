.class final Lcom/squareup/okhttp/internal/a/l;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/okhttp/internal/a/c;
.field public final a:Lcom/squareup/okhttp/internal/a/i;
.field public final b:Lcom/squareup/okhttp/internal/a/p;
.field private c:Z
.method public constructor <init>(Lcom/squareup/okhttp/internal/a/p;)V
.registers 3
new-instance v0, Lcom/squareup/okhttp/internal/a/i;
invoke-direct {v0}, Lcom/squareup/okhttp/internal/a/i;-><init>()V
invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/a/l;-><init>(Lcom/squareup/okhttp/internal/a/p;Lcom/squareup/okhttp/internal/a/i;)V
return-void
.end method
.method private constructor <init>(Lcom/squareup/okhttp/internal/a/p;Lcom/squareup/okhttp/internal/a/i;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "source == null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p2, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
iput-object p1, p0, Lcom/squareup/okhttp/internal/a/l;->b:Lcom/squareup/okhttp/internal/a/p;
return-void
.end method
.method private a()V
.registers 3
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a/l;->c:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "closed"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method
.method static synthetic a(Lcom/squareup/okhttp/internal/a/l;)Z
.registers 2
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a/l;->c:Z
return v0
.end method
.method private d(J)Ljava/lang/String;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/internal/a/l;->a(J)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/a/i;->e(J)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(J)V
.registers 7
invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/l;->a()V
:cond_3
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
iget-wide v0, v0, Lcom/squareup/okhttp/internal/a/i;->b:J
cmp-long v0, v0, p1
if-gez v0, :cond_21
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->b:Lcom/squareup/okhttp/internal/a/p;
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
const-wide/16 v2, 0x800
invoke-interface {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/a/p;->b(Lcom/squareup/okhttp/internal/a/i;J)J
move-result-wide v0
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-nez v0, :cond_3
new-instance v0, Ljava/io/EOFException;
invoke-direct {v0}, Ljava/io/EOFException;-><init>()V
throw v0
:cond_21
return-void
.end method
.method public final b(Lcom/squareup/okhttp/internal/a/i;J)J
.registers 10
const-wide/16 v4, 0x0
const-wide/16 v0, -0x1
cmp-long v2, p2, v4
if-gez v2, :cond_1d
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
:cond_1d
invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/l;->a()V
iget-object v2, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
iget-wide v2, v2, Lcom/squareup/okhttp/internal/a/i;->b:J
cmp-long v2, v2, v4
if-nez v2, :cond_37
iget-object v2, p0, Lcom/squareup/okhttp/internal/a/l;->b:Lcom/squareup/okhttp/internal/a/p;
iget-object v3, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
const-wide/16 v4, 0x800
invoke-interface {v2, v3, v4, v5}, Lcom/squareup/okhttp/internal/a/p;->b(Lcom/squareup/okhttp/internal/a/i;J)J
move-result-wide v2
cmp-long v2, v2, v0
if-nez v2, :cond_37
:goto_36
return-wide v0
:cond_37
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
iget-wide v0, v0, Lcom/squareup/okhttp/internal/a/i;->b:J
invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
iget-object v2, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
invoke-virtual {v2, p1, v0, v1}, Lcom/squareup/okhttp/internal/a/i;->b(Lcom/squareup/okhttp/internal/a/i;J)J
move-result-wide v0
goto :goto_36
.end method
.method public final b()Lcom/squareup/okhttp/internal/a/i;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
return-object v0
.end method
.method public final b(J)V
.registers 9
const-wide/16 v4, 0x0
invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/l;->a()V
:goto_5
cmp-long v0, p1, v4
if-lez v0, :cond_36
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
iget-wide v0, v0, Lcom/squareup/okhttp/internal/a/i;->b:J
cmp-long v0, v0, v4
if-nez v0, :cond_27
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->b:Lcom/squareup/okhttp/internal/a/p;
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
const-wide/16 v2, 0x800
invoke-interface {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/a/p;->b(Lcom/squareup/okhttp/internal/a/i;J)J
move-result-wide v0
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-nez v0, :cond_27
new-instance v0, Ljava/io/EOFException;
invoke-direct {v0}, Ljava/io/EOFException;-><init>()V
throw v0
:cond_27
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
iget-wide v0, v0, Lcom/squareup/okhttp/internal/a/i;->b:J
invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
iget-object v2, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
invoke-virtual {v2, v0, v1}, Lcom/squareup/okhttp/internal/a/i;->b(J)V
sub-long/2addr p1, v0
goto :goto_5
:cond_36
return-void
.end method
.method public final c(J)Lcom/squareup/okhttp/internal/a/d;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/internal/a/l;->a(J)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/a/i;->c(J)Lcom/squareup/okhttp/internal/a/d;
move-result-object v0
return-object v0
.end method
.method public final close()V
.registers 2
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a/l;->c:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/squareup/okhttp/internal/a/l;->c:Z
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->b:Lcom/squareup/okhttp/internal/a/p;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/p;->close()V
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->p()V
goto :goto_4
.end method
.method public final f()Z
.registers 5
invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/l;->a()V
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->f()Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->b:Lcom/squareup/okhttp/internal/a/p;
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
const-wide/16 v2, 0x800
invoke-interface {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/a/p;->b(Lcom/squareup/okhttp/internal/a/i;J)J
move-result-wide v0
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-nez v0, :cond_1d
const/4 v0, 0x1
:goto_1c
return v0
:cond_1d
const/4 v0, 0x0
goto :goto_1c
.end method
.method public final g()B
.registers 3
const-wide/16 v0, 0x1
invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/a/l;->a(J)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->g()B
move-result v0
return v0
.end method
.method public final h()S
.registers 3
const-wide/16 v0, 0x2
invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/a/l;->a(J)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->h()S
move-result v0
return v0
.end method
.method public final i()I
.registers 3
const-wide/16 v0, 0x2
invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/a/l;->a(J)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->i()I
move-result v0
return v0
.end method
.method public final j()I
.registers 3
const-wide/16 v0, 0x4
invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/a/l;->a(J)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->j()I
move-result v0
return v0
.end method
.method public final k()I
.registers 3
const-wide/16 v0, 0x4
invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/a/l;->a(J)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->k()I
move-result v0
return v0
.end method
.method public final l()Ljava/lang/String;
.registers 13
const-wide/16 v2, 0x0
const-wide/16 v10, -0x1
const-wide/16 v8, 0x1
invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/l;->a()V
move-wide v0, v2
:cond_a
iget-object v4, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
const/16 v5, 0xa
invoke-virtual {v4, v5, v0, v1}, Lcom/squareup/okhttp/internal/a/i;->a(BJ)J
move-result-wide v0
cmp-long v4, v0, v10
if-nez v4, :cond_2e
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
iget-wide v0, v0, Lcom/squareup/okhttp/internal/a/i;->b:J
iget-object v4, p0, Lcom/squareup/okhttp/internal/a/l;->b:Lcom/squareup/okhttp/internal/a/p;
iget-object v5, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
const-wide/16 v6, 0x800
invoke-interface {v4, v5, v6, v7}, Lcom/squareup/okhttp/internal/a/p;->b(Lcom/squareup/okhttp/internal/a/i;J)J
move-result-wide v4
cmp-long v4, v4, v10
if-nez v4, :cond_a
new-instance v0, Ljava/io/EOFException;
invoke-direct {v0}, Ljava/io/EOFException;-><init>()V
throw v0
:cond_2e
cmp-long v2, v0, v2
if-lez v2, :cond_49
iget-object v2, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
sub-long v3, v0, v8
invoke-virtual {v2, v3, v4}, Lcom/squareup/okhttp/internal/a/i;->d(J)B
move-result v2
const/16 v3, 0xd
if-ne v2, v3, :cond_49
sub-long/2addr v0, v8
invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/a/l;->d(J)Ljava/lang/String;
move-result-object v0
const-wide/16 v1, 0x2
invoke-virtual {p0, v1, v2}, Lcom/squareup/okhttp/internal/a/l;->b(J)V
:goto_48
return-object v0
:cond_49
invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/a/l;->d(J)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v8, v9}, Lcom/squareup/okhttp/internal/a/l;->b(J)V
goto :goto_48
.end method
.method public final m()J
.registers 9
const-wide/16 v6, -0x1
invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/l;->a()V
const-wide/16 v0, 0x0
:cond_7
iget-object v2, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
const/4 v3, 0x0
invoke-virtual {v2, v3, v0, v1}, Lcom/squareup/okhttp/internal/a/i;->a(BJ)J
move-result-wide v0
cmp-long v2, v0, v6
if-nez v2, :cond_2a
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
iget-wide v0, v0, Lcom/squareup/okhttp/internal/a/i;->b:J
iget-object v2, p0, Lcom/squareup/okhttp/internal/a/l;->b:Lcom/squareup/okhttp/internal/a/p;
iget-object v3, p0, Lcom/squareup/okhttp/internal/a/l;->a:Lcom/squareup/okhttp/internal/a/i;
const-wide/16 v4, 0x800
invoke-interface {v2, v3, v4, v5}, Lcom/squareup/okhttp/internal/a/p;->b(Lcom/squareup/okhttp/internal/a/i;J)J
move-result-wide v2
cmp-long v2, v2, v6
if-nez v2, :cond_7
new-instance v0, Ljava/io/EOFException;
invoke-direct {v0}, Ljava/io/EOFException;-><init>()V
throw v0
:cond_2a
return-wide v0
.end method
.method public final n()Ljava/io/InputStream;
.registers 2
new-instance v0, Lcom/squareup/okhttp/internal/a/l$1;
invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/a/l$1;-><init>(Lcom/squareup/okhttp/internal/a/l;)V
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "buffer("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/squareup/okhttp/internal/a/l;->b:Lcom/squareup/okhttp/internal/a/p;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method