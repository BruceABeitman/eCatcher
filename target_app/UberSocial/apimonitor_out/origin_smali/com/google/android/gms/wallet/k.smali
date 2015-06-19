.class public final Lcom/google/android/gms/wallet/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method private constructor <init>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/wallet/l;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/l;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/wallet/k;-><init>(Lcom/google/android/gms/wallet/l;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/j$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/wallet/k;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/wallet/l;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/wallet/l;->a(Lcom/google/android/gms/wallet/l;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wallet/k;->a:I

    invoke-static {p1}, Lcom/google/android/gms/wallet/l;->b(Lcom/google/android/gms/wallet/l;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wallet/k;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/l;Lcom/google/android/gms/wallet/j$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/k;-><init>(Lcom/google/android/gms/wallet/l;)V

    return-void
.end method
