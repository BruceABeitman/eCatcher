.class public Lcom/google/android/gms/internal/ki;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:I
.field private final b:I
.field private final c:Ljava/lang/String;
.field private final d:[B
.field private final e:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/ky;
invoke-direct {v0}, Lcom/google/android/gms/internal/ky;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ki;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(IILjava/lang/String;[BLjava/lang/String;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/ki;->a:I
iput p2, p0, Lcom/google/android/gms/internal/ki;->b:I
iput-object p3, p0, Lcom/google/android/gms/internal/ki;->c:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/internal/ki;->d:[B
iput-object p5, p0, Lcom/google/android/gms/internal/ki;->e:Ljava/lang/String;
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ki;->b:I
return v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ki;->c:Ljava/lang/String;
return-object v0
.end method
.method public final c()[B
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ki;->d:[B
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ki;->e:Ljava/lang/String;
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "MessageEventParcelable["
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lcom/google/android/gms/internal/ki;->b:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/ki;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v0, p0, Lcom/google/android/gms/internal/ki;->d:[B
if-nez v0, :cond_2e
const-string v0, "null"
:goto_1f
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_2e
iget-object v0, p0, Lcom/google/android/gms/internal/ki;->d:[B
array-length v0, v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_1f
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/ki;Landroid/os/Parcel;)V
return-void
.end method