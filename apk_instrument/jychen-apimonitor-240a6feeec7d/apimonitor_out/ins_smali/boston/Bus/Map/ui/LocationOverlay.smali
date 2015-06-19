.class public Lboston/Bus/Map/ui/LocationOverlay;
.super Lcom/google/android/maps/MyLocationOverlay;
.source "LocationOverlay.java"
.field private final context:Landroid/content/Context;
.field private handler:Lboston/Bus/Map/main/UpdateHandler;
.field private final mapView:Lcom/google/android/maps/MapView;
.field private runnable:Ljava/lang/Runnable;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V
iput-object p1, p0, Lboston/Bus/Map/ui/LocationOverlay;->context:Landroid/content/Context;
iput-object p2, p0, Lboston/Bus/Map/ui/LocationOverlay;->mapView:Lcom/google/android/maps/MapView;
new-instance v0, Lboston/Bus/Map/ui/LocationOverlay$1;
invoke-direct {v0, p0}, Lboston/Bus/Map/ui/LocationOverlay$1;-><init>(Lboston/Bus/Map/ui/LocationOverlay;)V
iput-object v0, p0, Lboston/Bus/Map/ui/LocationOverlay;->runnable:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic access$000(Lboston/Bus/Map/ui/LocationOverlay;)Lcom/google/android/maps/MapView;
.registers 2
iget-object v0, p0, Lboston/Bus/Map/ui/LocationOverlay;->mapView:Lcom/google/android/maps/MapView;
return-object v0
.end method
.method static synthetic access$100(Lboston/Bus/Map/ui/LocationOverlay;)Lboston/Bus/Map/main/UpdateHandler;
.registers 2
iget-object v0, p0, Lboston/Bus/Map/ui/LocationOverlay;->handler:Lboston/Bus/Map/main/UpdateHandler;
return-object v0
.end method
.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.registers 7
packed-switch p2, :pswitch_data_18
:goto_3
:pswitch_3
return-void
:pswitch_4
iget-object v0, p0, Lboston/Bus/Map/ui/LocationOverlay;->context:Landroid/content/Context;
iget-object v1, p0, Lboston/Bus/Map/ui/LocationOverlay;->context:Landroid/content/Context;
const v2, 0x7f070012
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_3
:pswitch_data_18
.packed-switch 0x0
:pswitch_4
:pswitch_4
:pswitch_3
.end packed-switch
.end method
.method public setUpdateable(Lboston/Bus/Map/main/UpdateHandler;)V
.registers 3
iput-object p1, p0, Lboston/Bus/Map/ui/LocationOverlay;->handler:Lboston/Bus/Map/main/UpdateHandler;
new-instance v0, Lboston/Bus/Map/ui/LocationOverlay$2;
invoke-direct {v0, p0}, Lboston/Bus/Map/ui/LocationOverlay$2;-><init>(Lboston/Bus/Map/ui/LocationOverlay;)V
iput-object v0, p0, Lboston/Bus/Map/ui/LocationOverlay;->runnable:Ljava/lang/Runnable;
return-void
.end method
.method public updateMapViewPosition()V
.registers 2
iget-object v0, p0, Lboston/Bus/Map/ui/LocationOverlay;->runnable:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Lboston/Bus/Map/ui/LocationOverlay;->runOnFirstFix(Ljava/lang/Runnable;)Z
return-void
.end method