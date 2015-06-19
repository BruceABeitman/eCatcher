.class Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$a;
.super Lcom/google/android/gms/internal/lm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private akm:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$OnStateChangedListener;

.field private final akn:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/lm$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$a;->akn:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    return-void
.end method


# virtual methods
.method public a(IILandroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$a;->akm:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$OnStateChangedListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$a;->akm:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$OnStateChangedListener;

    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$a;->akn:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$OnStateChangedListener;->onStateChanged(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;IILandroid/os/Bundle;)V

    :cond_b
    return-void
.end method

.method public a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$OnStateChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$a;->akm:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$OnStateChangedListener;

    return-void
.end method
