.class final Lcom/twidroid/net/hockeyapp/android/c$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/twidroid/net/hockeyapp/android/d;
.field final synthetic c:Z
.field final synthetic d:Ljava/lang/String;
.method constructor <init>(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/twidroid/net/hockeyapp/android/c$1;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/twidroid/net/hockeyapp/android/c$1;->b:Lcom/twidroid/net/hockeyapp/android/d;
iput-boolean p3, p0, Lcom/twidroid/net/hockeyapp/android/c$1;->c:Z
iput-object p4, p0, Lcom/twidroid/net/hockeyapp/android/c$1;->d:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/net/hockeyapp/android/c$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/c$1;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/twidroid/net/hockeyapp/android/c;->b(Landroid/content/Context;)V
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/c$1;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/c$1;->b:Lcom/twidroid/net/hockeyapp/android/d;
iget-boolean v2, p0, Lcom/twidroid/net/hockeyapp/android/c$1;->c:Z
iget-object v3, p0, Lcom/twidroid/net/hockeyapp/android/c$1;->d:Ljava/lang/String;
invoke-static {v0, v1, v2, v3}, Lcom/twidroid/net/hockeyapp/android/c;->a(Landroid/content/Context;Lcom/twidroid/net/hockeyapp/android/d;ZLjava/lang/String;)V
const-string v1, " - Lcom/twidroid/net/hockeyapp/android/c$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method