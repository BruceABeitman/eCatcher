.class  Lcom/twidroid/UberSocialProfile$13;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/Double;
.field final synthetic b:Ljava/lang/Double;
.field final synthetic c:Lcom/twidroid/UberSocialProfile;
.method constructor <init>(Lcom/twidroid/UberSocialProfile;Ljava/lang/Double;Ljava/lang/Double;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
iput-object p2, p0, Lcom/twidroid/UberSocialProfile$13;->a:Ljava/lang/Double;
iput-object p3, p0, Lcom/twidroid/UberSocialProfile$13;->b:Ljava/lang/Double;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->Q(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->ah()Z
move-result v0
if-eqz v0, :cond_5e
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->R(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/UberSocialProfile$13;->a:Ljava/lang/Double;
iget-object v3, p0, Lcom/twidroid/UberSocialProfile$13;->b:Ljava/lang/Double;
invoke-virtual {v1, v2, v3}, Lcom/twidroid/b/a/b;->b(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/twidroid/UberSocialProfile;->n:Ljava/lang/String;
:goto_26
:cond_26
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->T(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/twidroid/UberSocialProfile$13$1;
invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$13$1;-><init>(Lcom/twidroid/UberSocialProfile$13;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_34
:try_end_34
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_da
:try_start_34
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->V(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
iget-object v1, v1, Lcom/twidroid/UberSocialProfile;->n:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->l(Ljava/lang/String;)Z
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->X(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/twidroid/UberSocialProfile$13$3;
invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$13$3;-><init>(Lcom/twidroid/UberSocialProfile$13;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_57
.catch Ljava/lang/Exception; {:try_start_34 .. :try_end_57} :catch_11d
:goto_57
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/UberSocialProfile;->d(Lcom/twidroid/UberSocialProfile;Z)Z
return-void
:cond_5e
:try_start_5e
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->S(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/UberSocialProfile$13;->a:Ljava/lang/Double;
iget-object v3, p0, Lcom/twidroid/UberSocialProfile$13;->b:Ljava/lang/Double;
invoke-virtual {v1, v2, v3}, Lcom/twidroid/b/a/b;->a(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/twidroid/UberSocialProfile;->n:Ljava/lang/String;
:try_end_74
.catch Ljava/lang/Exception; {:try_start_5e .. :try_end_74} :catch_75
goto :goto_26
:catch_75
move-exception v0
:try_start_76
new-instance v0, Landroid/location/Location;
const-string v1, "gps"
invoke-static {v1}, Ldroidbox/android/location/Location;->droidbox_cons(Ljava/lang/String;)V
invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$13;->a:Ljava/lang/Double;
invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
move-result-wide v1
invoke-static {v0, v1, v2}, Ldroidbox/android/location/Location;->setLatitude(Landroid/location/Location;D)V
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$13;->b:Ljava/lang/Double;
invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
move-result-wide v1
invoke-static {v0, v1, v2}, Ldroidbox/android/location/Location;->setLongitude(Landroid/location/Location;D)V
invoke-static {v0}, Lcom/ubermedia/b/a/g;->a(Landroid/location/Location;)Landroid/location/Address;
move-result-object v0
if-eqz v0, :cond_26
invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_26
invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_26
invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_26
invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_26
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ", "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, v1, Lcom/twidroid/UberSocialProfile;->n:Ljava/lang/String;
:try_end_d8
.catch Ljava/lang/Exception; {:try_start_76 .. :try_end_d8} :catch_da
goto/16 :goto_26
:catch_da
move-exception v0
:try_start_db
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/twidroid/UberSocialProfile$13;->a:Ljava/lang/Double;
invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
move-result-wide v2
invoke-static {v2, v3}, Lcom/ubermedia/b/a/f;->a(D)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " / "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/UberSocialProfile$13;->b:Ljava/lang/Double;
invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
move-result-wide v2
invoke-static {v2, v3}, Lcom/ubermedia/b/a/f;->b(D)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/twidroid/UberSocialProfile;->n:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->U(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/twidroid/UberSocialProfile$13$2;
invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$13$2;-><init>(Lcom/twidroid/UberSocialProfile$13;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_11b
.catch Ljava/lang/Exception; {:try_start_db .. :try_end_11b} :catch_11d
goto/16 :goto_34
:catch_11d
move-exception v0
const-string v1, "com.twidroid.activity.UberSocialProfile"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, ": "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
iget-object v2, p0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
const v3, 0x7f0c0030
invoke-virtual {v2, v3}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/twidroid/UberSocialProfile;->g(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->Y(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/twidroid/UberSocialProfile$13$4;
invoke-direct {v2, p0}, Lcom/twidroid/UberSocialProfile$13$4;-><init>(Lcom/twidroid/UberSocialProfile$13;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_57
.end method