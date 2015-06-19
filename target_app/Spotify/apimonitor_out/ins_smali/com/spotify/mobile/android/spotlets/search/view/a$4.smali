.class final Lcom/spotify/mobile/android/spotlets/search/view/a$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/view/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/view/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$4;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onFocusChange(Landroid/view/View;Z)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/search/view/a$4; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$4;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/a;->a:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_8
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_18
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/search/view/e;
invoke-interface {v0, p2}, Lcom/spotify/mobile/android/spotlets/search/view/e;->a(Z)V
goto :goto_8
:cond_18
const-string v1, " - Lcom/spotify/mobile/android/spotlets/search/view/a$4; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method