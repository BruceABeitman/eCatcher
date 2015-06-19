.class  Lboston/Bus/Map/ui/LocationOverlay$2;
.super Ljava/lang/Object;
.source "LocationOverlay.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lboston/Bus/Map/ui/LocationOverlay;
.method constructor <init>(Lboston/Bus/Map/ui/LocationOverlay;)V
.registers 2
iput-object p1, p0, Lboston/Bus/Map/ui/LocationOverlay$2;->this$0:Lboston/Bus/Map/ui/LocationOverlay;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lboston/Bus/Map/ui/LocationOverlay$2;->this$0:Lboston/Bus/Map/ui/LocationOverlay;
#getter for: Lboston/Bus/Map/ui/LocationOverlay;->mapView:Lcom/google/android/maps/MapView;
invoke-static {v0}, Lboston/Bus/Map/ui/LocationOverlay;->access$000(Lboston/Bus/Map/ui/LocationOverlay;)Lcom/google/android/maps/MapView;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;
move-result-object v0
iget-object v1, p0, Lboston/Bus/Map/ui/LocationOverlay$2;->this$0:Lboston/Bus/Map/ui/LocationOverlay;
invoke-virtual {v1}, Lboston/Bus/Map/ui/LocationOverlay;->getMyLocation()Lcom/google/android/maps/GeoPoint;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V
iget-object v0, p0, Lboston/Bus/Map/ui/LocationOverlay$2;->this$0:Lboston/Bus/Map/ui/LocationOverlay;
#getter for: Lboston/Bus/Map/ui/LocationOverlay;->handler:Lboston/Bus/Map/main/UpdateHandler;
invoke-static {v0}, Lboston/Bus/Map/ui/LocationOverlay;->access$100(Lboston/Bus/Map/ui/LocationOverlay;)Lboston/Bus/Map/main/UpdateHandler;
move-result-object v0
const/16 v1, 0x5dc
invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateHandler;->triggerUpdate(I)V
return-void
.end method