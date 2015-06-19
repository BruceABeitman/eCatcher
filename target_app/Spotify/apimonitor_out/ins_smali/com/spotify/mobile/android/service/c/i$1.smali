.class final Lcom/spotify/mobile/android/service/c/i$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/service/c/i;
.method constructor <init>(Lcom/spotify/mobile/android/service/c/i;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/c/i$1;->a:Lcom/spotify/mobile/android/service/c/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/i$1;->a:Lcom/spotify/mobile/android/service/c/i;
invoke-static {v0}, Lcom/spotify/mobile/android/service/c/i;->a(Lcom/spotify/mobile/android/service/c/i;)Lcom/spotify/mobile/android/g/a;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/c/i$1;->a:Lcom/spotify/mobile/android/service/c/i;
iget-object v1, v1, Lcom/spotify/mobile/android/service/c/i;->e:Landroid/os/Handler;
const/16 v2, 0xa
invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
return-void
.end method