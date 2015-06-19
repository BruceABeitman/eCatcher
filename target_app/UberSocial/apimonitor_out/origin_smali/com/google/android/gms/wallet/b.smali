.class public final Lcom/google/android/gms/wallet/b;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wallet/FullWalletRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/FullWalletRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/b;->a:Lcom/google/android/gms/wallet/FullWalletRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/FullWalletRequest;Lcom/google/android/gms/wallet/FullWalletRequest$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/b;-><init>(Lcom/google/android/gms/wallet/FullWalletRequest;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/wallet/FullWalletRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/b;->a:Lcom/google/android/gms/wallet/FullWalletRequest;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/wallet/Cart;)Lcom/google/android/gms/wallet/b;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/b;->a:Lcom/google/android/gms/wallet/FullWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/FullWalletRequest;->c:Lcom/google/android/gms/wallet/Cart;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/wallet/b;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/b;->a:Lcom/google/android/gms/wallet/FullWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/FullWalletRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/gms/wallet/b;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/b;->a:Lcom/google/android/gms/wallet/FullWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/FullWalletRequest;->b:Ljava/lang/String;

    return-object p0
.end method
