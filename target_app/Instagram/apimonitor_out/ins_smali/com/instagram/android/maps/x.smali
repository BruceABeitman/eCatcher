.class final Lcom/instagram/android/maps/x;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/maps/w;
.method constructor <init>(Lcom/instagram/android/maps/w;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/x;->a:Lcom/instagram/android/maps/w;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 8
invoke-static {}, Lcom/instagram/android/maps/ui/ah;->h()V
iget-object v0, p0, Lcom/instagram/android/maps/x;->a:Lcom/instagram/android/maps/w;
iget-object v6, v0, Lcom/instagram/android/maps/w;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
new-instance v0, Lcom/instagram/android/maps/ad;
iget-object v1, p0, Lcom/instagram/android/maps/x;->a:Lcom/instagram/android/maps/w;
iget-object v1, v1, Lcom/instagram/android/maps/w;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
iget-object v2, p0, Lcom/instagram/android/maps/x;->a:Lcom/instagram/android/maps/w;
iget-object v2, v2, Lcom/instagram/android/maps/w;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v2}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/android/maps/ui/i;->getLatitudeSpan()I
move-result v2
iget-object v3, p0, Lcom/instagram/android/maps/x;->a:Lcom/instagram/android/maps/w;
iget-object v3, v3, Lcom/instagram/android/maps/w;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v3}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/android/maps/ui/i;->getLongitudeSpan()I
move-result v3
iget-object v4, p0, Lcom/instagram/android/maps/x;->a:Lcom/instagram/android/maps/w;
iget-object v4, v4, Lcom/instagram/android/maps/w;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v4}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;
move-result-object v4
invoke-virtual {v4}, Lcom/instagram/android/maps/ui/i;->getMapCenter()Lcom/google/android/maps/GeoPoint;
move-result-object v4
iget-object v5, p0, Lcom/instagram/android/maps/x;->a:Lcom/instagram/android/maps/w;
iget-object v5, v5, Lcom/instagram/android/maps/w;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v5}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;
move-result-object v5
invoke-virtual {v5}, Lcom/instagram/android/maps/ui/i;->getZoomLevel()I
move-result v5
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/ad;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;IILcom/google/android/maps/GeoPoint;I)V
invoke-static {v6, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ad;)V
iget-object v0, p0, Lcom/instagram/android/maps/x;->a:Lcom/instagram/android/maps/w;
iget-object v0, v0, Lcom/instagram/android/maps/w;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/PhotoMapsActivity;Z)V
return-void
.end method