.class public final Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:I
.field  b:Landroid/os/Bundle;
.field  c:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wallet/fragment/c;
invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/c;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->a:I
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->b:Landroid/os/Bundle;
return-void
.end method
.method constructor <init>(ILandroid/os/Bundle;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->a:I
iput-object p2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->b:Landroid/os/Bundle;
iput p3, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->c:I
return-void
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/wallet/fragment/c;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;Landroid/os/Parcel;)V
return-void
.end method