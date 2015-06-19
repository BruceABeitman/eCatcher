.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/b$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/view/j;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/cw;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;Lcom/spotify/mobile/android/util/cw;)Lcom/spotify/mobile/android/util/cw;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->e(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/spotlets/collection/a/a;
move-result-object v0
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/a/a;->a(Lcom/spotify/mobile/android/util/cw;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->j(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Z
move-result v0
if-nez v0, :cond_38
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->k(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/ui/adapter/i;
move-result-object v1
const-string v0, "time_added"
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cw;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_34
const-string v0, "most_played_rank"
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cw;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3e
:cond_34
const/4 v0, 0x1
:goto_35
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/adapter/i;->a(Z)V
:cond_38
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->i(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V
return-void
:cond_3e
const/4 v0, 0x0
goto :goto_35
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->e(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/spotlets/collection/a/a;
move-result-object v0
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/a/a;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->i(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V
return-void
.end method
.method public final a(Z)V
.registers 2
return-void
.end method