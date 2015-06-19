.class public final Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic aky:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->aky:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;-><init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->aky:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)Lcom/google/android/gms/wallet/MaskedWallet;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->aky:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->b(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)Lcom/google/android/gms/wallet/MaskedWalletRequest;

    move-result-object v0

    if-eqz v0, :cond_22

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->aky:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)Lcom/google/android/gms/wallet/MaskedWallet;

    move-result-object v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->aky:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->b(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)Lcom/google/android/gms/wallet/MaskedWalletRequest;

    move-result-object v0

    if-eqz v0, :cond_38

    :cond_22
    move v0, v2

    :goto_23
    const-string v3, "Exactly one of MaskedWallet or MaskedWalletRequest is required"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->aky:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->c(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)I

    move-result v0

    if-ltz v0, :cond_3a

    :goto_30
    const-string v0, "masked wallet request code is required and must be non-negative"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->aky:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    return-object v0

    :cond_38
    move v0, v1

    goto :goto_23

    :cond_3a
    move v2, v1

    goto :goto_30
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->aky:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->aky:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Lcom/google/android/gms/wallet/MaskedWallet;)Lcom/google/android/gms/wallet/MaskedWallet;

    return-object p0
.end method

.method public setMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->aky:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Lcom/google/android/gms/wallet/MaskedWalletRequest;)Lcom/google/android/gms/wallet/MaskedWalletRequest;

    return-object p0
.end method

.method public setMaskedWalletRequestCode(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->aky:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;I)I

    return-object p0
.end method
