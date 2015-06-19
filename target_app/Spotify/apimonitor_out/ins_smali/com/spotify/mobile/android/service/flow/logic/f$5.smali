.class final Lcom/spotify/mobile/android/service/flow/logic/f$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/connections/o;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/logic/f;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$5;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
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
invoke-interface {p1}, Lcom/spotify/mobile/android/service/p;->a()V
:goto_3
:try_end_3
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
const-string v1, ""
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_3
.end method