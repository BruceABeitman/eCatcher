.class  Lcom/twidroid/net/hockeyapp/android/f$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/twidroid/net/hockeyapp/android/f;
.method constructor <init>(Lcom/twidroid/net/hockeyapp/android/f;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/hockeyapp/android/f$2;->a:Lcom/twidroid/net/hockeyapp/android/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/net/hockeyapp/android/f$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/f$2;->a:Lcom/twidroid/net/hockeyapp/android/f;
invoke-static {v0}, Lcom/twidroid/net/hockeyapp/android/f;->a(Lcom/twidroid/net/hockeyapp/android/f;)Lcom/twidroid/net/hockeyapp/android/e;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/f$2;->a:Lcom/twidroid/net/hockeyapp/android/f;
const/4 v2, 0x1
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/twidroid/net/hockeyapp/android/e;->a(Lcom/twidroid/net/hockeyapp/android/f;Ljava/lang/Boolean;)V
const-string v1, " - Lcom/twidroid/net/hockeyapp/android/f$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method