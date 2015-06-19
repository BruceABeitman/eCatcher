.class public abstract Lcom/spotify/mobile/android/spotlets/artist/b/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/b/b;->a:Ljava/lang/String;
return-void
.end method
.method protected abstract a()Ljava/lang/String;
.end method
.method public final b(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
.registers 5
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/b/b;->f()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-static {p1, v0, v1, p2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/b/b;->a:Ljava/lang/String;
return-object v0
.end method
.method public final f()Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/b/b;->a()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_22
const-string v0, ""
:goto_c
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "spotify:artist:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/b/b;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_22
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, ":"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/b/b;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_c
.end method
.method public g()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "hm://artist/v1/"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/b/b;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/android?format=json"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/b/b;->f()Ljava/lang/String;
move-result-object v0
return-object v0
.end method