.class final Lcom/spotify/mobile/android/spotlets/search/b$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/search/view/e;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/b;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/b$1;->a:Lcom/spotify/mobile/android/spotlets/search/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$1;->a:Lcom/spotify/mobile/android/spotlets/search/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/p;
if-eqz v0, :cond_13
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/p;->w_()Z
move-result v1
if-eqz v1, :cond_13
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/p;->A_()V
:cond_13
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$1;->a:Lcom/spotify/mobile/android/spotlets/search/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/b;->o()Z
move-result v0
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$1;->a:Lcom/spotify/mobile/android/spotlets/search/b;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;
invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_8
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b$1;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$1;->a:Lcom/spotify/mobile/android/spotlets/search/b;
iput-object p1, v0, Lcom/spotify/mobile/android/spotlets/search/b;->c:Ljava/lang/String;
const-string v0, "search text changed to \"%s\""
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$1;->a:Lcom/spotify/mobile/android/spotlets/search/b;
sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
iput-object v1, v0, Lcom/spotify/mobile/android/spotlets/search/b;->h:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$1;->a:Lcom/spotify/mobile/android/spotlets/search/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/b;->M()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$1;->a:Lcom/spotify/mobile/android/spotlets/search/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/b;->N()V
goto :goto_8
.end method
.method public final a(Z)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$1;->a:Lcom/spotify/mobile/android/spotlets/search/b;
iget-boolean v0, v0, Lcom/spotify/mobile/android/spotlets/search/b;->ad:Z
if-nez v0, :cond_b
if-eqz p1, :cond_b
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/b$1;->a()V
:cond_b
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$1;->a:Lcom/spotify/mobile/android/spotlets/search/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/b;->O()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$1;->a:Lcom/spotify/mobile/android/spotlets/search/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/b;->o()Z
move-result v0
if-eqz v0, :cond_23
invoke-static {p1}, Lcom/spotify/mobile/android/util/SpotifyLink;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$1;->a:Lcom/spotify/mobile/android/spotlets/search/b;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b$1;->a:Lcom/spotify/mobile/android/spotlets/search/b;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, p1}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/b;->a(Landroid/content/Intent;)V
:goto_22
return-void
:cond_23
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$1;->a:Lcom/spotify/mobile/android/spotlets/search/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/b;->P()V
goto :goto_22
.end method