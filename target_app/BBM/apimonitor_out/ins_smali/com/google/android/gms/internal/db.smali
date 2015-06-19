.class public final Lcom/google/android/gms/internal/db;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/dc;
.field public pU:Ljava/lang/String;
.field public pV:I
.field public pW:I
.field public pX:Z
.field public final versionCode:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/dc;
invoke-direct {v0}, Lcom/google/android/gms/internal/dc;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/db;->CREATOR:Lcom/google/android/gms/internal/dc;
return-void
.end method
.method public constructor <init>(IIZ)V
.registers 10
const/4 v1, 0x1
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "afma-sdk-a-v"
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "."
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "."
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
if-eqz p3, :cond_30
const-string v0, "0"
:goto_20
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
move-object v0, p0
move v3, p1
move v4, p2
move v5, p3
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/db;-><init>(ILjava/lang/String;IIZ)V
return-void
:cond_30
const-string v0, "1"
goto :goto_20
.end method
.method constructor <init>(ILjava/lang/String;IIZ)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/db;->versionCode:I
iput-object p2, p0, Lcom/google/android/gms/internal/db;->pU:Ljava/lang/String;
iput p3, p0, Lcom/google/android/gms/internal/db;->pV:I
iput p4, p0, Lcom/google/android/gms/internal/db;->pW:I
iput-boolean p5, p0, Lcom/google/android/gms/internal/db;->pX:Z
return-void
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/dc;->a(Lcom/google/android/gms/internal/db;Landroid/os/Parcel;I)V
return-void
.end method