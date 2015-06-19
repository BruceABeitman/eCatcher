.class public Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:I
.field final b:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/h;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/h;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(IZ)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;->a:I
iput-boolean p2, p0, Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;->b:Z
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/drive/internal/h;->a(Lcom/google/android/gms/drive/internal/OnSyncMoreResponse;Landroid/os/Parcel;)V
return-void
.end method