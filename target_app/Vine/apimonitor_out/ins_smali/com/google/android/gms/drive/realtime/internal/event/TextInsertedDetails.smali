.class public Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final LI:I
.field final mIndex:I
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/f;
invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/f;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(III)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;->xJ:I
iput p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;->mIndex:I
iput p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;->LI:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/f;->a(Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;Landroid/os/Parcel;I)V
return-void
.end method