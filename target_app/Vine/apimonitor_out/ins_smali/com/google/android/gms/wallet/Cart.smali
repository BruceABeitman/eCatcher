.class public final Lcom/google/android/gms/wallet/Cart;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  aiH:Ljava/lang/String;
.field  aiI:Ljava/lang/String;
.field  aiJ:Ljava/util/ArrayList;
.field private final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wallet/b;
invoke-direct {v0}, Lcom/google/android/gms/wallet/b;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/Cart;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/wallet/Cart;->xJ:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/wallet/Cart;->aiJ:Ljava/util/ArrayList;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/Cart;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/wallet/Cart;->aiH:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/wallet/Cart;->aiI:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/wallet/Cart;->aiJ:Ljava/util/ArrayList;
return-void
.end method
.method public static newBuilder()Lcom/google/android/gms/wallet/Cart$Builder;
.registers 3
new-instance v0, Lcom/google/android/gms/wallet/Cart$Builder;
new-instance v1, Lcom/google/android/gms/wallet/Cart;
invoke-direct {v1}, Lcom/google/android/gms/wallet/Cart;-><init>()V
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/Cart$Builder;-><init>(Lcom/google/android/gms/wallet/Cart;Lcom/google/android/gms/wallet/Cart$1;)V
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getCurrencyCode()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/Cart;->aiI:Ljava/lang/String;
return-object v0
.end method
.method public getLineItems()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/Cart;->aiJ:Ljava/util/ArrayList;
return-object v0
.end method
.method public getTotalPrice()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/Cart;->aiH:Ljava/lang/String;
return-object v0
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/Cart;->xJ:I
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/b;->a(Lcom/google/android/gms/wallet/Cart;Landroid/os/Parcel;I)V
return-void
.end method