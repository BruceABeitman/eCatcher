.class public abstract Lcom/ford/syncV4/protocol/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Lcom/ford/syncV4/protocol/c;
.field private b:Ljava/lang/Object;
.method public constructor <init>(Lcom/ford/syncV4/protocol/c;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/ford/syncV4/protocol/a;->a:Lcom/ford/syncV4/protocol/c;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ford/syncV4/protocol/a;->b:Ljava/lang/Object;
if-nez p1, :cond_17
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Provided protocol listener interface reference is null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
iput-object p1, p0, Lcom/ford/syncV4/protocol/a;->a:Lcom/ford/syncV4/protocol/c;
return-void
.end method
.method protected static a(Lcom/ford/syncV4/protocol/d;[BLcom/ford/syncV4/protocol/g;)V
.registers 9
sget-object v0, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->b:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
const/4 v3, 0x0
array-length v4, p1
const-string v5, "42baba60-eb57-11df-98cf-0800200c9a66"
move-object v1, p0
move-object v2, p1
invoke-static/range {v0 .. v5}, Lcom/ford/syncV4/trace/e;->a(Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;Lcom/ford/syncV4/protocol/d;[BIILjava/lang/String;)V
invoke-virtual {p2, p0, p1}, Lcom/ford/syncV4/protocol/g;->a(Lcom/ford/syncV4/protocol/d;[B)V
return-void
.end method
.method private a([BII)V
.registers 5
iget-object v0, p0, Lcom/ford/syncV4/protocol/a;->a:Lcom/ford/syncV4/protocol/c;
invoke-interface {v0, p1, p2, p3}, Lcom/ford/syncV4/protocol/c;->a([BII)V
return-void
.end method
.method protected final a(Lcom/ford/syncV4/protocol/d;[BII)V
.registers 11
sget-object v0, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->a:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;
const-string v5, "42baba60-eb57-11df-98cf-0800200c9a66"
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-static/range {v0 .. v5}, Lcom/ford/syncV4/trace/e;->a(Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;Lcom/ford/syncV4/protocol/d;[BIILjava/lang/String;)V
iget-object v1, p0, Lcom/ford/syncV4/protocol/a;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_e
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->a()[B
move-result-object v0
const/4 v2, 0x0
array-length v3, v0
invoke-direct {p0, v0, v2, v3}, Lcom/ford/syncV4/protocol/a;->a([BII)V
if-eqz p2, :cond_1c
invoke-direct {p0, p2, p3, p4}, Lcom/ford/syncV4/protocol/a;->a([BII)V
:cond_1c
monitor-exit v1
:try_end_1d
.catchall {:try_start_e .. :try_end_1d} :catchall_1e
return-void
:catchall_1e
move-exception v0
monitor-exit v1
throw v0
.end method
.method public abstract a(Lcom/ford/syncV4/protocol/e;)V
.end method
.method public abstract a(Lcom/ford/syncV4/protocol/enums/d;)V
.end method
.method public abstract a(Lcom/ford/syncV4/protocol/enums/d;B)V
.end method
.method protected final a(Lcom/ford/syncV4/protocol/enums/d;BBLjava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/ford/syncV4/protocol/a;->a:Lcom/ford/syncV4/protocol/c;
invoke-interface {v0, p1, p2, p3, p4}, Lcom/ford/syncV4/protocol/c;->a(Lcom/ford/syncV4/protocol/enums/d;BBLjava/lang/String;)V
return-void
.end method
.method protected final a(Lcom/ford/syncV4/protocol/enums/d;BLjava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/ford/syncV4/protocol/a;->a:Lcom/ford/syncV4/protocol/c;
invoke-interface {v0, p1, p2, p3}, Lcom/ford/syncV4/protocol/c;->a(Lcom/ford/syncV4/protocol/enums/d;BLjava/lang/String;)V
return-void
.end method
.method protected final a(Ljava/lang/String;Ljava/lang/Exception;)V
.registers 4
iget-object v0, p0, Lcom/ford/syncV4/protocol/a;->a:Lcom/ford/syncV4/protocol/c;
invoke-interface {v0, p1, p2}, Lcom/ford/syncV4/protocol/c;->a(Ljava/lang/String;Ljava/lang/Exception;)V
return-void
.end method
.method public abstract a([BI)V
.end method
.method protected final b(Lcom/ford/syncV4/protocol/e;)V
.registers 3
iget-object v0, p0, Lcom/ford/syncV4/protocol/a;->a:Lcom/ford/syncV4/protocol/c;
invoke-interface {v0, p1}, Lcom/ford/syncV4/protocol/c;->a(Lcom/ford/syncV4/protocol/e;)V
return-void
.end method