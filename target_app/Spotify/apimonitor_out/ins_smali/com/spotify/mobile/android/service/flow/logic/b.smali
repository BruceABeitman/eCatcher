.class final Lcom/spotify/mobile/android/service/flow/logic/b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/flow/logic/a;
.field private final a:Lcom/spotify/mobile/android/service/flow/logic/a;
.field private b:Z
.field private c:Ljava/lang/Object;
.method public constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/a;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/b;->b:Z
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/b;->c:Ljava/lang/Object;
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/b;->a:Lcom/spotify/mobile/android/service/flow/logic/a;
return-void
.end method
.method public final a()V
.registers 3
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/b;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/b;->b:Z
if-eqz v0, :cond_9
monitor-exit v1
:goto_8
return-void
:cond_9
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/b;->b:Z
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_13
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/b;->a:Lcom/spotify/mobile/android/service/flow/logic/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/logic/a;->a()V
goto :goto_8
:catchall_13
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;)V
.registers 4
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/b;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/b;->b:Z
if-eqz v0, :cond_9
monitor-exit v1
:goto_8
return-void
:cond_9
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/b;->b:Z
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_13
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/b;->a:Lcom/spotify/mobile/android/service/flow/logic/a;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/flow/logic/a;->a(Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;)V
goto :goto_8
:catchall_13
move-exception v0
monitor-exit v1
throw v0
.end method