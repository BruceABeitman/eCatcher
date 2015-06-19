.class public final Lcom/google/android/gms/maps/model/GroundOverlayOptions;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/maps/model/e;
.field private final a:I
.field private b:Lcom/google/android/gms/maps/model/a;
.field private c:Lcom/google/android/gms/maps/model/LatLng;
.field private d:F
.field private e:F
.field private f:Lcom/google/android/gms/maps/model/LatLngBounds;
.field private g:F
.field private h:F
.field private i:Z
.field private j:F
.field private k:F
.field private l:F
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/maps/model/e;
invoke-direct {v0}, Lcom/google/android/gms/maps/model/e;-><init>()V
sput-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/e;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x1
const/high16 v1, 0x3f00
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->i:Z
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->j:F
iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->k:F
iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->l:F
iput v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->a:I
return-void
.end method
.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFF)V
.registers 15
const/high16 v1, 0x3f00
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->i:Z
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->j:F
iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->k:F
iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->l:F
iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->a:I
new-instance v0, Lcom/google/android/gms/maps/model/a;
invoke-static {p2}, Lcom/google/android/gms/dynamic/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/dynamic/b;)V
iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->b:Lcom/google/android/gms/maps/model/a;
iput-object p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->c:Lcom/google/android/gms/maps/model/LatLng;
iput p4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->d:F
iput p5, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->e:F
iput-object p6, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->f:Lcom/google/android/gms/maps/model/LatLngBounds;
iput p7, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->g:F
iput p8, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->h:F
iput-boolean p9, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->i:Z
iput p10, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->j:F
iput p11, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->k:F
iput p12, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->l:F
return-void
.end method
.method final a()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->b:Lcom/google/android/gms/maps/model/a;
invoke-virtual {v0}, Lcom/google/android/gms/maps/model/a;->a()Lcom/google/android/gms/dynamic/b;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;
move-result-object v0
return-object v0
.end method
.method final b()I
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->a:I
return v0
.end method
.method public final c()Lcom/google/android/gms/maps/model/LatLng;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->c:Lcom/google/android/gms/maps/model/LatLng;
return-object v0
.end method
.method public final d()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->d:F
return v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->e:F
return v0
.end method
.method public final f()Lcom/google/android/gms/maps/model/LatLngBounds;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->f:Lcom/google/android/gms/maps/model/LatLngBounds;
return-object v0
.end method
.method public final g()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->g:F
return v0
.end method
.method public final h()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->h:F
return v0
.end method
.method public final i()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->j:F
return v0
.end method
.method public final j()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->k:F
return v0
.end method
.method public final k()F
.registers 2
iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->l:F
return v0
.end method
.method public final l()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->i:Z
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {}, Lcom/google/android/gms/maps/a/b;->a()Z
move-result v0
if-eqz v0, :cond_5e
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->a()Landroid/os/IBinder;
move-result-object v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V
const/4 v1, 0x3
iget-object v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->c:Lcom/google/android/gms/maps/model/LatLng;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x4
iget v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->d:F
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/4 v1, 0x5
iget v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->e:F
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/4 v1, 0x6
iget-object v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->f:Lcom/google/android/gms/maps/model/LatLngBounds;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x7
iget v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->g:F
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/16 v1, 0x8
iget v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->h:F
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/16 v1, 0x9
iget-boolean v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->i:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0xa
iget v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->j:F
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/16 v1, 0xb
iget v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->k:F
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
const/16 v1, 0xc
iget v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->l:F
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V
:goto_5d
return-void
:cond_5e
invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/e;->a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V
goto :goto_5d
.end method