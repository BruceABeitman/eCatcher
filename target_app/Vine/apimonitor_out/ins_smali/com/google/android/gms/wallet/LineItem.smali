.class public final Lcom/google/android/gms/wallet/LineItem;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  aiH:Ljava/lang/String;
.field  aiI:Ljava/lang/String;
.field  ajb:Ljava/lang/String;
.field  ajc:Ljava/lang/String;
.field  ajd:I
.field  description:Ljava/lang/String;
.field private final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wallet/i;
invoke-direct {v0}, Lcom/google/android/gms/wallet/i;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/LineItem;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/wallet/LineItem;->xJ:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/wallet/LineItem;->ajd:I
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/LineItem;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/wallet/LineItem;->description:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/wallet/LineItem;->ajb:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/wallet/LineItem;->ajc:Ljava/lang/String;
iput-object p5, p0, Lcom/google/android/gms/wallet/LineItem;->aiH:Ljava/lang/String;
iput p6, p0, Lcom/google/android/gms/wallet/LineItem;->ajd:I
iput-object p7, p0, Lcom/google/android/gms/wallet/LineItem;->aiI:Ljava/lang/String;
return-void
.end method
.method public static newBuilder()Lcom/google/android/gms/wallet/LineItem$Builder;
.registers 3
new-instance v0, Lcom/google/android/gms/wallet/LineItem$Builder;
new-instance v1, Lcom/google/android/gms/wallet/LineItem;
invoke-direct {v1}, Lcom/google/android/gms/wallet/LineItem;-><init>()V
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/LineItem$Builder;-><init>(Lcom/google/android/gms/wallet/LineItem;Lcom/google/android/gms/wallet/LineItem$1;)V
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getCurrencyCode()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->aiI:Ljava/lang/String;
return-object v0
.end method
.method public getDescription()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->description:Ljava/lang/String;
return-object v0
.end method
.method public getQuantity()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->ajb:Ljava/lang/String;
return-object v0
.end method
.method public getRole()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/LineItem;->ajd:I
return v0
.end method
.method public getTotalPrice()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->aiH:Ljava/lang/String;
return-object v0
.end method
.method public getUnitPrice()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->ajc:Ljava/lang/String;
return-object v0
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/LineItem;->xJ:I
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/i;->a(Lcom/google/android/gms/wallet/LineItem;Landroid/os/Parcel;I)V
return-void
.end method