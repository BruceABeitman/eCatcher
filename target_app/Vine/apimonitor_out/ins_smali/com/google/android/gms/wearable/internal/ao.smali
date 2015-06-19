.class public Lcom/google/android/gms/wearable/internal/ao;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public final alw:Lcom/google/android/gms/wearable/internal/ac;
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wearable/internal/ap;
invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/ap;-><init>()V
sput-object v0, Lcom/google/android/gms/wearable/internal/ao;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILandroid/os/IBinder;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wearable/internal/ao;->xJ:I
if-eqz p2, :cond_e
invoke-static {p2}, Lcom/google/android/gms/wearable/internal/ac$a;->bx(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/wearable/internal/ao;->alw:Lcom/google/android/gms/wearable/internal/ac;
:goto_d
return-void
:cond_e
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/wearable/internal/ao;->alw:Lcom/google/android/gms/wearable/internal/ac;
goto :goto_d
.end method
.method public constructor <init>(Lcom/google/android/gms/wearable/internal/ac;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/wearable/internal/ao;->xJ:I
iput-object p1, p0, Lcom/google/android/gms/wearable/internal/ao;->alw:Lcom/google/android/gms/wearable/internal/ac;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method  nj()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ao;->alw:Lcom/google/android/gms/wearable/internal/ac;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ao;->alw:Lcom/google/android/gms/wearable/internal/ac;
invoke-interface {v0}, Lcom/google/android/gms/wearable/internal/ac;->asBinder()Landroid/os/IBinder;
move-result-object v0
goto :goto_5
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/ap;->a(Lcom/google/android/gms/wearable/internal/ao;Landroid/os/Parcel;I)V
return-void
.end method