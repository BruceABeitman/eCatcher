.class final Lcom/spotify/mobile/android/spotlets/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/spotify/mobile/android/spotlets/a/d;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/a/d;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/d$1;->b:Lcom/spotify/mobile/android/spotlets/a/d;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/a/d$1;->a:Landroid/content/Context;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/a/d$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d$1;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/d$1;->b:Lcom/spotify/mobile/android/spotlets/a/d;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/a/d;->a(Lcom/spotify/mobile/android/spotlets/a/d;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/d$1;->b:Lcom/spotify/mobile/android/spotlets/a/d;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/a/d;->b(Lcom/spotify/mobile/android/spotlets/a/d;)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/d$1;->a:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/a/d$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method