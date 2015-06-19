.class public Lorg/apache/log4j/f/c;
.super Lorg/apache/log4j/b;
.source "SourceFile"
.field protected static i:Lorg/apache/log4j/f/b/d;
.field protected static j:Lorg/apache/log4j/f/a;
.field protected a:Lorg/apache/log4j/f/b/d;
.method public constructor <init>()V
.registers 2
invoke-static {}, Lorg/apache/log4j/f/c;->l()Lorg/apache/log4j/f/b/d;
move-result-object v0
invoke-direct {p0, v0}, Lorg/apache/log4j/f/c;-><init>(Lorg/apache/log4j/f/b/d;)V
return-void
.end method
.method public constructor <init>(Lorg/apache/log4j/f/b/d;)V
.registers 2
invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V
if-eqz p1, :cond_7
iput-object p1, p0, Lorg/apache/log4j/f/c;->a:Lorg/apache/log4j/f/b/d;
:cond_7
return-void
.end method
.method public static a([Ljava/lang/String;)V
.registers 2
new-instance v0, Lorg/apache/log4j/f/c;
invoke-direct {v0}, Lorg/apache/log4j/f/c;-><init>()V
return-void
.end method
.method protected static declared-synchronized l()Lorg/apache/log4j/f/b/d;
.registers 4
const-class v1, Lorg/apache/log4j/f/c;
monitor-enter v1
:try_start_3
sget-object v0, Lorg/apache/log4j/f/c;->i:Lorg/apache/log4j/f/b/d;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_3d
if-nez v0, :cond_34
:try_start_7
new-instance v0, Lorg/apache/log4j/f/b/d;
invoke-static {}, Lorg/apache/log4j/f/e;->c()Ljava/util/List;
move-result-object v2
invoke-direct {v0, v2}, Lorg/apache/log4j/f/b/d;-><init>(Ljava/util/List;)V
sput-object v0, Lorg/apache/log4j/f/c;->i:Lorg/apache/log4j/f/b/d;
new-instance v0, Lorg/apache/log4j/f/a;
sget-object v2, Lorg/apache/log4j/f/c;->i:Lorg/apache/log4j/f/b/d;
invoke-direct {v0, v2}, Lorg/apache/log4j/f/a;-><init>(Lorg/apache/log4j/f/b/d;)V
sput-object v0, Lorg/apache/log4j/f/c;->j:Lorg/apache/log4j/f/a;
sget-object v0, Lorg/apache/log4j/f/c;->i:Lorg/apache/log4j/f/b/d;
invoke-static {}, Lorg/apache/log4j/f/c;->o()I
move-result v2
invoke-static {}, Lorg/apache/log4j/f/c;->p()I
move-result v3
invoke-virtual {v0, v2, v3}, Lorg/apache/log4j/f/b/d;->a(II)V
sget-object v0, Lorg/apache/log4j/f/c;->i:Lorg/apache/log4j/f/b/d;
const/16 v2, 0xc
invoke-virtual {v0, v2}, Lorg/apache/log4j/f/b/d;->c(I)V
sget-object v0, Lorg/apache/log4j/f/c;->i:Lorg/apache/log4j/f/b/d;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->a()V
:goto_34
:cond_34
:try_end_34
.catchall {:try_start_7 .. :try_end_34} :catchall_3d
.catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_34} :catch_38
:try_start_34
sget-object v0, Lorg/apache/log4j/f/c;->i:Lorg/apache/log4j/f/b/d;
:try_end_36
.catchall {:try_start_34 .. :try_end_36} :catchall_3d
monitor-exit v1
return-object v0
:catch_38
move-exception v0
const/4 v0, 0x0
:try_start_3a
sput-object v0, Lorg/apache/log4j/f/c;->i:Lorg/apache/log4j/f/b/d;
:try_end_3c
.catchall {:try_start_3a .. :try_end_3c} :catchall_3d
goto :goto_34
:catchall_3d
move-exception v0
monitor-exit v1
throw v0
.end method
.method protected static m()I
.registers 1
:try_start_0
invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;
move-result-object v0
invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;
move-result-object v0
iget v0, v0, Ljava/awt/Dimension;->width:I
:try_end_a
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b
:goto_a
return v0
:catch_b
move-exception v0
const/16 v0, 0x320
goto :goto_a
.end method
.method protected static n()I
.registers 1
:try_start_0
invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;
move-result-object v0
invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;
move-result-object v0
iget v0, v0, Ljava/awt/Dimension;->height:I
:try_end_a
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b
:goto_a
return v0
:catch_b
move-exception v0
const/16 v0, 0x258
goto :goto_a
.end method
.method protected static o()I
.registers 1
invoke-static {}, Lorg/apache/log4j/f/c;->m()I
move-result v0
mul-int/lit8 v0, v0, 0x3
div-int/lit8 v0, v0, 0x4
return v0
.end method
.method protected static p()I
.registers 1
invoke-static {}, Lorg/apache/log4j/f/c;->n()I
move-result v0
mul-int/lit8 v0, v0, 0x3
div-int/lit8 v0, v0, 0x4
return v0
.end method
.method public a()V
.registers 1
return-void
.end method
.method public a(I)V
.registers 3
sget-object v0, Lorg/apache/log4j/f/c;->i:Lorg/apache/log4j/f/b/d;
invoke-virtual {v0, p1}, Lorg/apache/log4j/f/b/d;->b(I)V
return-void
.end method
.method public a(Lorg/apache/log4j/k/k;)V
.registers 11
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->h()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->j()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;
move-result-object v4
invoke-virtual {v4}, Lorg/apache/log4j/v;->toString()Ljava/lang/String;
move-result-object v4
iget-wide v5, p1, Lorg/apache/log4j/k/k;->d:J
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;
move-result-object v7
new-instance v8, Lorg/apache/log4j/f/d;
invoke-direct {v8}, Lorg/apache/log4j/f/d;-><init>()V
invoke-virtual {v8, v0}, Lorg/apache/log4j/f/d;->a(Ljava/lang/String;)V
invoke-virtual {v8, v1}, Lorg/apache/log4j/f/d;->b(Ljava/lang/String;)V
iget-object v0, v7, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;
invoke-virtual {v8, v0}, Lorg/apache/log4j/f/d;->f(Ljava/lang/String;)V
invoke-virtual {v8, v5, v6}, Lorg/apache/log4j/f/d;->b(J)V
invoke-virtual {v8, v3}, Lorg/apache/log4j/f/d;->c(Ljava/lang/String;)V
if-eqz v2, :cond_57
invoke-virtual {v8, v2}, Lorg/apache/log4j/f/d;->e(Ljava/lang/String;)V
:goto_39
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v0
if-eqz v0, :cond_46
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v0
invoke-virtual {v8, v0}, Lorg/apache/log4j/f/d;->a(Lorg/apache/log4j/k/t;)V
:cond_46
:try_start_46
invoke-static {v4}, Lorg/apache/log4j/f/e;->a(Ljava/lang/String;)Lorg/apache/log4j/f/e;
move-result-object v0
invoke-virtual {v8, v0}, Lorg/apache/log4j/f/d;->a(Lorg/apache/log4j/f/e;)V
:try_end_4d
.catch Lorg/apache/log4j/f/f; {:try_start_46 .. :try_end_4d} :catch_5d
:goto_4d
iget-object v0, p0, Lorg/apache/log4j/f/c;->a:Lorg/apache/log4j/f/b/d;
if-eqz v0, :cond_56
iget-object v0, p0, Lorg/apache/log4j/f/c;->a:Lorg/apache/log4j/f/b/d;
invoke-virtual {v0, v8}, Lorg/apache/log4j/f/b/d;->a(Lorg/apache/log4j/f/g;)V
:cond_56
return-void
:cond_57
const-string v0, ""
invoke-virtual {v8, v0}, Lorg/apache/log4j/f/d;->e(Ljava/lang/String;)V
goto :goto_39
:catch_5d
move-exception v0
sget-object v0, Lorg/apache/log4j/f/e;->c:Lorg/apache/log4j/f/e;
invoke-virtual {v8, v0}, Lorg/apache/log4j/f/d;->a(Lorg/apache/log4j/f/e;)V
goto :goto_4d
.end method
.method public a(Z)V
.registers 3
iget-object v0, p0, Lorg/apache/log4j/f/c;->a:Lorg/apache/log4j/f/b/d;
invoke-virtual {v0, p1}, Lorg/apache/log4j/f/b/d;->a(Z)V
return-void
.end method
.method public a(Lorg/apache/log4j/f/c;)Z
.registers 4
iget-object v0, p0, Lorg/apache/log4j/f/c;->a:Lorg/apache/log4j/f/b/d;
invoke-virtual {p1}, Lorg/apache/log4j/f/c;->c()Lorg/apache/log4j/f/b/d;
move-result-object v1
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public b()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public c()Lorg/apache/log4j/f/b/d;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/c;->a:Lorg/apache/log4j/f/b/d;
return-object v0
.end method