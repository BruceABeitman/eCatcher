.class final Lcom/spotify/mobile/android/service/flow/login/a/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/flow/login/a/d;
.field private final a:Z
.field private final b:Z
.field private final c:Z
.field private final d:Ljava/lang/String;
.field private final e:Ljava/lang/String;
.method constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->b:Z
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->a:Z
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->c:Z
const-string v0, ""
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->d:Ljava/lang/String;
const-string v0, ""
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->e:Ljava/lang/String;
return-void
.end method
.method public final a()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->a:Z
return v0
.end method
.method public final b()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->b:Z
return v0
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->c:Z
return v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->d:Ljava/lang/String;
return-object v0
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->e:Ljava/lang/String;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_b
instance-of v2, p1, Lcom/spotify/mobile/android/service/flow/login/a/d;
if-nez v2, :cond_d
:cond_b
move v0, v1
goto :goto_4
:cond_d
check-cast p1, Lcom/spotify/mobile/android/service/flow/login/a/d;
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->a:Z
invoke-interface {p1}, Lcom/spotify/mobile/android/service/flow/login/a/d;->a()Z
move-result v3
if-ne v2, v3, :cond_3f
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->b:Z
invoke-interface {p1}, Lcom/spotify/mobile/android/service/flow/login/a/d;->b()Z
move-result v3
if-ne v2, v3, :cond_3f
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->c:Z
invoke-interface {p1}, Lcom/spotify/mobile/android/service/flow/login/a/d;->c()Z
move-result v3
if-ne v2, v3, :cond_3f
iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->d:Ljava/lang/String;
invoke-interface {p1}, Lcom/spotify/mobile/android/service/flow/login/a/d;->d()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_3f
iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->e:Ljava/lang/String;
invoke-interface {p1}, Lcom/spotify/mobile/android/service/flow/login/a/d;->e()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_4
:cond_3f
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->a:Z
if-eqz v0, :cond_31
move v0, v1
:goto_7
mul-int/lit8 v3, v0, 0x1f
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->b:Z
if-eqz v0, :cond_33
move v0, v1
:goto_e
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x1f
iget-boolean v3, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->c:Z
if-eqz v3, :cond_35
:goto_15
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x1f
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->d:Ljava/lang/String;
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->d:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_22
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->e:Ljava/lang/String;
if-eqz v1, :cond_2f
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->e:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v2
:cond_2f
add-int/2addr v0, v2
return v0
:cond_31
move v0, v2
goto :goto_7
:cond_33
move v0, v2
goto :goto_e
:cond_35
move v1, v2
goto :goto_15
:cond_37
move v0, v2
goto :goto_22
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "SimpleLicensesProperties{mCanAcceptLicensesInOneStep="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->a:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mCanPretickEula="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->b:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mRequiresMarketingOptIn="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->c:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mContactUsUrl=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x27
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mCountry="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/a/e;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method