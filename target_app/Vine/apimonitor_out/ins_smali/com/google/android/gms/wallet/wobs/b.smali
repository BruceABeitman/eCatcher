.class public final Lcom/google/android/gms/wallet/wobs/b;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  label:Ljava/lang/String;
.field  value:Ljava/lang/String;
.field private final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wallet/wobs/c;
invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/c;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/wobs/b;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/wallet/wobs/b;->xJ:I
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/wobs/b;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/b;->label:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/b;->value:Ljava/lang/String;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/wobs/b;->xJ:I
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/c;->a(Lcom/google/android/gms/wallet/wobs/b;Landroid/os/Parcel;I)V
return-void
.end method