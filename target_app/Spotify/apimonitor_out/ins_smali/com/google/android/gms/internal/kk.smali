.class public Lcom/google/android/gms/internal/kk;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:I
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/kz;
invoke-direct {v0}, Lcom/google/android/gms/internal/kz;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/kk;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/kk;->a:I
iput-object p2, p0, Lcom/google/android/gms/internal/kk;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/kk;->c:Ljava/lang/String;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/kk;->b:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/kk;->c:Ljava/lang/String;
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
instance-of v1, p1, Lcom/google/android/gms/internal/kk;
if-nez v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
check-cast p1, Lcom/google/android/gms/internal/kk;
iget-object v1, p1, Lcom/google/android/gms/internal/kk;->b:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/internal/kk;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p1, Lcom/google/android/gms/internal/kk;->c:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/internal/kk;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
const/4 v0, 0x1
goto :goto_5
.end method
.method public hashCode()I
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/kk;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
add-int/lit16 v0, v0, 0x275
mul-int/lit8 v0, v0, 0x25
iget-object v1, p0, Lcom/google/android/gms/internal/kk;->c:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "NodeParcelable{"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/internal/kk;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/kk;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/internal/kz;->a(Lcom/google/android/gms/internal/kk;Landroid/os/Parcel;)V
return-void
.end method