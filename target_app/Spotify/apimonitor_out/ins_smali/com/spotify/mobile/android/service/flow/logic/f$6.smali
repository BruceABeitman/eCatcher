.class final Lcom/spotify/mobile/android/service/flow/logic/f$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/connections/o;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/spotify/mobile/android/service/flow/logic/f;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/f;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$6;->b:Lcom/spotify/mobile/android/service/flow/logic/f;
iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/logic/f$6;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/p;)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$6;->a:Ljava/lang/String;
invoke-interface {p1, v0}, Lcom/spotify/mobile/android/service/p;->a(Ljava/lang/String;)V
:goto_5
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
const-string v1, ""
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_5
.end method