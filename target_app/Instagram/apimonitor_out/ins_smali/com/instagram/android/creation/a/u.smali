.class final Lcom/instagram/android/creation/a/u;
.super Ljava/lang/Object;
.source "FollowersShareFragment.java"
.implements Ljava/util/Observer;
.field final synthetic a:Lcom/instagram/android/creation/a/t;
.method constructor <init>(Lcom/instagram/android/creation/a/t;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/creation/a/u;->a:Lcom/instagram/android/creation/a/t;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
.registers 6
iget-object v0, p0, Lcom/instagram/android/creation/a/u;->a:Lcom/instagram/android/creation/a/t;
invoke-static {v0}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/android/creation/a/t;)Z
check-cast p2, Landroid/location/Location;
invoke-static {p2}, Lcom/instagram/android/g/a;->b(Landroid/location/Location;)Z
move-result v0
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/instagram/android/creation/a/u;->a:Lcom/instagram/android/creation/a/t;
invoke-static {v0, p2}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/android/creation/a/t;Landroid/location/Location;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/instagram/android/creation/a/u;->a:Lcom/instagram/android/creation/a/t;
invoke-virtual {v1}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;
move-result-object v1
const-class v2, Lcom/instagram/android/foursquare/NearbyVenuesService;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "location"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
iget-object v1, p0, Lcom/instagram/android/creation/a/u;->a:Lcom/instagram/android/creation/a/t;
invoke-virtual {v1}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/app/k;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:cond_2d
return-void
.end method