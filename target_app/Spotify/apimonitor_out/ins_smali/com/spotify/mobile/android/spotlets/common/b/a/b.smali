.class final Lcom/spotify/mobile/android/spotlets/common/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/common/b/a/d;
.field private final a:Ljava/lang/String;
.field private final b:Z
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.field private final e:Z
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;->b:Z
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;->c:Ljava/lang/String;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;->d:Ljava/lang/String;
iput-boolean p5, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;->e:Z
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;->c:Ljava/lang/String;
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;->d:Ljava/lang/String;
return-object v0
.end method
.method public final d()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;->e:Z
return v0
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;->b:Z
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;->a:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;->d:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;->c:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1e
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "user=\""
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\"; productType=\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\";countryCode=\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\"; loggedIn="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;->b:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method