.class public final Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:I
.field private b:Ljava/lang/String;
.field private c:Lcom/google/android/gms/wallet/MaskedWalletRequest;
.field private d:I
.field private e:Lcom/google/android/gms/wallet/MaskedWallet;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wallet/fragment/a;
invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/a;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->a:I
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->d:I
return-void
.end method
.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/wallet/MaskedWalletRequest;ILcom/google/android/gms/wallet/MaskedWallet;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->a:I
iput-object p2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->c:Lcom/google/android/gms/wallet/MaskedWalletRequest;
iput p4, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->d:I
iput-object p5, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->e:Lcom/google/android/gms/wallet/MaskedWallet;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->b:Ljava/lang/String;
return-object v0
.end method
.method public final b()Lcom/google/android/gms/wallet/MaskedWalletRequest;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->c:Lcom/google/android/gms/wallet/MaskedWalletRequest;
return-object v0
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->d:I
return v0
.end method
.method public final d()Lcom/google/android/gms/wallet/MaskedWallet;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->e:Lcom/google/android/gms/wallet/MaskedWallet;
return-object v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/fragment/a;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Landroid/os/Parcel;I)V
return-void
.end method