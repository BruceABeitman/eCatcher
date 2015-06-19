.class  Lcom/twidroid/UberSocialProfile$10;
.super Lcom/twidroid/net/c/c;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/UberSocialProfile;
.method constructor <init>(Lcom/twidroid/UberSocialProfile;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$10;->a:Lcom/twidroid/UberSocialProfile;
invoke-direct {p0}, Lcom/twidroid/net/c/c;-><init>()V
return-void
.end method
.method public a(Lcom/twidroid/net/c/a;Landroid/location/Address;)V
.registers 7
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$10;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {p2}, Landroid/location/Address;->getLatitude()D
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
invoke-virtual {p2}, Landroid/location/Address;->getLongitude()D
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/twidroid/UberSocialProfile;->a(Ljava/lang/Double;Ljava/lang/Double;)V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$10;->a:Lcom/twidroid/UberSocialProfile;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile;->I:Lcom/twidroid/net/c/a;
invoke-virtual {v0}, Lcom/twidroid/net/c/a;->a()V
return-void
.end method
.method public a(Lcom/twidroid/net/c/a;Ljava/lang/CharSequence;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$10;->a:Lcom/twidroid/UberSocialProfile;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile;->I:Lcom/twidroid/net/c/a;
invoke-virtual {v0}, Lcom/twidroid/net/c/a;->a()V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$10;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->O(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/twidroid/UberSocialProfile$10$1;
invoke-direct {v1, p0, p2}, Lcom/twidroid/UberSocialProfile$10$1;-><init>(Lcom/twidroid/UberSocialProfile$10;Ljava/lang/CharSequence;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public b(Lcom/twidroid/net/c/a;Landroid/location/Address;)V
.registers 7
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_1c
invoke-virtual {p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_1c
invoke-virtual {p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_1c
invoke-virtual {p2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_3e
invoke-virtual {p2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_3e
invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
move-result v1
if-lez v1, :cond_37
const-string v1, ", "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_37
invoke-virtual {p2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_3e
invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
move-result v1
if-lez v1, :cond_55
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$10;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/twidroid/UberSocialProfile;->c(Ljava/lang/String;)V
:goto_4d
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$10;->a:Lcom/twidroid/UberSocialProfile;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile;->I:Lcom/twidroid/net/c/a;
invoke-virtual {v0}, Lcom/twidroid/net/c/a;->a()V
return-void
:cond_55
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$10;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {p2}, Landroid/location/Address;->getLatitude()D
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
invoke-virtual {p2}, Landroid/location/Address;->getLongitude()D
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/twidroid/UberSocialProfile;->a(Ljava/lang/Double;Ljava/lang/Double;)V
goto :goto_4d
.end method