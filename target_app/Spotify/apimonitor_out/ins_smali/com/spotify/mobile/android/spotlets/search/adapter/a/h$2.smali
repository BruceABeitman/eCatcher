.class final Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnLongClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$2;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onLongClick(Landroid/view/View;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$2; onLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$2;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->a(Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;)Ljava/util/WeakHashMap;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;
if-eqz v0, :cond_1f
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$2;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->d(Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;)Lcom/spotify/mobile/android/spotlets/search/a;
move-result-object v1
invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$2;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
const/4 v0, 0x1
:goto_1e
move v2, v0
const-string v1, " - Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$2; onLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_1f
const/4 v0, 0x0
goto :goto_1e
.end method