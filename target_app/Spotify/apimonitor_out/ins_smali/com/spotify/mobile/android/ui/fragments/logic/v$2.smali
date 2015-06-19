.class final Lcom/spotify/mobile/android/ui/fragments/logic/v$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/logic/v;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/logic/v;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v$2;->a:Lcom/spotify/mobile/android/ui/fragments/logic/v;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 8
const/4 v4, 0x0
const-string v0, "error_code"
invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
const-string v1, "onSocialError: %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0}, Lcom/spotify/mobile/android/orbit/OrbitServiceObserver;->getSocialErrorAsString(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v4
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
const/4 v1, 0x5
if-ne v0, v1, :cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v$2;->a:Lcom/spotify/mobile/android/ui/fragments/logic/v;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/v;->d(Lcom/spotify/mobile/android/ui/fragments/logic/v;)V
:cond_1d
return-void
.end method