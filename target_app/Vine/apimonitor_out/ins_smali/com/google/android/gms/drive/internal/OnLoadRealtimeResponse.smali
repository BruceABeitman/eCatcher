.class public Lcom/google/android/gms/drive/internal/OnLoadRealtimeResponse;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final Jz:Z
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/an;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/an;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/OnLoadRealtimeResponse;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(IZ)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/OnLoadRealtimeResponse;->xJ:I
iput-boolean p2, p0, Lcom/google/android/gms/drive/internal/OnLoadRealtimeResponse;->Jz:Z
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/an;->a(Lcom/google/android/gms/drive/internal/OnLoadRealtimeResponse;Landroid/os/Parcel;I)V
return-void
.end method