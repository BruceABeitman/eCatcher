.class final Lcom/spotify/mobile/android/spotlets/browse/a$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/app/Activity;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/spotify/mobile/android/spotlets/browse/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/a;Landroid/app/Activity;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/a$5;->c:Lcom/spotify/mobile/android/spotlets/browse/a;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/a$5;->a:Landroid/app/Activity;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/a$5;->b:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/browse/a$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$5;->c:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->g(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/b/c;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a$5;->a:Landroid/app/Activity;
const-string v2, "new_releases"
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/a$5;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/browse/a$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method