.class final Lcom/spotify/mobile/android/spotlets/share/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/share/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/share/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/share/a$1;->a:Lcom/spotify/mobile/android/spotlets/share/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onFocusChange(Landroid/view/View;Z)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/share/a$1; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-eqz p2, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a$1;->a:Lcom/spotify/mobile/android/spotlets/share/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/share/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;
move-result-object v0
const/4 v1, 0x5
invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
:cond_10
const-string v1, " - Lcom/spotify/mobile/android/spotlets/share/a$1; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method