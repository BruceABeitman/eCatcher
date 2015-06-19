.class public final Lcom/ford/syncV4/c/b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/ford/syncV4/protocol/c;
.implements Lcom/ford/syncV4/transport/f;
.field  a:Lcom/ford/syncV4/transport/h;
.field  b:Lcom/ford/syncV4/protocol/a;
.field  c:Lcom/ford/syncV4/c/a;
.field  d:Ljava/lang/Object;
.field  e:Ljava/lang/Object;
.field private f:Ljava/lang/Object;
.field private g:Ljava/util/Vector;
.method public constructor <init>(Lcom/ford/syncV4/transport/e;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
iput-object v0, p0, Lcom/ford/syncV4/c/b;->b:Lcom/ford/syncV4/protocol/a;
iput-object v0, p0, Lcom/ford/syncV4/c/b;->c:Lcom/ford/syncV4/c/a;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ford/syncV4/c/b;->d:Ljava/lang/Object;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ford/syncV4/c/b;->e:Ljava/lang/Object;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ford/syncV4/c/b;->f:Ljava/lang/Object;
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lcom/ford/syncV4/c/b;->g:Ljava/util/Vector;
new-instance v0, Lcom/ford/syncV4/c/c;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/ford/syncV4/c/c;-><init>(Lcom/ford/syncV4/c/b;B)V
iput-object v0, p0, Lcom/ford/syncV4/c/b;->c:Lcom/ford/syncV4/c/a;
iget-object v1, p0, Lcom/ford/syncV4/c/b;->d:Ljava/lang/Object;
monitor-enter v1
:try_start_31
iget-object v0, p0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
if-eqz v0, :cond_49
iget-object v0, p0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
invoke-virtual {v0}, Lcom/ford/syncV4/transport/h;->e()Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
invoke-virtual {v0}, Lcom/ford/syncV4/transport/h;->b()V
:cond_46
const/4 v0, 0x0
iput-object v0, p0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
:cond_49
invoke-virtual {p1}, Lcom/ford/syncV4/transport/e;->a()Lcom/ford/syncV4/transport/TransportType;
move-result-object v0
sget-object v2, Lcom/ford/syncV4/transport/TransportType;->a:Lcom/ford/syncV4/transport/TransportType;
if-ne v0, v2, :cond_72
check-cast p1, Lcom/ford/syncV4/transport/d;
new-instance v0, Lcom/ford/syncV4/transport/a;
invoke-virtual {p1}, Lcom/ford/syncV4/transport/d;->b()Z
move-result v2
invoke-direct {v0, p0, v2}, Lcom/ford/syncV4/transport/a;-><init>(Lcom/ford/syncV4/transport/f;Z)V
iput-object v0, p0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
:goto_5e
:cond_5e
monitor-exit v1
:try_end_5f
.catchall {:try_start_31 .. :try_end_5f} :catchall_84
iget-object v1, p0, Lcom/ford/syncV4/c/b;->e:Ljava/lang/Object;
monitor-enter v1
:try_start_62
iget-object v0, p0, Lcom/ford/syncV4/c/b;->b:Lcom/ford/syncV4/protocol/a;
if-eqz v0, :cond_69
const/4 v0, 0x0
iput-object v0, p0, Lcom/ford/syncV4/c/b;->b:Lcom/ford/syncV4/protocol/a;
:cond_69
new-instance v0, Lcom/ford/syncV4/protocol/f;
invoke-direct {v0, p0}, Lcom/ford/syncV4/protocol/f;-><init>(Lcom/ford/syncV4/protocol/c;)V
iput-object v0, p0, Lcom/ford/syncV4/c/b;->b:Lcom/ford/syncV4/protocol/a;
monitor-exit v1
:try_end_71
.catchall {:try_start_62 .. :try_end_71} :catchall_87
return-void
:try_start_72
:cond_72
invoke-virtual {p1}, Lcom/ford/syncV4/transport/e;->a()Lcom/ford/syncV4/transport/TransportType;
move-result-object v0
sget-object v2, Lcom/ford/syncV4/transport/TransportType;->b:Lcom/ford/syncV4/transport/TransportType;
if-ne v0, v2, :cond_5e
new-instance v0, Lcom/ford/syncV4/transport/TCPTransport;
check-cast p1, Lcom/ford/syncV4/transport/j;
invoke-direct {v0, p1, p0}, Lcom/ford/syncV4/transport/TCPTransport;-><init>(Lcom/ford/syncV4/transport/j;Lcom/ford/syncV4/transport/f;)V
iput-object v0, p0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
:try_end_83
.catchall {:try_start_72 .. :try_end_83} :catchall_84
goto :goto_5e
:catchall_84
move-exception v0
monitor-exit v1
throw v0
:catchall_87
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic a(Lcom/ford/syncV4/c/b;B)Lcom/ford/syncV4/c/d;
.registers 5
iget-object v0, p0, Lcom/ford/syncV4/c/b;->g:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/c/d;
invoke-virtual {v0}, Lcom/ford/syncV4/c/d;->a()B
move-result v2
if-ne v2, p1, :cond_6
:goto_18
return-object v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method
.method static synthetic a(Lcom/ford/syncV4/c/b;)Ljava/util/Vector;
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/c/b;->g:Ljava/util/Vector;
return-object v0
.end method
.method private d()V
.registers 4
iget-object v1, p0, Lcom/ford/syncV4/c/b;->e:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/ford/syncV4/c/b;->b:Lcom/ford/syncV4/protocol/a;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/ford/syncV4/c/b;->b:Lcom/ford/syncV4/protocol/a;
sget-object v2, Lcom/ford/syncV4/protocol/enums/d;->b:Lcom/ford/syncV4/protocol/enums/d;
invoke-virtual {v0, v2}, Lcom/ford/syncV4/protocol/a;->a(Lcom/ford/syncV4/protocol/enums/d;)V
:cond_e
monitor-exit v1
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_10
return-void
:catchall_10
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a()Ljava/lang/Boolean;
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
if-nez v0, :cond_a
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
invoke-virtual {v0}, Lcom/ford/syncV4/transport/h;->e()Ljava/lang/Boolean;
move-result-object v0
goto :goto_9
.end method
.method final a(Lcom/ford/syncV4/c/d;)V
.registers 4
iget-object v1, p0, Lcom/ford/syncV4/c/b;->f:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/ford/syncV4/c/b;->g:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/ford/syncV4/c/b;->g:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
:cond_10
monitor-exit v1
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_21
invoke-virtual {p0}, Lcom/ford/syncV4/c/b;->a()Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_24
iget-object v0, p0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
invoke-virtual {v0}, Lcom/ford/syncV4/transport/h;->a()V
:goto_20
return-void
:catchall_21
move-exception v0
monitor-exit v1
throw v0
:cond_24
invoke-direct {p0}, Lcom/ford/syncV4/c/b;->d()V
goto :goto_20
.end method
.method public final a(Lcom/ford/syncV4/protocol/e;)V
.registers 3
iget-object v0, p0, Lcom/ford/syncV4/c/b;->c:Lcom/ford/syncV4/c/a;
invoke-interface {v0, p1}, Lcom/ford/syncV4/c/a;->a(Lcom/ford/syncV4/protocol/e;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/protocol/enums/d;BBLjava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/ford/syncV4/c/b;->c:Lcom/ford/syncV4/c/a;
invoke-interface {v0, p1, p2, p3, p4}, Lcom/ford/syncV4/c/a;->a(Lcom/ford/syncV4/protocol/enums/d;BBLjava/lang/String;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/protocol/enums/d;BLjava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/ford/syncV4/c/b;->c:Lcom/ford/syncV4/c/a;
invoke-interface {v0, p1, p2, p3}, Lcom/ford/syncV4/c/a;->a(Lcom/ford/syncV4/protocol/enums/d;BLjava/lang/String;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/ford/syncV4/c/b;->c:Lcom/ford/syncV4/c/a;
invoke-interface {v0, p1}, Lcom/ford/syncV4/c/a;->a(Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/Exception;)V
.registers 4
iget-object v0, p0, Lcom/ford/syncV4/c/b;->c:Lcom/ford/syncV4/c/a;
invoke-interface {v0, p1, p2}, Lcom/ford/syncV4/c/a;->b(Ljava/lang/String;Ljava/lang/Exception;)V
return-void
.end method
.method public final a([BI)V
.registers 5
iget-object v1, p0, Lcom/ford/syncV4/c/b;->e:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/ford/syncV4/c/b;->b:Lcom/ford/syncV4/protocol/a;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/ford/syncV4/c/b;->b:Lcom/ford/syncV4/protocol/a;
invoke-virtual {v0, p1, p2}, Lcom/ford/syncV4/protocol/a;->a([BI)V
:cond_c
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_e
return-void
:catchall_e
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a([BII)V
.registers 6
iget-object v1, p0, Lcom/ford/syncV4/c/b;->d:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
invoke-virtual {v0, p1, p2, p3}, Lcom/ford/syncV4/transport/h;->b([BII)Z
:cond_c
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_e
return-void
:catchall_e
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final b()V
.registers 4
iget-object v1, p0, Lcom/ford/syncV4/c/b;->e:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/ford/syncV4/c/b;->b:Lcom/ford/syncV4/protocol/a;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/ford/syncV4/c/b;->g:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_d
:goto_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/c/d;
invoke-virtual {v0}, Lcom/ford/syncV4/c/d;->a()B
move-result v0
if-nez v0, :cond_d
invoke-direct {p0}, Lcom/ford/syncV4/c/b;->d()V
:try_end_22
.catchall {:try_start_3 .. :try_end_22} :catchall_23
goto :goto_d
:catchall_23
move-exception v0
monitor-exit v1
throw v0
:cond_26
:try_start_26
monitor-exit v1
:try_end_27
.catchall {:try_start_26 .. :try_end_27} :catchall_23
return-void
.end method
.method public final b(Lcom/ford/syncV4/c/d;)V
.registers 8
iget-object v1, p0, Lcom/ford/syncV4/c/b;->f:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/ford/syncV4/c/b;->g:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/ford/syncV4/c/b;->g:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
if-nez v0, :cond_4d
const/4 v0, 0x1
:goto_11
invoke-virtual {p1}, Lcom/ford/syncV4/c/d;->a()B
move-result v2
iget-object v3, p0, Lcom/ford/syncV4/c/b;->e:Ljava/lang/Object;
monitor-enter v3
:try_end_18
.catchall {:try_start_3 .. :try_end_18} :catchall_52
:try_start_18
iget-object v4, p0, Lcom/ford/syncV4/c/b;->b:Lcom/ford/syncV4/protocol/a;
if-eqz v4, :cond_38
iget-object v4, p0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
if-eqz v4, :cond_33
iget-object v4, p0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
invoke-virtual {v4}, Lcom/ford/syncV4/transport/h;->e()Ljava/lang/Boolean;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
move-result v4
if-eqz v4, :cond_33
iget-object v4, p0, Lcom/ford/syncV4/c/b;->b:Lcom/ford/syncV4/protocol/a;
sget-object v5, Lcom/ford/syncV4/protocol/enums/d;->b:Lcom/ford/syncV4/protocol/enums/d;
invoke-virtual {v4, v5, v2}, Lcom/ford/syncV4/protocol/a;->a(Lcom/ford/syncV4/protocol/enums/d;B)V
:cond_33
if-eqz v0, :cond_38
const/4 v2, 0x0
iput-object v2, p0, Lcom/ford/syncV4/c/b;->b:Lcom/ford/syncV4/protocol/a;
:cond_38
monitor-exit v3
:try_start_39
:try_end_39
.catchall {:try_start_18 .. :try_end_39} :catchall_4f
iget-object v2, p0, Lcom/ford/syncV4/c/b;->d:Ljava/lang/Object;
monitor-enter v2
:try_end_3c
.catchall {:try_start_39 .. :try_end_3c} :catchall_52
if-eqz v0, :cond_4a
:try_start_3e
iget-object v0, p0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
if-eqz v0, :cond_47
iget-object v0, p0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
invoke-virtual {v0}, Lcom/ford/syncV4/transport/h;->b()V
:cond_47
const/4 v0, 0x0
iput-object v0, p0, Lcom/ford/syncV4/c/b;->a:Lcom/ford/syncV4/transport/h;
:cond_4a
monitor-exit v2
:try_end_4b
.catchall {:try_start_3e .. :try_end_4b} :catchall_55
:try_start_4b
monitor-exit v1
return-void
:cond_4d
const/4 v0, 0x0
goto :goto_11
:catchall_4f
move-exception v0
monitor-exit v3
throw v0
:try_end_52
.catchall {:try_start_4b .. :try_end_52} :catchall_52
:catchall_52
move-exception v0
monitor-exit v1
throw v0
:catchall_55
move-exception v0
:try_start_56
monitor-exit v2
throw v0
:try_end_58
.catchall {:try_start_56 .. :try_end_58} :catchall_52
.end method
.method public final b(Ljava/lang/String;Ljava/lang/Exception;)V
.registers 4
iget-object v0, p0, Lcom/ford/syncV4/c/b;->c:Lcom/ford/syncV4/c/a;
invoke-interface {v0, p1, p2}, Lcom/ford/syncV4/c/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V
return-void
.end method
.method public final c()I
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/c/b;->g:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
return v0
.end method