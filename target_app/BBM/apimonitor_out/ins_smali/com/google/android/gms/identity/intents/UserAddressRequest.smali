.class public final Lcom/google/android/gms/identity/intents/UserAddressRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  Ky:Ljava/util/List;
.field private final wj:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/identity/intents/a;
invoke-direct {v0}, Lcom/google/android/gms/identity/intents/a;-><init>()V
sput-object v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->wj:I
return-void
.end method
.method constructor <init>(ILjava/util/List;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->wj:I
iput-object p2, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->Ky:Ljava/util/List;
return-void
.end method
.method public static newBuilder()Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;
.registers 3
new-instance v0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;
new-instance v1, Lcom/google/android/gms/identity/intents/UserAddressRequest;
invoke-direct {v1}, Lcom/google/android/gms/identity/intents/UserAddressRequest;-><init>()V
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;-><init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;Lcom/google/android/gms/identity/intents/UserAddressRequest$1;)V
return-object v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->wj:I
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/identity/intents/a;->a(Lcom/google/android/gms/identity/intents/UserAddressRequest;Landroid/os/Parcel;I)V
return-void
.end method