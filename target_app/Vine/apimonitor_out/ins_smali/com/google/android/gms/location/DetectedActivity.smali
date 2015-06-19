.class public Lcom/google/android/gms/location/DetectedActivity;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/location/DetectedActivityCreator; = null
.field public static final IN_VEHICLE:I = 0x0
.field public static final ON_BICYCLE:I = 0x1
.field public static final ON_FOOT:I = 0x2
.field public static final RUNNING:I = 0x8
.field public static final STILL:I = 0x3
.field public static final TILTING:I = 0x5
.field public static final UNKNOWN:I = 0x4
.field public static final WALKING:I = 0x7
.field  UV:I
.field  UW:I
.field private final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/location/DetectedActivityCreator;
invoke-direct {v0}, Lcom/google/android/gms/location/DetectedActivityCreator;-><init>()V
sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->CREATOR:Lcom/google/android/gms/location/DetectedActivityCreator;
return-void
.end method
.method public constructor <init>(II)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/location/DetectedActivity;->xJ:I
iput p1, p0, Lcom/google/android/gms/location/DetectedActivity;->UV:I
iput p2, p0, Lcom/google/android/gms/location/DetectedActivity;->UW:I
return-void
.end method
.method public constructor <init>(III)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/location/DetectedActivity;->xJ:I
iput p2, p0, Lcom/google/android/gms/location/DetectedActivity;->UV:I
iput p3, p0, Lcom/google/android/gms/location/DetectedActivity;->UW:I
return-void
.end method
.method private cF(I)I
.registers 3
const/16 v0, 0x8
if-le p1, v0, :cond_5
const/4 p1, 0x4
:cond_5
return p1
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getConfidence()I
.registers 2
iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->UW:I
return v0
.end method
.method public getType()I
.registers 2
iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->UV:I
invoke-direct {p0, v0}, Lcom/google/android/gms/location/DetectedActivity;->cF(I)I
move-result v0
return v0
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->xJ:I
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "DetectedActivity [type="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/location/DetectedActivity;->getType()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", confidence="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/google/android/gms/location/DetectedActivity;->UW:I
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
invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/DetectedActivityCreator;->a(Lcom/google/android/gms/location/DetectedActivity;Landroid/os/Parcel;I)V
return-void
.end method