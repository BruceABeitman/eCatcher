.class public Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final Lg:Z
.field final mName:Ljava/lang/String;
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/realtime/internal/a;
invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/a;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(IZLjava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->xJ:I
iput-boolean p2, p0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->Lg:Z
iput-object p3, p0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->mName:Ljava/lang/String;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/a;->a(Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;Landroid/os/Parcel;I)V
return-void
.end method