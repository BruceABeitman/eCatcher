.class public final Lcom/squareup/okhttp/internal/http/z;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Lcom/squareup/okhttp/internal/http/u;
.field private final b:Lcom/squareup/okhttp/internal/http/ak;
.field private final c:Lcom/squareup/okhttp/i;
.field private final d:Lcom/squareup/okhttp/internal/http/e;
.field private final e:Lcom/squareup/okhttp/internal/http/aa;
.field private final f:Lcom/squareup/okhttp/internal/http/z;
.field private volatile g:Lcom/squareup/okhttp/internal/http/ac;
.field private volatile h:Lcom/squareup/okhttp/f;
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/ab;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/ab;)Lcom/squareup/okhttp/internal/http/u;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->a:Lcom/squareup/okhttp/internal/http/u;
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/ab;->b(Lcom/squareup/okhttp/internal/http/ab;)Lcom/squareup/okhttp/internal/http/ak;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->b:Lcom/squareup/okhttp/internal/http/ak;
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/ab;->c(Lcom/squareup/okhttp/internal/http/ab;)Lcom/squareup/okhttp/i;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->c:Lcom/squareup/okhttp/i;
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/ab;->d(Lcom/squareup/okhttp/internal/http/ab;)Lcom/squareup/okhttp/internal/http/f;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/f;->a()Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->d:Lcom/squareup/okhttp/internal/http/e;
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/ab;->e(Lcom/squareup/okhttp/internal/http/ab;)Lcom/squareup/okhttp/internal/http/aa;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->e:Lcom/squareup/okhttp/internal/http/aa;
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/ab;->f(Lcom/squareup/okhttp/internal/http/ab;)Lcom/squareup/okhttp/internal/http/z;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->f:Lcom/squareup/okhttp/internal/http/z;
return-void
.end method
.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/ab;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/z;-><init>(Lcom/squareup/okhttp/internal/http/ab;)V
return-void
.end method
.method static synthetic b(Lcom/squareup/okhttp/internal/http/z;)Lcom/squareup/okhttp/internal/http/u;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->a:Lcom/squareup/okhttp/internal/http/u;
return-object v0
.end method
.method static synthetic c(Lcom/squareup/okhttp/internal/http/z;)Lcom/squareup/okhttp/internal/http/ak;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->b:Lcom/squareup/okhttp/internal/http/ak;
return-object v0
.end method
.method static synthetic d(Lcom/squareup/okhttp/internal/http/z;)Lcom/squareup/okhttp/i;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->c:Lcom/squareup/okhttp/i;
return-object v0
.end method
.method static synthetic e(Lcom/squareup/okhttp/internal/http/z;)Lcom/squareup/okhttp/internal/http/e;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->d:Lcom/squareup/okhttp/internal/http/e;
return-object v0
.end method
.method static synthetic f(Lcom/squareup/okhttp/internal/http/z;)Lcom/squareup/okhttp/internal/http/aa;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->e:Lcom/squareup/okhttp/internal/http/aa;
return-object v0
.end method
.method static synthetic g(Lcom/squareup/okhttp/internal/http/z;)Lcom/squareup/okhttp/internal/http/z;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->f:Lcom/squareup/okhttp/internal/http/z;
return-object v0
.end method
.method private m()Lcom/squareup/okhttp/internal/http/ac;
.registers 4
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->g:Lcom/squareup/okhttp/internal/http/ac;
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
new-instance v0, Lcom/squareup/okhttp/internal/http/ac;
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/z;->d:Lcom/squareup/okhttp/internal/http/e;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/ac;-><init>(Lcom/squareup/okhttp/internal/http/e;B)V
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->g:Lcom/squareup/okhttp/internal/http/ac;
goto :goto_4
.end method
.method public final a()Lcom/squareup/okhttp/internal/http/u;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->a:Lcom/squareup/okhttp/internal/http/u;
return-object v0
.end method
.method public final a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->d:Lcom/squareup/okhttp/internal/http/e;
invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/e;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_9
:goto_8
return-object v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public final a(Lcom/squareup/okhttp/internal/http/e;Lcom/squareup/okhttp/internal/http/u;)Z
.registers 6
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/z;->m()Lcom/squareup/okhttp/internal/http/ac;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/http/ac;->a(Lcom/squareup/okhttp/internal/http/ac;)Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_28
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/e;->b(Ljava/lang/String;)Ljava/util/List;
move-result-object v2
invoke-virtual {p2, v0}, Lcom/squareup/okhttp/internal/http/u;->b(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
invoke-static {v2, v0}, Lcom/squareup/okhttp/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_27
return v0
:cond_28
const/4 v0, 0x1
goto :goto_27
.end method
.method public final a(Lcom/squareup/okhttp/internal/http/z;)Z
.registers 7
const/4 v0, 0x1
iget-object v1, p1, Lcom/squareup/okhttp/internal/http/z;->b:Lcom/squareup/okhttp/internal/http/ak;
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/ak;->c()I
move-result v1
const/16 v2, 0x130
if-ne v1, v2, :cond_c
:goto_b
:cond_b
return v0
:cond_c
invoke-direct {p1}, Lcom/squareup/okhttp/internal/http/z;->m()Lcom/squareup/okhttp/internal/http/ac;
move-result-object v1
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/z;->m()Lcom/squareup/okhttp/internal/http/ac;
move-result-object v2
iget-object v2, v2, Lcom/squareup/okhttp/internal/http/ac;->a:Ljava/util/Date;
if-eqz v2, :cond_30
iget-object v2, v1, Lcom/squareup/okhttp/internal/http/ac;->a:Ljava/util/Date;
if-eqz v2, :cond_30
iget-object v1, v1, Lcom/squareup/okhttp/internal/http/ac;->a:Ljava/util/Date;
invoke-virtual {v1}, Ljava/util/Date;->getTime()J
move-result-wide v1
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/z;->m()Lcom/squareup/okhttp/internal/http/ac;
move-result-object v3
iget-object v3, v3, Lcom/squareup/okhttp/internal/http/ac;->a:Ljava/util/Date;
invoke-virtual {v3}, Ljava/util/Date;->getTime()J
move-result-wide v3
cmp-long v1, v1, v3
if-ltz v1, :cond_b
:cond_30
const/4 v0, 0x0
goto :goto_b
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->b:Lcom/squareup/okhttp/internal/http/ak;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ak;->a()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c()I
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->b:Lcom/squareup/okhttp/internal/http/ak;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ak;->c()I
move-result v0
return v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->b:Lcom/squareup/okhttp/internal/http/ak;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ak;->d()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final e()I
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->b:Lcom/squareup/okhttp/internal/http/ak;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ak;->b()I
move-result v0
return v0
.end method
.method public final f()Lcom/squareup/okhttp/i;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->c:Lcom/squareup/okhttp/i;
return-object v0
.end method
.method public final g()Lcom/squareup/okhttp/internal/http/e;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->d:Lcom/squareup/okhttp/internal/http/e;
return-object v0
.end method
.method public final h()Lcom/squareup/okhttp/internal/http/aa;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->e:Lcom/squareup/okhttp/internal/http/aa;
return-object v0
.end method
.method public final i()Lcom/squareup/okhttp/internal/http/ab;
.registers 3
new-instance v0, Lcom/squareup/okhttp/internal/http/ab;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/ab;-><init>(Lcom/squareup/okhttp/internal/http/z;B)V
return-object v0
.end method
.method public final j()Ljava/util/Set;
.registers 2
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/z;->m()Lcom/squareup/okhttp/internal/http/ac;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/http/ac;->a(Lcom/squareup/okhttp/internal/http/ac;)Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public final k()Z
.registers 3
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/z;->m()Lcom/squareup/okhttp/internal/http/ac;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/http/ac;->a(Lcom/squareup/okhttp/internal/http/ac;)Ljava/util/Set;
move-result-object v0
const-string v1, "*"
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final l()Lcom/squareup/okhttp/f;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->h:Lcom/squareup/okhttp/f;
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->d:Lcom/squareup/okhttp/internal/http/e;
invoke-static {v0}, Lcom/squareup/okhttp/f;->a(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/f;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/z;->h:Lcom/squareup/okhttp/f;
goto :goto_4
.end method