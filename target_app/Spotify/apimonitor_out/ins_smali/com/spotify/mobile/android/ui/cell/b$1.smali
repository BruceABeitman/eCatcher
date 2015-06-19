.class final Lcom/spotify/mobile/android/ui/cell/b$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/cell/b;
.method constructor <init>(Lcom/spotify/mobile/android/ui/cell/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/b$1;->a:Lcom/spotify/mobile/android/ui/cell/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/cell/b$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/discover/model/Story;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f()Lcom/spotify/mobile/android/util/SpotifyLink;
move-result-object v1
if-nez v1, :cond_d
:goto_c
const-string v1, " - Lcom/spotify/mobile/android/ui/cell/b$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_d
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f()Lcom/spotify/mobile/android/util/SpotifyLink;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/ui/cell/b$3;->a:[I
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f()Lcom/spotify/mobile/android/util/SpotifyLink;
move-result-object v3
invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v3
invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_98
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/b$1;->a:Lcom/spotify/mobile/android/ui/cell/b;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/cell/b;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/b;->a(Lcom/spotify/mobile/android/spotlets/discover/model/Story;)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
:goto_36
const-string v2, "referer"
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->g:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/cell/b$1;->a:Lcom/spotify/mobile/android/ui/cell/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/cell/b;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/b$1;->a:Lcom/spotify/mobile/android/ui/cell/b;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/cell/b;->a(Lcom/spotify/mobile/android/ui/cell/b;)Lcom/spotify/mobile/android/spotlets/discover/c/a;
move-result-object v1
invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/b;->a(Lcom/spotify/mobile/android/spotlets/discover/model/Story;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lcom/spotify/mobile/android/spotlets/discover/c/a;->b(Lcom/spotify/mobile/android/spotlets/discover/model/Story;Ljava/lang/String;)V
goto :goto_c
:pswitch_54
new-instance v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;
invoke-direct {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;-><init>()V
invoke-virtual {v2, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/cell/b$1;->a:Lcom/spotify/mobile/android/ui/cell/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/cell/b;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v1
goto :goto_36
:pswitch_68
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->i()Lcom/spotify/mobile/android/util/SpotifyLink;
move-result-object v2
if-eqz v2, :cond_76
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->i()Lcom/spotify/mobile/android/util/SpotifyLink;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v1
:cond_76
iget-object v2, p0, Lcom/spotify/mobile/android/ui/cell/b$1;->a:Lcom/spotify/mobile/android/ui/cell/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/cell/b;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v2, v1}, Lcom/spotify/mobile/android/spotlets/a/a;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
goto :goto_36
:pswitch_81
iget-object v2, p0, Lcom/spotify/mobile/android/ui/cell/b$1;->a:Lcom/spotify/mobile/android/ui/cell/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/cell/b;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v2, v1}, Lcom/spotify/mobile/android/spotlets/a/a;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
goto :goto_36
:pswitch_8c
iget-object v2, p0, Lcom/spotify/mobile/android/ui/cell/b$1;->a:Lcom/spotify/mobile/android/ui/cell/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/cell/b;->getContext()Landroid/content/Context;
move-result-object v2
const/4 v3, 0x0
invoke-static {v2, v1, v3}, Lcom/spotify/mobile/android/spotlets/artist/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
goto :goto_36
:pswitch_data_98
.packed-switch 0x1
:pswitch_54
:pswitch_68
:pswitch_81
:pswitch_8c
.end packed-switch
.end method