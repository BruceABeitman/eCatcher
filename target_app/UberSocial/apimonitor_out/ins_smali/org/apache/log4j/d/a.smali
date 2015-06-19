.class public Lorg/apache/log4j/d/a;
.super Lorg/apache/log4j/b;
.source "SourceFile"
.implements Lorg/apache/log4j/a;
.field protected a:Ljava/lang/String;
.field protected i:Ljava/lang/String;
.field protected j:Ljava/lang/String;
.field protected k:Ljava/sql/Connection;
.field protected l:Ljava/lang/String;
.field protected m:I
.field protected n:Ljava/util/ArrayList;
.field protected o:Ljava/util/ArrayList;
.field private p:Z
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V
const-string v0, "jdbc:odbc:myDB"
iput-object v0, p0, Lorg/apache/log4j/d/a;->a:Ljava/lang/String;
const-string v0, "me"
iput-object v0, p0, Lorg/apache/log4j/d/a;->i:Ljava/lang/String;
const-string v0, "mypassword"
iput-object v0, p0, Lorg/apache/log4j/d/a;->j:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/log4j/d/a;->k:Ljava/sql/Connection;
const-string v0, ""
iput-object v0, p0, Lorg/apache/log4j/d/a;->l:Ljava/lang/String;
const/4 v0, 0x1
iput v0, p0, Lorg/apache/log4j/d/a;->m:I
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/log4j/d/a;->p:Z
new-instance v0, Ljava/util/ArrayList;
iget v1, p0, Lorg/apache/log4j/d/a;->m:I
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lorg/apache/log4j/d/a;->n:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
iget v1, p0, Lorg/apache/log4j/d/a;->m:I
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lorg/apache/log4j/d/a;->o:Ljava/util/ArrayList;
return-void
.end method
.method public a()V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/d/a;->m()V
:try_start_3
iget-object v0, p0, Lorg/apache/log4j/d/a;->k:Ljava/sql/Connection;
if-eqz v0, :cond_14
iget-object v0, p0, Lorg/apache/log4j/d/a;->k:Ljava/sql/Connection;
invoke-interface {v0}, Ljava/sql/Connection;->isClosed()Z
move-result v0
if-nez v0, :cond_14
iget-object v0, p0, Lorg/apache/log4j/d/a;->k:Ljava/sql/Connection;
invoke-interface {v0}, Ljava/sql/Connection;->close()V
:goto_14
:try_end_14
.catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_14} :catch_18
:cond_14
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/log4j/d/a;->h:Z
return-void
:catch_18
move-exception v0
iget-object v1, p0, Lorg/apache/log4j/d/a;->e:Lorg/apache/log4j/k/e;
const-string v2, "Error closing connection"
const/4 v3, 0x0
invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;Ljava/lang/Exception;I)V
goto :goto_14
.end method
.method public a(I)V
.registers 4
iput p1, p0, Lorg/apache/log4j/d/a;->m:I
iget-object v0, p0, Lorg/apache/log4j/d/a;->n:Ljava/util/ArrayList;
iget v1, p0, Lorg/apache/log4j/d/a;->m:I
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V
iget-object v0, p0, Lorg/apache/log4j/d/a;->o:Ljava/util/ArrayList;
iget v1, p0, Lorg/apache/log4j/d/a;->m:I
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V
return-void
.end method
.method protected a(Ljava/sql/Connection;)V
.registers 2
return-void
.end method
.method public a(Lorg/apache/log4j/k/k;)V
.registers 4
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->f()Ljava/lang/String;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->j()Ljava/lang/String;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->g()V
iget-boolean v0, p0, Lorg/apache/log4j/d/a;->p:Z
if-eqz v0, :cond_10
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;
:cond_10
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->h()Ljava/lang/String;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->l()[Ljava/lang/String;
iget-object v0, p0, Lorg/apache/log4j/d/a;->n:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lorg/apache/log4j/d/a;->n:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget v1, p0, Lorg/apache/log4j/d/a;->m:I
if-lt v0, v1, :cond_28
invoke-virtual {p0}, Lorg/apache/log4j/d/a;->m()V
:cond_28
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lorg/apache/log4j/d/a;->p:Z
return-void
.end method
.method protected b(Ljava/lang/String;)V
.registers 5
const/4 v1, 0x0
:try_start_1
invoke-virtual {p0}, Lorg/apache/log4j/d/a;->l()Ljava/sql/Connection;
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_15
move-result-object v2
:try_start_5
invoke-interface {v2}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;
move-result-object v1
invoke-interface {v1, p1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
:try_end_c
.catchall {:try_start_5 .. :try_end_c} :catchall_20
if-eqz v1, :cond_11
invoke-interface {v1}, Ljava/sql/Statement;->close()V
:cond_11
invoke-virtual {p0, v2}, Lorg/apache/log4j/d/a;->a(Ljava/sql/Connection;)V
return-void
:catchall_15
move-exception v0
move-object v2, v1
:goto_17
if-eqz v1, :cond_1c
invoke-interface {v1}, Ljava/sql/Statement;->close()V
:cond_1c
invoke-virtual {p0, v2}, Lorg/apache/log4j/d/a;->a(Ljava/sql/Connection;)V
throw v0
:catchall_20
move-exception v0
goto :goto_17
.end method
.method public b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected c(Lorg/apache/log4j/k/k;)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lorg/apache/log4j/d/a;->h()Lorg/apache/log4j/u;
move-result-object v0
invoke-virtual {v0, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public c(Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lorg/apache/log4j/d/a;->l:Ljava/lang/String;
invoke-virtual {p0}, Lorg/apache/log4j/d/a;->h()Lorg/apache/log4j/u;
move-result-object v0
if-nez v0, :cond_11
new-instance v0, Lorg/apache/log4j/af;
invoke-direct {v0, p1}, Lorg/apache/log4j/af;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lorg/apache/log4j/d/a;->b(Lorg/apache/log4j/u;)V
:goto_10
return-void
:cond_11
invoke-virtual {p0}, Lorg/apache/log4j/d/a;->h()Lorg/apache/log4j/u;
move-result-object v0
check-cast v0, Lorg/apache/log4j/af;
invoke-virtual {v0, p1}, Lorg/apache/log4j/af;->a(Ljava/lang/String;)V
goto :goto_10
.end method
.method public c()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/log4j/d/a;->p:Z
return v0
.end method
.method public d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/d/a;->i:Ljava/lang/String;
return-void
.end method
.method public e(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/d/a;->a:Ljava/lang/String;
return-void
.end method
.method public f(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/d/a;->j:Ljava/lang/String;
return-void
.end method
.method public finalize()V
.registers 1
invoke-virtual {p0}, Lorg/apache/log4j/d/a;->a()V
return-void
.end method
.method public g(Ljava/lang/String;)V
.registers 6
:try_start_0
invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:goto_3
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
iget-object v1, p0, Lorg/apache/log4j/d/a;->e:Lorg/apache/log4j/k/e;
const-string v2, "Failed to load driver"
const/4 v3, 0x0
invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;Ljava/lang/Exception;I)V
goto :goto_3
.end method
.method protected l()Ljava/sql/Connection;
.registers 4
invoke-static {}, Ljava/sql/DriverManager;->getDrivers()Ljava/util/Enumeration;
move-result-object v0
invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-nez v0, :cond_f
const-string v0, "sun.jdbc.odbc.JdbcOdbcDriver"
invoke-virtual {p0, v0}, Lorg/apache/log4j/d/a;->g(Ljava/lang/String;)V
:cond_f
iget-object v0, p0, Lorg/apache/log4j/d/a;->k:Ljava/sql/Connection;
if-nez v0, :cond_1f
iget-object v0, p0, Lorg/apache/log4j/d/a;->a:Ljava/lang/String;
iget-object v1, p0, Lorg/apache/log4j/d/a;->i:Ljava/lang/String;
iget-object v2, p0, Lorg/apache/log4j/d/a;->j:Ljava/lang/String;
invoke-static {v0, v1, v2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/d/a;->k:Ljava/sql/Connection;
:cond_1f
iget-object v0, p0, Lorg/apache/log4j/d/a;->k:Ljava/sql/Connection;
return-object v0
.end method
.method public m()V
.registers 7
iget-object v0, p0, Lorg/apache/log4j/d/a;->o:Ljava/util/ArrayList;
iget-object v1, p0, Lorg/apache/log4j/d/a;->n:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V
iget-object v0, p0, Lorg/apache/log4j/d/a;->n:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_40
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/k/k;
:try_start_1d
invoke-virtual {p0, v0}, Lorg/apache/log4j/d/a;->c(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lorg/apache/log4j/d/a;->b(Ljava/lang/String;)V
:try_end_24
.catchall {:try_start_1d .. :try_end_24} :catchall_39
.catch Ljava/sql/SQLException; {:try_start_1d .. :try_end_24} :catch_2a
iget-object v1, p0, Lorg/apache/log4j/d/a;->o:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_11
:catch_2a
move-exception v1
:try_start_2b
iget-object v3, p0, Lorg/apache/log4j/d/a;->e:Lorg/apache/log4j/k/e;
const-string v4, "Failed to excute sql"
const/4 v5, 0x2
invoke-interface {v3, v4, v1, v5}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;Ljava/lang/Exception;I)V
:try_end_33
.catchall {:try_start_2b .. :try_end_33} :catchall_39
iget-object v1, p0, Lorg/apache/log4j/d/a;->o:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_11
:catchall_39
move-exception v1
iget-object v2, p0, Lorg/apache/log4j/d/a;->o:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
throw v1
:cond_40
iget-object v0, p0, Lorg/apache/log4j/d/a;->n:Ljava/util/ArrayList;
iget-object v1, p0, Lorg/apache/log4j/d/a;->o:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
iget-object v0, p0, Lorg/apache/log4j/d/a;->o:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
return-void
.end method
.method public n()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/d/a;->l:Ljava/lang/String;
return-object v0
.end method
.method public o()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/d/a;->i:Ljava/lang/String;
return-object v0
.end method
.method public p()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/d/a;->a:Ljava/lang/String;
return-object v0
.end method
.method public q()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/d/a;->j:Ljava/lang/String;
return-object v0
.end method
.method public r()I
.registers 2
iget v0, p0, Lorg/apache/log4j/d/a;->m:I
return v0
.end method