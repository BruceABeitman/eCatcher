.class public final Lcom/spotify/mobile/android/spotlets/browse/b/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field protected a:Lcom/spotify/mobile/android/spotlets/browse/b/a;
.field private final b:Z
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;Z)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/a;
invoke-direct {v0, p1}, Lcom/spotify/mobile/android/spotlets/browse/b/a;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b/c;->a:Lcom/spotify/mobile/android/spotlets/browse/b/a;
iput-boolean p2, p0, Lcom/spotify/mobile/android/spotlets/browse/b/c;->b:Z
return-void
.end method
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 10
const-string v0, "new_releases"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_20
const-string v4, "spotify:app:browse:new_releases"
invoke-static {p1, v4, p3}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
:goto_e
invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b/c;->a:Lcom/spotify/mobile/android/spotlets/browse/b/a;
const/4 v2, -0x1
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/browse/b/c;->b:Z
if-eqz v1, :cond_52
const-string v5, "root"
:goto_1a
move-object v1, p1
move-object v3, p3
invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/b/a;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_20
invoke-static {p2}, Lcom/spotify/mobile/android/spotlets/browse/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " \u2014 "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const v1, 0x7f0f006c
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v4, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "genre"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "eternalScroll"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
goto :goto_e
:cond_52
const-string v5, "overview"
goto :goto_1a
.end method