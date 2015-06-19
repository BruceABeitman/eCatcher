.class final Lcom/instagram/android/maps/h;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/maps/g;
.method constructor <init>(Lcom/instagram/android/maps/g;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/h;->a:Lcom/instagram/android/maps/g;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/maps/h;->a:Lcom/instagram/android/maps/g;
iget-object v0, v0, Lcom/instagram/android/maps/g;->a:Lcom/instagram/android/maps/f;
iget-object v0, v0, Lcom/instagram/android/maps/f;->c:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->k(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/google/android/maps/MapController;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/maps/h;->a:Lcom/instagram/android/maps/g;
iget-object v1, v1, Lcom/instagram/android/maps/g;->a:Lcom/instagram/android/maps/f;
iget-object v1, v1, Lcom/instagram/android/maps/f;->b:Lcom/google/android/maps/GeoPoint;
invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V
return-void
.end method