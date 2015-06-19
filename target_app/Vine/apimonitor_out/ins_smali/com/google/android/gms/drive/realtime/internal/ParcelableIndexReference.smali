.class public Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final Ln:Ljava/lang/String;
.field final Lo:Z
.field final mIndex:I
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/realtime/internal/q;
invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/q;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILjava/lang/String;IZ)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->Ln:Ljava/lang/String;
iput p3, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->mIndex:I
iput-boolean p4, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->Lo:Z
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/q;->a(Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;Landroid/os/Parcel;I)V
return-void
.end method