.class public final Lcom/google/android/gms/maps/model/Tile;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/maps/model/s;
.field public final a:I
.field public final b:I
.field public final c:[B
.field private final d:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/maps/model/s;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/s;-><init>()V
sput-object v0, Lcom/google/android/gms/maps/model/Tile;->CREATOR:Lcom/google/android/gms/maps/model/s;
return-void
.end method
.method constructor <init>(III[B)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/maps/model/Tile;->d:I
iput p2, p0, Lcom/google/android/gms/maps/model/Tile;->a:I
iput p3, p0, Lcom/google/android/gms/maps/model/Tile;->b:I
iput-object p4, p0, Lcom/google/android/gms/maps/model/Tile;->c:[B
return-void
.end method
.method public constructor <init>(II[B)V
.registers 5
const/4 v0, 0x1
invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/Tile;-><init>(III[B)V
return-void
.end method
.method  a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/Tile;->d:I
return v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-static {}, Lcom/google/android/gms/maps/a/bo;->a()Z
move-result v0
if-eqz v0, :cond_a
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/ag;->a(Lcom/google/android/gms/maps/model/Tile;Landroid/os/Parcel;I)V
:goto_9
return-void
:cond_a
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/s;->a(Lcom/google/android/gms/maps/model/Tile;Landroid/os/Parcel;I)V
goto :goto_9
.end method