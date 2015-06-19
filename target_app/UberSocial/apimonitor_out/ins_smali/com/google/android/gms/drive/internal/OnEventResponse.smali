.class public Lcom/google/android/gms/drive/internal/OnEventResponse;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:I
.field final b:I
.field final c:Lcom/google/android/gms/drive/events/ChangeEvent;
.field final d:Lcom/google/android/gms/drive/events/ConflictEvent;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/d;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/d;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/OnEventResponse;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(IILcom/google/android/gms/drive/events/ChangeEvent;Lcom/google/android/gms/drive/events/ConflictEvent;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->a:I
iput p2, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->b:I
iput-object p3, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->c:Lcom/google/android/gms/drive/events/ChangeEvent;
iput-object p4, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->d:Lcom/google/android/gms/drive/events/ConflictEvent;
return-void
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->b:I
return v0
.end method
.method public b()Lcom/google/android/gms/drive/events/ChangeEvent;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->c:Lcom/google/android/gms/drive/events/ChangeEvent;
return-object v0
.end method
.method public c()Lcom/google/android/gms/drive/events/ConflictEvent;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->d:Lcom/google/android/gms/drive/events/ConflictEvent;
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/d;->a(Lcom/google/android/gms/drive/internal/OnEventResponse;Landroid/os/Parcel;I)V
return-void
.end method