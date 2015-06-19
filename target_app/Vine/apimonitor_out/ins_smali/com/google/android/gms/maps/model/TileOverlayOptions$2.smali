.class  Lcom/google/android/gms/maps/model/TileOverlayOptions$2;
.super Lcom/google/android/gms/maps/model/internal/i$a;
.field final synthetic abe:Lcom/google/android/gms/maps/model/TileOverlayOptions;
.field final synthetic abf:Lcom/google/android/gms/maps/model/TileProvider;
.method constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;Lcom/google/android/gms/maps/model/TileProvider;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$2;->abe:Lcom/google/android/gms/maps/model/TileOverlayOptions;
iput-object p2, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$2;->abf:Lcom/google/android/gms/maps/model/TileProvider;
invoke-direct {p0}, Lcom/google/android/gms/maps/model/internal/i$a;-><init>()V
return-void
.end method
.method public getTile(III)Lcom/google/android/gms/maps/model/Tile;
.registers 5
iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$2;->abf:Lcom/google/android/gms/maps/model/TileProvider;
invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/TileProvider;->getTile(III)Lcom/google/android/gms/maps/model/Tile;
move-result-object v0
return-object v0
.end method