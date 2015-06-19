.class final Lcom/spotify/mobile/android/spotlets/openaccess/a$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field final synthetic b:Lcom/spotify/mobile/android/spotlets/openaccess/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/a;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a$2;->b:Lcom/spotify/mobile/android/spotlets/openaccess/a;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a$2;->a:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/openaccess/a$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a$2;->b:Lcom/spotify/mobile/android/spotlets/openaccess/a;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a$2;->a:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/openaccess/a$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method