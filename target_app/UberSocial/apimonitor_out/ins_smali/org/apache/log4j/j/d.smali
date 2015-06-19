.class public Lorg/apache/log4j/j/d;
.super Lorg/apache/log4j/b;
.source "SourceFile"
.implements Lorg/apache/log4j/k/a;
.implements Lorg/apache/log4j/m/j;
.field static a:Ljava/lang/Class;
.field private i:Lorg/apache/log4j/j/e;
.field private final j:Lorg/apache/log4j/c/b;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V
new-instance v0, Lorg/apache/log4j/c/b;
invoke-direct {v0}, Lorg/apache/log4j/c/b;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
return-void
.end method
.method static d(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_3
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljava/lang/NoClassDefFoundError;
invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
throw v0
.end method
.method public a()V
.registers 5
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/log4j/j/d;->h:Z
iget-object v1, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_6
iget-object v0, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
invoke-virtual {v0}, Lorg/apache/log4j/c/b;->c()Ljava/util/Enumeration;
move-result-object v2
if-eqz v2, :cond_25
:cond_e
:goto_e
invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_25
invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
instance-of v3, v0, Lorg/apache/log4j/a;
if-eqz v3, :cond_e
check-cast v0, Lorg/apache/log4j/a;
invoke-interface {v0}, Lorg/apache/log4j/a;->a()V
goto :goto_e
:catchall_22
move-exception v0
monitor-exit v1
:try_end_24
.catchall {:try_start_6 .. :try_end_24} :catchall_22
throw v0
:cond_25
:try_start_25
monitor-exit v1
:try_end_26
.catchall {:try_start_25 .. :try_end_26} :catchall_22
return-void
.end method
.method public a(Lorg/apache/log4j/a;)V
.registers 4
iget-object v1, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
invoke-virtual {v0, p1}, Lorg/apache/log4j/c/b;->a(Lorg/apache/log4j/a;)V
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public a(Lorg/apache/log4j/j/e;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/j/d;->i:Lorg/apache/log4j/j/e;
return-void
.end method
.method protected a(Lorg/apache/log4j/k/k;)V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/j/d;->i:Lorg/apache/log4j/j/e;
if-eqz v0, :cond_a
iget-object v0, p0, Lorg/apache/log4j/j/d;->i:Lorg/apache/log4j/j/e;
invoke-interface {v0, p1}, Lorg/apache/log4j/j/e;->a(Lorg/apache/log4j/k/k;)Lorg/apache/log4j/k/k;
move-result-object p1
:cond_a
if-eqz p1, :cond_15
iget-object v1, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_f
iget-object v0, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
invoke-virtual {v0, p1}, Lorg/apache/log4j/c/b;->a(Lorg/apache/log4j/k/k;)I
monitor-exit v1
:cond_15
return-void
:catchall_16
move-exception v0
monitor-exit v1
:try_end_18
.catchall {:try_start_f .. :try_end_18} :catchall_16
throw v0
.end method
.method public a(Lorg/w3c/dom/Element;Ljava/util/Properties;)Z
.registers 5
invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;
move-result-object v0
const-string v1, "rewritePolicy"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_32
sget-object v0, Lorg/apache/log4j/j/d;->a:Ljava/lang/Class;
if-nez v0, :cond_2f
const-string v0, "org.apache.log4j.j.e"
invoke-static {v0}, Lorg/apache/log4j/j/d;->d(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/j/d;->a:Ljava/lang/Class;
:goto_18
invoke-static {p1, p2, v0}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Element;Ljava/util/Properties;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_2d
instance-of v0, v1, Lorg/apache/log4j/k/o;
if-eqz v0, :cond_28
move-object v0, v1
check-cast v0, Lorg/apache/log4j/k/o;
invoke-interface {v0}, Lorg/apache/log4j/k/o;->i()V
:cond_28
check-cast v1, Lorg/apache/log4j/j/e;
invoke-virtual {p0, v1}, Lorg/apache/log4j/j/d;->a(Lorg/apache/log4j/j/e;)V
:cond_2d
const/4 v0, 0x1
:goto_2e
return v0
:cond_2f
sget-object v0, Lorg/apache/log4j/j/d;->a:Ljava/lang/Class;
goto :goto_18
:cond_32
const/4 v0, 0x0
goto :goto_2e
.end method
.method public b(Ljava/lang/String;)Lorg/apache/log4j/a;
.registers 4
iget-object v1, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
invoke-virtual {v0, p1}, Lorg/apache/log4j/c/b;->b(Ljava/lang/String;)Lorg/apache/log4j/a;
move-result-object v0
monitor-exit v1
return-object v0
:catchall_b
move-exception v0
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_b
throw v0
.end method
.method public b()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public b(Lorg/apache/log4j/a;)Z
.registers 4
iget-object v1, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
invoke-virtual {v0, p1}, Lorg/apache/log4j/c/b;->b(Lorg/apache/log4j/a;)Z
move-result v0
monitor-exit v1
return v0
:catchall_b
move-exception v0
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_b
throw v0
.end method
.method public c()Ljava/util/Enumeration;
.registers 3
iget-object v1, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
invoke-virtual {v0}, Lorg/apache/log4j/c/b;->c()Ljava/util/Enumeration;
move-result-object v0
monitor-exit v1
return-object v0
:catchall_b
move-exception v0
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_b
throw v0
.end method
.method public c(Ljava/lang/String;)V
.registers 4
iget-object v1, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
invoke-virtual {v0, p1}, Lorg/apache/log4j/c/b;->c(Ljava/lang/String;)V
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public c(Lorg/apache/log4j/a;)V
.registers 4
iget-object v1, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
invoke-virtual {v0, p1}, Lorg/apache/log4j/c/b;->c(Lorg/apache/log4j/a;)V
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public m()V
.registers 3
iget-object v1, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/j/d;->j:Lorg/apache/log4j/c/b;
invoke-virtual {v0}, Lorg/apache/log4j/c/b;->m()V
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method