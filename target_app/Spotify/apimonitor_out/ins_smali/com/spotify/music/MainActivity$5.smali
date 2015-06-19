.class final Lcom/spotify/music/MainActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/session/d;
.field final synthetic a:Lcom/spotify/music/MainActivity;
.method constructor <init>(Lcom/spotify/music/MainActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/music/MainActivity$5;->a:Lcom/spotify/music/MainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/session/a;)V
.registers 4
iget-object v0, p0, Lcom/spotify/music/MainActivity$5;->a:Lcom/spotify/music/MainActivity;
invoke-static {v0}, Lcom/spotify/music/MainActivity;->h(Lcom/spotify/music/MainActivity;)Lcom/spotify/music/a;
move-result-object v0
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/spotify/music/a;->sendEmptyMessage(I)Z
iget-object v0, p0, Lcom/spotify/music/MainActivity$5;->a:Lcom/spotify/music/MainActivity;
invoke-static {v0}, Lcom/spotify/music/MainActivity;->i(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/fragments/g;
move-result-object v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/spotify/music/MainActivity$5;->a:Lcom/spotify/music/MainActivity;
invoke-static {v0}, Lcom/spotify/music/MainActivity;->i(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/fragments/g;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/g;->D()V
:cond_1b
iget-object v0, p0, Lcom/spotify/music/MainActivity$5;->a:Lcom/spotify/music/MainActivity;
iget-object v1, p0, Lcom/spotify/music/MainActivity$5;->a:Lcom/spotify/music/MainActivity;
invoke-static {v1}, Lcom/spotify/music/MainActivity;->j(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/service/session/e;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/session/e;->h()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/music/MainActivity;->a(Lcom/spotify/music/MainActivity;Ljava/lang/String;)V
new-instance v0, Lcom/spotify/mobile/android/util/c/c;
invoke-direct {v0}, Lcom/spotify/mobile/android/util/c/c;-><init>()V
iget-object v0, p0, Lcom/spotify/music/MainActivity$5;->a:Lcom/spotify/music/MainActivity;
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->a()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V
const-class v0, Lcom/spotify/mobile/android/util/dc;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/dc;
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/dc;->a(Ljava/lang/String;)V
return-void
.end method