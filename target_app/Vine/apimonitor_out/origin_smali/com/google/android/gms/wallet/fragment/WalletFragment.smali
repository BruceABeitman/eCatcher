.class public final Lcom/google/android/gms/wallet/fragment/WalletFragment;
.super Landroid/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/fragment/WalletFragment$1;,
        Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;,
        Lcom/google/android/gms/wallet/fragment/WalletFragment$a;,
        Lcom/google/android/gms/wallet/fragment/WalletFragment$b;,
        Lcom/google/android/gms/wallet/fragment/WalletFragment$c;
    }
.end annotation


# instance fields
.field private final Mg:Landroid/app/Fragment;

.field private akh:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

.field private aki:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

.field private akj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

.field private akk:Lcom/google/android/gms/wallet/MaskedWallet;

.field private akl:Ljava/lang/Boolean;

.field private akq:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

.field private final akr:Lcom/google/android/gms/dynamic/b;

.field private final aks:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

.field private akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$a;

.field private mCreated:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->mCreated:Z

    invoke-static {p0}, Lcom/google/android/gms/dynamic/b;->a(Landroid/app/Fragment;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akr:Lcom/google/android/gms/dynamic/b;

    new-instance v0, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;-><init>(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/fragment/WalletFragment$1;)V

    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aks:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    new-instance v0, Lcom/google/android/gms/wallet/fragment/WalletFragment$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wallet/fragment/WalletFragment$a;-><init>(Lcom/google/android/gms/wallet/fragment/WalletFragment;)V

    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$a;

    iput-object p0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mg:Landroid/app/Fragment;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Landroid/app/Fragment;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mg:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/MaskedWallet;)Lcom/google/android/gms/wallet/MaskedWallet;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/MaskedWallet;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/MaskedWalletRequest;)Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/fragment/WalletFragment$b;)Lcom/google/android/gms/wallet/fragment/WalletFragment$b;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akq:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aki:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akh:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragment$b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akq:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->mCreated:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/dynamic/b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akr:Lcom/google/android/gms/dynamic/b;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akh:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragment$a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$a;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aki:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Lcom/google/android/gms/wallet/MaskedWallet;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/MaskedWallet;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/wallet/fragment/WalletFragment;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;)Lcom/google/android/gms/wallet/fragment/WalletFragment;
    .registers 4

    new-instance v0, Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extraWalletFragmentOptions"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, v0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mg:Landroid/app/Fragment;

    invoke-virtual {v2, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getState()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akq:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akq:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akq:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akq:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aki:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aki:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    if-nez v0, :cond_2a

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aki:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    if-eqz v0, :cond_1e

    const-string v0, "WalletFragment"

    const-string v1, "updateMaskedWalletRequest() was called before initialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/MaskedWallet;

    if-eqz v0, :cond_c

    const-string v0, "WalletFragment"

    const-string v1, "updateMaskedWallet() was called before initialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_2a
    const-string v0, "WalletFragment"

    const-string v1, "initialize(WalletFragmentInitParams) was called more than once. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akq:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akq:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;IILandroid/content/Intent;)V

    :cond_c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_70

    const-class v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "walletFragmentInitParams"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aki:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    if-eqz v1, :cond_23

    const-string v1, "WalletFragment"

    const-string v2, "initialize(WalletFragmentInitParams) was called more than once.Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aki:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    if-nez v0, :cond_33

    const-string v0, "maskedWalletRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/MaskedWallet;

    if-nez v0, :cond_41

    const-string v0, "maskedWallet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/MaskedWallet;

    :cond_41
    const-string v0, "walletFragmentOptions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string v0, "walletFragmentOptions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akh:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    :cond_53
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Ljava/lang/Boolean;

    :cond_67
    :goto_67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->mCreated:Z

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aks:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_70
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extraWalletFragmentOptions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    if-eqz v0, :cond_67

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mg:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->N(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akh:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    goto :goto_67
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aks:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->mCreated:Z

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akh:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    if-nez v0, :cond_d

    invoke-static {p1, p2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akh:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    :cond_d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "attrKeyWalletFragmentOptions"

    iget-object v2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akh:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aks:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    invoke-virtual {v1, p1, v0, p3}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aks:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aks:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;->onResume()V

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GooglePlayServicesErrorDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mg:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->Mg:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorDialogFragment(ILandroid/app/Activity;I)Z

    :cond_39
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-class v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aks:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aki:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    if-eqz v0, :cond_1f

    const-string v0, "walletFragmentInitParams"

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aki:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iput-object v2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aki:Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    if-eqz v0, :cond_2c

    const-string v0, "maskedWalletRequest"

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iput-object v2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/MaskedWallet;

    if-eqz v0, :cond_39

    const-string v0, "maskedWallet"

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/MaskedWallet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iput-object v2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/MaskedWallet;

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akh:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    if-eqz v0, :cond_46

    const-string v0, "walletFragmentOptions"

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akh:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iput-object v2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akh:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Ljava/lang/Boolean;

    if-eqz v0, :cond_57

    const-string v0, "enabled"

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Ljava/lang/Boolean;

    :cond_57
    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aks:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;->onStart()V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->aks:Lcom/google/android/gms/wallet/fragment/WalletFragment$c;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragment$c;->onStop()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akq:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akq:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Ljava/lang/Boolean;

    :goto_c
    return-void

    :cond_d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akl:Ljava/lang/Boolean;

    goto :goto_c
.end method

.method public setOnStateChangedListener(Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akt:Lcom/google/android/gms/wallet/fragment/WalletFragment$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$a;->a(Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;)V

    return-void
.end method

.method public updateMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akq:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akq:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;Lcom/google/android/gms/wallet/MaskedWallet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/MaskedWallet;

    :goto_c
    return-void

    :cond_d
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akk:Lcom/google/android/gms/wallet/MaskedWallet;

    goto :goto_c
.end method

.method public updateMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akq:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akq:Lcom/google/android/gms/wallet/fragment/WalletFragment$b;

    invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;Lcom/google/android/gms/wallet/MaskedWalletRequest;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    :goto_c
    return-void

    :cond_d
    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment;->akj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    goto :goto_c
.end method
