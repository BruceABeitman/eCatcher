.class public final Lcom/google/android/gms/wallet/Cart;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/String;
.field  c:Ljava/util/ArrayList;
.field private final d:I
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
iput v0, p0, Lcom/google/android/gms/wallet/Cart;->d:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/wallet/Cart;->c:Ljava/util/ArrayList;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/Cart;->d:I
iput-object p2, p0, Lcom/google/android/gms/wallet/Cart;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/wallet/Cart;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/wallet/Cart;->c:Ljava/util/ArrayList;
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/Cart;->d:I
return v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/wallet/b;->a(Lcom/google/android/gms/wallet/Cart;Landroid/os/Parcel;)V
return-void
.end method