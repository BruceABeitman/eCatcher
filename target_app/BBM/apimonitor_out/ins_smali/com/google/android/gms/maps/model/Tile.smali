.class public final Lcom/google/android/gms/maps/model/Tile;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/maps/model/TileCreator;
.field public final data:[B
.field public final height:I
.field public final width:I
.field private final wj:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/maps/model/TileCreator;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/TileCreator;-><init>()V
sput-object v0, Lcom/google/android/gms/maps/model/Tile;->CREATOR:Lcom/google/android/gms/maps/model/TileCreator;
return-void
.end method
.method constructor <init>(III[B)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/maps/model/Tile;->wj:I
iput p2, p0, Lcom/google/android/gms/maps/model/Tile;->width:I
iput p3, p0, Lcom/google/android/gms/maps/model/Tile;->height:I
iput-object p4, p0, Lcom/google/android/gms/maps/model/Tile;->data:[B
return-void
.end method
.method public constructor <init>(II[B)V
.registers 5
const/4 v0, 0x1
invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/Tile;-><init>(III[B)V
return-void
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method final getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/Tile;->wj:I
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-static {}, Lcom/google/android/gms/maps/internal/r;->hc()Z
move-result v0
if-eqz v0, :cond_a
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/i;->a(Lcom/google/android/gms/maps/model/Tile;Landroid/os/Parcel;I)V
:goto_9
return-void
:cond_a
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/TileCreator;->a(Lcom/google/android/gms/maps/model/Tile;Landroid/os/Parcel;I)V
goto :goto_9
.end method