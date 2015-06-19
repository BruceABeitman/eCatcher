.class public final Lcom/google/android/gms/drive/events/ChangeEvent;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/events/ResourceEvent;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:I
.field final b:Lcom/google/android/gms/drive/DriveId;
.field final c:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/events/b;
invoke-direct {v0}, Lcom/google/android/gms/drive/events/b;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/events/ChangeEvent;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/DriveId;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->a:I
iput-object p2, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->b:Lcom/google/android/gms/drive/DriveId;
iput p3, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->c:I
return-void
.end method
.method public a()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public b()Lcom/google/android/gms/drive/DriveId;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->b:Lcom/google/android/gms/drive/DriveId;
return-object v0
.end method
.method public c()Z
.registers 2
iget v0, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->c:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public d()Z
.registers 2
iget v0, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->c:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 5
const-string v0, "ChangeEvent [id=%s,changeFlags=%x]"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->b:Lcom/google/android/gms/drive/DriveId;
aput-object v3, v1, v2
const/4 v2, 0x1
iget v3, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->c:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/events/b;->a(Lcom/google/android/gms/drive/events/ChangeEvent;Landroid/os/Parcel;I)V
return-void
.end method