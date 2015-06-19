.class final Lcom/instagram/android/maps/i;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"
.implements Lcom/instagram/android/maps/ui/a/c;
.field final synthetic a:Lcom/instagram/android/maps/ui/ah;
.field final synthetic b:Lcom/instagram/android/maps/PhotoMapsActivity;
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ui/ah;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/maps/i;->b:Lcom/instagram/android/maps/PhotoMapsActivity;
iput-object p2, p0, Lcom/instagram/android/maps/i;->a:Lcom/instagram/android/maps/ui/ah;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/instagram/android/maps/b/f;)Z
.registers 6
const/4 v1, 0x1
const/4 v0, 0x0
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/android/maps/e/a;->b()Z
move-result v2
if-eqz v2, :cond_43
iget-object v2, p0, Lcom/instagram/android/maps/i;->a:Lcom/instagram/android/maps/ui/ah;
invoke-virtual {v2}, Lcom/instagram/android/maps/ui/ah;->a()Lcom/instagram/android/maps/b/f;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->g()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ne v2, v1, :cond_35
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/maps/i;->a:Lcom/instagram/android/maps/ui/ah;
invoke-virtual {v3}, Lcom/instagram/android/maps/ui/ah;->a()Lcom/instagram/android/maps/b/f;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/android/maps/b/f;->g()Ljava/util/ArrayList;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/h/b;
invoke-virtual {v2, v0}, Lcom/instagram/android/maps/e/a;->a(Lcom/instagram/android/h/b;)V
:goto_33
move v0, v1
:cond_34
:goto_34
return v0
:cond_35
invoke-virtual {p1}, Lcom/instagram/android/maps/b/f;->g()Ljava/util/ArrayList;
move-result-object v0
iget-object v2, p0, Lcom/instagram/android/maps/i;->b:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-virtual {v2}, Lcom/instagram/android/maps/PhotoMapsActivity;->c()Landroid/support/v4/app/s;
move-result-object v2
invoke-static {v0, v2}, Lcom/instagram/android/maps/d/a;->a(Ljava/util/List;Landroid/support/v4/app/s;)V
goto :goto_33
:cond_43
iget-object v1, p0, Lcom/instagram/android/maps/i;->b:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getMapCenter()Lcom/google/android/maps/GeoPoint;
iget-object v1, p0, Lcom/instagram/android/maps/i;->b:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-virtual {v1, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/b/f;)Z
move-result v1
if-nez v1, :cond_34
iget-object v0, p0, Lcom/instagram/android/maps/i;->b:Lcom/instagram/android/maps/PhotoMapsActivity;
iget-object v1, p0, Lcom/instagram/android/maps/i;->a:Lcom/instagram/android/maps/ui/ah;
invoke-static {v0, p1, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/b/f;Lcom/instagram/android/maps/ui/ah;)Z
move-result v0
goto :goto_34
.end method