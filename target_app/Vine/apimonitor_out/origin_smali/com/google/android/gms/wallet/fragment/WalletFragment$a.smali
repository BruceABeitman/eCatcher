.class Lcom/google/android/gms/wallet/fragment/WalletFragment$a;
.super Lcom/google/android/gms/internal/lm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/fragment/WalletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private aku:Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;

.field private final akv:Lcom/google/android/gms/wallet/fragment/WalletFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wallet/fragment/WalletFragment;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/lm$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$a;->akv:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    return-void
.end method


# virtual methods
.method public a(IILandroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$a;->aku:Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$a;->aku:Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$a;->akv:Lcom/google/android/gms/wallet/fragment/WalletFragment;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;->onStateChanged(Lcom/google/android/gms/wallet/fragment/WalletFragment;IILandroid/os/Bundle;)V

    :cond_b
    return-void
.end method

.method public a(Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragment$a;->aku:Lcom/google/android/gms/wallet/fragment/WalletFragment$OnStateChangedListener;

    return-void
.end method
