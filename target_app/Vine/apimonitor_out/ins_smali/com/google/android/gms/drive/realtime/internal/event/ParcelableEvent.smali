.class public Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final Lj:Ljava/lang/String;
.field final Ln:Ljava/lang/String;
.field final Lp:Z
.field final Lq:Ljava/lang/String;
.field final Lr:Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;
.field final Ls:Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;
.field final Lt:Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;
.field final Lu:Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;
.field final Lv:Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;
.field final Lw:Lcom/google/android/gms/drive/realtime/internal/event/ValueChangedDetails;
.field final Lx:Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;
.field final rO:Ljava/lang/String;
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/a;
invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/a;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;Lcom/google/android/gms/drive/realtime/internal/event/ValueChangedDetails;Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;)V
.registers 14
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->rO:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lj:Ljava/lang/String;
iput-boolean p4, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lp:Z
iput-object p5, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Ln:Ljava/lang/String;
iput-object p6, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lq:Ljava/lang/String;
iput-object p7, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lr:Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;
iput-object p8, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Ls:Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;
iput-object p9, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lt:Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;
iput-object p10, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lu:Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;
iput-object p11, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lv:Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;
iput-object p12, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lw:Lcom/google/android/gms/drive/realtime/internal/event/ValueChangedDetails;
iput-object p13, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lx:Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/a;->a(Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;Landroid/os/Parcel;I)V
return-void
.end method