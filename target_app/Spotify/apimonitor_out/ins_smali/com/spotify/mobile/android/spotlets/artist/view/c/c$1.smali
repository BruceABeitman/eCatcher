.class final Lcom/spotify/mobile/android/spotlets/artist/view/c/c$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;
.field final synthetic b:Lcom/spotify/mobile/android/spotlets/artist/view/c/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/c/c;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c$1;->b:Lcom/spotify/mobile/android/spotlets/artist/view/c/c;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c$1;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/artist/view/c/c$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c$1;->b:Lcom/spotify/mobile/android/spotlets/artist/view/c/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->d()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c$1;->b:Lcom/spotify/mobile/android/spotlets/artist/view/c/c;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/c;->d()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/c$1;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;
iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->uri:Ljava/lang/String;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/b/i;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/artist/b/a;
move-result-object v2
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->c()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-static {v1, v2, v3}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/artist/view/c/c$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method