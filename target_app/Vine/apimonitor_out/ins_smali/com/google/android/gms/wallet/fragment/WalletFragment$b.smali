.class  Lcom/google/android/gms/wallet/fragment/WalletFragment$b;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/dynamic/LifecycleDelegate;
.field private final ako:Lcom/google/android/gms/internal/ll;
.method private constructor <init>(Lcom/google/android/gms/internal/ll;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->ako:Lcom/google/android/gms/internal/ll;
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/wallet/fragment/WalletFragment$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;-><init>(Lcom/google/android/gms/internal/ll;)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;)I
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->getState()I
move-result v0
return v0
.end method
.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;IILandroid/content/Intent;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->onActivityResult(IILandroid/content/Intent;)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;Lcom/google/android/gms/wallet/MaskedWallet;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->updateMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->updateMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragment$b;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->setEnabled(Z)V
return-void
.end method
.method private getState()I
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->ako:Lcom/google/android/gms/internal/ll;
invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->getState()I
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method private initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->ako:Lcom/google/android/gms/internal/ll;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ll;->initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method private onActivityResult(IILandroid/content/Intent;)V
.registers 6
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->ako:Lcom/google/android/gms/internal/ll;
invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ll;->onActivityResult(IILandroid/content/Intent;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method private setEnabled(Z)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->ako:Lcom/google/android/gms/internal/ll;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ll;->setEnabled(Z)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method private updateMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->ako:Lcom/google/android/gms/internal/ll;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ll;->updateMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method private updateMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->ako:Lcom/google/android/gms/internal/ll;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ll;->updateMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/google/android/gms/wallet/fragment/WalletFragment$b; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->ako:Lcom/google/android/gms/internal/ll;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ll;->onCreate(Landroid/os/Bundle;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/wallet/fragment/WalletFragment$b; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 7
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->ako:Lcom/google/android/gms/internal/ll;
invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;
move-result-object v1
invoke-static {p2}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;
move-result-object v2
invoke-interface {v0, v1, v2, p3}, Lcom/google/android/gms/internal/ll;->onCreateView(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/dynamic/d;Landroid/os/Bundle;)Lcom/google/android/gms/dynamic/d;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
:try_end_14
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15
return-object v0
:catch_15
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/google/android/gms/wallet/fragment/WalletFragment$b; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/google/android/gms/wallet/fragment/WalletFragment$b; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroyView()V
.registers 1
return-void
.end method
.method public onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
.registers 7
const-string v0, "extraWalletFragmentOptions"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
:try_start_8
iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->ako:Lcom/google/android/gms/internal/ll;
invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;
move-result-object v2
invoke-interface {v1, v2, v0, p3}, Lcom/google/android/gms/internal/ll;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Landroid/os/Bundle;)V
:try_end_11
.catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12
return-void
:catch_12
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public onLowMemory()V
.registers 1
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/google/android/gms/wallet/fragment/WalletFragment$b; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->ako:Lcom/google/android/gms/internal/ll;
invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->onPause()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/wallet/fragment/WalletFragment$b; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/google/android/gms/wallet/fragment/WalletFragment$b; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->ako:Lcom/google/android/gms/internal/ll;
invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->onResume()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/wallet/fragment/WalletFragment$b; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/google/android/gms/wallet/fragment/WalletFragment$b; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->ako:Lcom/google/android/gms/internal/ll;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ll;->onSaveInstanceState(Landroid/os/Bundle;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/wallet/fragment/WalletFragment$b; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/google/android/gms/wallet/fragment/WalletFragment$b; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->ako:Lcom/google/android/gms/internal/ll;
invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->onStart()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/wallet/fragment/WalletFragment$b; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/google/android/gms/wallet/fragment/WalletFragment$b; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$b;->ako:Lcom/google/android/gms/internal/ll;
invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->onStop()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
const-string v1, " - Lcom/google/android/gms/wallet/fragment/WalletFragment$b; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method