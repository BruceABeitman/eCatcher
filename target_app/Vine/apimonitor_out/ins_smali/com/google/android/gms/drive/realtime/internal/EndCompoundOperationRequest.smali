.class public Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/realtime/internal/b;
invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/b;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;-><init>(I)V
return-void
.end method
.method constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;->xJ:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/b;->a(Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;Landroid/os/Parcel;I)V
return-void
.end method