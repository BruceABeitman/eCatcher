.class final Lcom/spotify/mobile/android/spotlets/browse/view/c$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/view/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/view/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/c$1;->a:Lcom/spotify/mobile/android/spotlets/browse/view/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/browse/view/c$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v0, p1
check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->a()Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/c$1;->a:Lcom/spotify/mobile/android/spotlets/browse/view/c;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/browse/view/c;->a(Lcom/spotify/mobile/android/spotlets/browse/view/c;)Lcom/spotify/mobile/android/spotlets/browse/b/c;
move-result-object v1
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v2, v3, v0}, Lcom/spotify/mobile/android/spotlets/browse/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/browse/view/c$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method