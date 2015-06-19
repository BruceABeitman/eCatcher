.class final Lcom/instagram/android/creation/a/an;
.super Landroid/support/v4/app/ac;
.source "MetadataFragment.java"
.field final synthetic a:Lcom/instagram/android/creation/a/ah;
.field private final b:Landroid/os/Bundle;
.method public constructor <init>(Lcom/instagram/android/creation/a/ah;Landroid/support/v4/app/s;)V
.registers 7
iput-object p1, p0, Lcom/instagram/android/creation/a/an;->a:Lcom/instagram/android/creation/a/ah;
invoke-direct {p0, p2}, Landroid/support/v4/app/ac;-><init>(Landroid/support/v4/app/s;)V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/instagram/android/creation/a/an;->b:Landroid/os/Bundle;
iget-object v0, p0, Lcom/instagram/android/creation/a/an;->b:Landroid/os/Bundle;
const-string v1, "pendingMediaKey"
invoke-virtual {p1}, Lcom/instagram/android/creation/a/ah;->j()Landroid/os/Bundle;
move-result-object v2
const-string v3, "pendingMediaKey"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
invoke-virtual {p1}, Lcom/instagram/android/creation/a/ah;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "latitude"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_57
invoke-virtual {p1}, Lcom/instagram/android/creation/a/ah;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "longitude"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_57
new-instance v0, Landroid/location/Location;
const-string v1, "photo"
invoke-static {v1}, Ldroidbox/android/location/Location;->droidbox_cons(Ljava/lang/String;)V
invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/instagram/android/creation/a/ah;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "latitude"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D
move-result-wide v1
invoke-static {v0, v1, v2}, Ldroidbox/android/location/Location;->setLatitude(Landroid/location/Location;D)V
invoke-virtual {p1}, Lcom/instagram/android/creation/a/ah;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "longitude"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D
move-result-wide v1
invoke-static {v0, v1, v2}, Ldroidbox/android/location/Location;->setLongitude(Landroid/location/Location;D)V
:cond_57
iget-object v1, p0, Lcom/instagram/android/creation/a/an;->b:Landroid/os/Bundle;
const-string v2, "location"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
return-void
.end method
.method public final a(I)Landroid/support/v4/app/Fragment;
.registers 4
if-nez p1, :cond_d
new-instance v0, Lcom/instagram/android/creation/a/t;
invoke-direct {v0}, Lcom/instagram/android/creation/a/t;-><init>()V
iget-object v1, p0, Lcom/instagram/android/creation/a/an;->b:Landroid/os/Bundle;
invoke-virtual {v0, v1}, Lcom/instagram/android/creation/a/t;->g(Landroid/os/Bundle;)V
:goto_c
return-object v0
:cond_d
const/4 v0, 0x1
if-ne p1, v0, :cond_1b
new-instance v0, Lcom/instagram/android/creation/a/d;
invoke-direct {v0}, Lcom/instagram/android/creation/a/d;-><init>()V
iget-object v1, p0, Lcom/instagram/android/creation/a/an;->b:Landroid/os/Bundle;
invoke-virtual {v0, v1}, Lcom/instagram/android/creation/a/d;->g(Landroid/os/Bundle;)V
goto :goto_c
:cond_1b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Invalid position"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method