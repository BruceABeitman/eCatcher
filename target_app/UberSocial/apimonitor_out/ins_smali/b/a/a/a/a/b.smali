.class public Lb/a/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Lorg/apache/log4j/v;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:I
.field private f:J
.field private g:Z
.field private h:Z
.field private i:Z
.field private j:Z
.field private k:Z
.method public constructor <init>()V
.registers 4
const/4 v2, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
iput-object v0, p0, Lb/a/a/a/a/b;->a:Lorg/apache/log4j/v;
const-string v0, "%d - [%p::%c::%C] - %m%n"
iput-object v0, p0, Lb/a/a/a/a/b;->b:Ljava/lang/String;
const-string v0, "%m%n"
iput-object v0, p0, Lb/a/a/a/a/b;->c:Ljava/lang/String;
const-string v0, "android-log4j.log"
iput-object v0, p0, Lb/a/a/a/a/b;->d:Ljava/lang/String;
const/4 v0, 0x5
iput v0, p0, Lb/a/a/a/a/b;->e:I
const-wide/32 v0, 0x80000
iput-wide v0, p0, Lb/a/a/a/a/b;->f:J
iput-boolean v2, p0, Lb/a/a/a/a/b;->g:Z
iput-boolean v2, p0, Lb/a/a/a/a/b;->h:Z
iput-boolean v2, p0, Lb/a/a/a/a/b;->i:Z
iput-boolean v2, p0, Lb/a/a/a/a/b;->j:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lb/a/a/a/a/b;->k:Z
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 5
const/4 v2, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
iput-object v0, p0, Lb/a/a/a/a/b;->a:Lorg/apache/log4j/v;
const-string v0, "%d - [%p::%c::%C] - %m%n"
iput-object v0, p0, Lb/a/a/a/a/b;->b:Ljava/lang/String;
const-string v0, "%m%n"
iput-object v0, p0, Lb/a/a/a/a/b;->c:Ljava/lang/String;
const-string v0, "android-log4j.log"
iput-object v0, p0, Lb/a/a/a/a/b;->d:Ljava/lang/String;
const/4 v0, 0x5
iput v0, p0, Lb/a/a/a/a/b;->e:I
const-wide/32 v0, 0x80000
iput-wide v0, p0, Lb/a/a/a/a/b;->f:J
iput-boolean v2, p0, Lb/a/a/a/a/b;->g:Z
iput-boolean v2, p0, Lb/a/a/a/a/b;->h:Z
iput-boolean v2, p0, Lb/a/a/a/a/b;->i:Z
iput-boolean v2, p0, Lb/a/a/a/a/b;->j:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lb/a/a/a/a/b;->k:Z
invoke-virtual {p0, p1}, Lb/a/a/a/a/b;->c(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Lorg/apache/log4j/v;)V
.registers 7
invoke-direct {p0, p1, p6, p5}, Lb/a/a/a/a/b;-><init>(Ljava/lang/String;Lorg/apache/log4j/v;Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lb/a/a/a/a/b;->a(I)V
invoke-virtual {p0, p3, p4}, Lb/a/a/a/a/b;->a(J)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/v;)V
.registers 3
invoke-direct {p0, p1}, Lb/a/a/a/a/b;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lb/a/a/a/a/b;->a(Lorg/apache/log4j/v;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/v;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1}, Lb/a/a/a/a/b;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lb/a/a/a/a/b;->a(Lorg/apache/log4j/v;)V
invoke-virtual {p0, p3}, Lb/a/a/a/a/b;->a(Ljava/lang/String;)V
return-void
.end method
.method private m()V
.registers 6
invoke-static {}, Lorg/apache/log4j/aa;->t()Lorg/apache/log4j/aa;
move-result-object v0
new-instance v1, Lorg/apache/log4j/af;
invoke-virtual {p0}, Lb/a/a/a/a/b;->c()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lorg/apache/log4j/af;-><init>(Ljava/lang/String;)V
:try_start_d
new-instance v2, Lorg/apache/log4j/al;
invoke-virtual {p0}, Lb/a/a/a/a/b;->e()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v1, v3}, Lorg/apache/log4j/al;-><init>(Lorg/apache/log4j/u;Ljava/lang/String;)V
:try_end_16
.catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_2f
invoke-virtual {p0}, Lb/a/a/a/a/b;->f()I
move-result v1
invoke-virtual {v2, v1}, Lorg/apache/log4j/al;->a(I)V
invoke-virtual {p0}, Lb/a/a/a/a/b;->g()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Lorg/apache/log4j/al;->a(J)V
invoke-virtual {p0}, Lb/a/a/a/a/b;->h()Z
move-result v1
invoke-virtual {v2, v1}, Lorg/apache/log4j/al;->c(Z)V
invoke-virtual {v0, v2}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/a;)V
return-void
:catch_2f
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Exception configuring log system"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method private n()V
.registers 4
invoke-static {}, Lorg/apache/log4j/aa;->t()Lorg/apache/log4j/aa;
move-result-object v0
new-instance v1, Lorg/apache/log4j/af;
invoke-virtual {p0}, Lb/a/a/a/a/b;->d()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lorg/apache/log4j/af;-><init>(Ljava/lang/String;)V
new-instance v2, Lb/a/a/a/a/a;
invoke-direct {v2, v1}, Lb/a/a/a/a/a;-><init>(Lorg/apache/log4j/u;)V
invoke-virtual {v0, v2}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/a;)V
return-void
.end method
.method public a()V
.registers 3
invoke-static {}, Lorg/apache/log4j/aa;->t()Lorg/apache/log4j/aa;
move-result-object v0
invoke-virtual {p0}, Lb/a/a/a/a/b;->k()Z
move-result v1
if-eqz v1, :cond_11
invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;
move-result-object v1
invoke-interface {v1}, Lorg/apache/log4j/k/j;->g()V
:cond_11
invoke-virtual {p0}, Lb/a/a/a/a/b;->l()Z
move-result v1
invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Z)V
invoke-virtual {p0}, Lb/a/a/a/a/b;->i()Z
move-result v1
if-eqz v1, :cond_21
invoke-direct {p0}, Lb/a/a/a/a/b;->m()V
:cond_21
invoke-virtual {p0}, Lb/a/a/a/a/b;->j()Z
move-result v1
if-eqz v1, :cond_2a
invoke-direct {p0}, Lb/a/a/a/a/b;->n()V
:cond_2a
invoke-virtual {p0}, Lb/a/a/a/a/b;->b()Lorg/apache/log4j/v;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/v;)V
return-void
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lb/a/a/a/a/b;->e:I
return-void
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lb/a/a/a/a/b;->f:J
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lb/a/a/a/a/b;->b:Ljava/lang/String;
return-void
.end method
.method public a(Ljava/lang/String;Lorg/apache/log4j/v;)V
.registers 4
invoke-static {p1}, Lorg/apache/log4j/aa;->g(Ljava/lang/String;)Lorg/apache/log4j/aa;
move-result-object v0
invoke-virtual {v0, p2}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/v;)V
return-void
.end method
.method public a(Lorg/apache/log4j/v;)V
.registers 2
iput-object p1, p0, Lb/a/a/a/a/b;->a:Lorg/apache/log4j/v;
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lb/a/a/a/a/b;->g:Z
return-void
.end method
.method public b()Lorg/apache/log4j/v;
.registers 2
iget-object v0, p0, Lb/a/a/a/a/b;->a:Lorg/apache/log4j/v;
return-object v0
.end method
.method public b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lb/a/a/a/a/b;->c:Ljava/lang/String;
return-void
.end method
.method public b(Z)V
.registers 2
iput-boolean p1, p0, Lb/a/a/a/a/b;->i:Z
return-void
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lb/a/a/a/a/b;->b:Ljava/lang/String;
return-object v0
.end method
.method public c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lb/a/a/a/a/b;->d:Ljava/lang/String;
return-void
.end method
.method public c(Z)V
.registers 2
iput-boolean p1, p0, Lb/a/a/a/a/b;->h:Z
return-void
.end method
.method public d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lb/a/a/a/a/b;->c:Ljava/lang/String;
return-object v0
.end method
.method public d(Z)V
.registers 2
iput-boolean p1, p0, Lb/a/a/a/a/b;->j:Z
return-void
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lb/a/a/a/a/b;->d:Ljava/lang/String;
return-object v0
.end method
.method public e(Z)V
.registers 2
iput-boolean p1, p0, Lb/a/a/a/a/b;->k:Z
return-void
.end method
.method public f()I
.registers 2
iget v0, p0, Lb/a/a/a/a/b;->e:I
return v0
.end method
.method public g()J
.registers 3
iget-wide v0, p0, Lb/a/a/a/a/b;->f:J
return-wide v0
.end method
.method public h()Z
.registers 2
iget-boolean v0, p0, Lb/a/a/a/a/b;->g:Z
return v0
.end method
.method public i()Z
.registers 2
iget-boolean v0, p0, Lb/a/a/a/a/b;->i:Z
return v0
.end method
.method public j()Z
.registers 2
iget-boolean v0, p0, Lb/a/a/a/a/b;->h:Z
return v0
.end method
.method public k()Z
.registers 2
iget-boolean v0, p0, Lb/a/a/a/a/b;->j:Z
return v0
.end method
.method public l()Z
.registers 2
iget-boolean v0, p0, Lb/a/a/a/a/b;->k:Z
return v0
.end method