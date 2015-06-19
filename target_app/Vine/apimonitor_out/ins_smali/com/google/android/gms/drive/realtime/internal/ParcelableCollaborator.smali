.class public Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final Lh:Z
.field final Li:Z
.field final Lj:Ljava/lang/String;
.field final Lk:Ljava/lang/String;
.field final Ll:Ljava/lang/String;
.field final Lm:Ljava/lang/String;
.field final rO:Ljava/lang/String;
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/realtime/internal/p;
invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/p;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(IZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->xJ:I
iput-boolean p2, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->Lh:Z
iput-boolean p3, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->Li:Z
iput-object p4, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->rO:Ljava/lang/String;
iput-object p5, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->Lj:Ljava/lang/String;
iput-object p6, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->Lk:Ljava/lang/String;
iput-object p7, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->Ll:Ljava/lang/String;
iput-object p8, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->Lm:Ljava/lang/String;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
if-ne p0, p1, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
instance-of v0, p1, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;
if-nez v0, :cond_a
const/4 v0, 0x0
goto :goto_3
:cond_a
check-cast p1, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;
iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->rO:Ljava/lang/String;
iget-object v1, p1, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->rO:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_3
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->rO:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Collaborator [isMe="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->Lh:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", isAnonymous="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->Li:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", sessionId="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->rO:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", userId="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->Lj:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", displayName="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->Lk:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", color="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->Ll:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", photoUrl="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;->Lm:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/p;->a(Lcom/google/android/gms/drive/realtime/internal/ParcelableCollaborator;Landroid/os/Parcel;I)V
return-void
.end method