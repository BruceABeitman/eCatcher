.class public Lcom/google/android/gms/location/DetectedActivity;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/location/c;
.field  a:I
.field  b:I
.field private final c:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/location/c;
invoke-direct {v0}, Lcom/google/android/gms/location/c;-><init>()V
sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->CREATOR:Lcom/google/android/gms/location/c;
return-void
.end method
.method public constructor <init>(III)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/location/DetectedActivity;->c:I
iput p2, p0, Lcom/google/android/gms/location/DetectedActivity;->a:I
iput p3, p0, Lcom/google/android/gms/location/DetectedActivity;->b:I
return-void
.end method
.method public final a()I
.registers 3
iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->a:I
const/16 v1, 0x8
if-le v0, v1, :cond_7
const/4 v0, 0x4
:cond_7
return v0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->b:I
return v0
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->c:I
return v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "DetectedActivity [type="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/location/DetectedActivity;->a()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", confidence="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/google/android/gms/location/DetectedActivity;->b:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
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
invoke-static {p0, p1}, Lcom/google/android/gms/location/c;->a(Lcom/google/android/gms/location/DetectedActivity;Landroid/os/Parcel;)V
return-void
.end method