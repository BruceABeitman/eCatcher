.class public Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final LC:I
.field final LD:I
.field final mIndex:I
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/j;
invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/j;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(IIII)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;->xJ:I
iput p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;->mIndex:I
iput p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;->LC:I
iput p4, p0, Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;->LD:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/j;->a(Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;Landroid/os/Parcel;I)V
return-void
.end method