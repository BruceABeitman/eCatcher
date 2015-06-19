.class  Lcom/google/android/gms/maps/model/TileOverlayOptions$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/maps/model/v;
.field final synthetic a:Lcom/google/android/gms/maps/model/TileOverlayOptions;
.field private final c:Lcom/google/android/gms/maps/model/a/v;
.method constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;->a:Lcom/google/android/gms/maps/model/TileOverlayOptions;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;->a:Lcom/google/android/gms/maps/model/TileOverlayOptions;
invoke-static {v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/a/v;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;->c:Lcom/google/android/gms/maps/model/a/v;
return-void
.end method
.method public a(III)Lcom/google/android/gms/maps/model/Tile;
.registers 5
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;->c:Lcom/google/android/gms/maps/model/a/v;
invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/a/v;->a(III)Lcom/google/android/gms/maps/model/Tile;
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
:goto_6
return-object v0
:catch_7
move-exception v0
const/4 v0, 0x0
goto :goto_6
.end method