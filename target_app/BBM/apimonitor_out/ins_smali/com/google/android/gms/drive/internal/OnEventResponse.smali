.class public Lcom/google/android/gms/drive/internal/OnEventResponse;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final Dm:I
.field final Eb:Lcom/google/android/gms/drive/events/ChangeEvent;
.field final Ec:Lcom/google/android/gms/drive/events/ConflictEvent;
.field final wj:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/ac;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ac;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/OnEventResponse;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(IILcom/google/android/gms/drive/events/ChangeEvent;Lcom/google/android/gms/drive/events/ConflictEvent;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->wj:I
iput p2, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Dm:I
iput-object p3, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Eb:Lcom/google/android/gms/drive/events/ChangeEvent;
iput-object p4, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Ec:Lcom/google/android/gms/drive/events/ConflictEvent;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public fa()Lcom/google/android/gms/drive/events/ChangeEvent;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Eb:Lcom/google/android/gms/drive/events/ChangeEvent;
return-object v0
.end method
.method public fb()Lcom/google/android/gms/drive/events/ConflictEvent;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Ec:Lcom/google/android/gms/drive/events/ConflictEvent;
return-object v0
.end method
.method public getEventType()I
.registers 2
iget v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Dm:I
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/ac;->a(Lcom/google/android/gms/drive/internal/OnEventResponse;Landroid/os/Parcel;I)V
return-void
.end method