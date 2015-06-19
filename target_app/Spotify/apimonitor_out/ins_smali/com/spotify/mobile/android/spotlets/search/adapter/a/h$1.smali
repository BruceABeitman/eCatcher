.class final Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$1;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$1;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->a(Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;)Ljava/util/WeakHashMap;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$1;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->b(Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;)Ljava/util/WeakHashMap;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$1;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->c(Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;)Lcom/spotify/mobile/android/spotlets/search/adapter/a/i;
move-result-object v2
invoke-interface {v2, v1, v0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/i;->a(ILcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method