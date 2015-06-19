.class  Lcom/google/android/gms/maps/model/TileOverlayOptions$2;
.super Lcom/google/android/gms/maps/model/a/w;
.field final synthetic a:Lcom/google/android/gms/maps/model/v;
.field final synthetic b:Lcom/google/android/gms/maps/model/TileOverlayOptions;
.method constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;Lcom/google/android/gms/maps/model/v;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$2;->b:Lcom/google/android/gms/maps/model/TileOverlayOptions;
iput-object p2, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$2;->a:Lcom/google/android/gms/maps/model/v;
invoke-direct {p0}, Lcom/google/android/gms/maps/model/a/w;-><init>()V
return-void
.end method
.method public a(III)Lcom/google/android/gms/maps/model/Tile;
.registers 5
iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$2;->a:Lcom/google/android/gms/maps/model/v;
invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/v;->a(III)Lcom/google/android/gms/maps/model/Tile;
move-result-object v0
return-object v0
.end method