.class public final Lcom/google/android/gms/maps/model/TileOverlayOptions;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/maps/model/q;
.field private final a:I
.field private b:Lcom/google/android/gms/maps/model/a/a;
.field private c:Lcom/google/android/gms/maps/model/r;
.field private d:Z
.field private e:F
.field private f:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/maps/model/q;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/q;-><init>()V
sput-object v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/q;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:Z
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f:Z
iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:I
return-void
.end method
.method constructor <init>(ILandroid/os/IBinder;ZFZ)V
.registers 7
const/4 v0, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:Z
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f:Z
iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:I
invoke-static {p2}, Lcom/google/android/gms/maps/model/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/a;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Lcom/google/android/gms/maps/model/a/a;
iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Lcom/google/android/gms/maps/model/a/a;
if-nez v0, :cond_1e
const/4 v0, 0x0
:goto_15
iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c:Lcom/google/android/gms/maps/model/r;
iput-boolean p3, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:Z
iput p4, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:F
iput-boolean p5, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f:Z
return-void
:cond_1e
new-instance v0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V
goto :goto_15
.end method
.method static synthetic a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/a/a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Lcom/google/android/gms/maps/model/a/a;
return-object v0
.end method
.method final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:I
return v0
.end method
.method final b()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Lcom/google/android/gms/maps/model/a/a;
invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/a;->asBinder()Landroid/os/IBinder;
move-result-object v0
return-object v0
.end method
.method public final c()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:F
return v0
.end method
.method public final d()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:Z
return v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f:Z
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 6
invoke-static {}, Lcom/google/android/gms/maps/a/b;->a()Z
move-result v0
if-eqz v0, :cond_28
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b()Landroid/os/IBinder;
move-result-object v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V
const/4 v1, 0x3
iget-boolean v2, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/4 v1, 0x4
iget v2, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:F
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
:goto_27
return-void
:cond_28
invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/q;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;Landroid/os/Parcel;)V
goto :goto_27
.end method