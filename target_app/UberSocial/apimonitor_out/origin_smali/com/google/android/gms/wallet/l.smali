.class public final Lcom/google/android/gms/wallet/l;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/wallet/l;->a:I

    iput v0, p0, Lcom/google/android/gms/wallet/l;->b:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/l;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/l;->a:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/wallet/l;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/l;->b:I

    return v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/wallet/k;
    .registers 3

    new-instance v0, Lcom/google/android/gms/wallet/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wallet/k;-><init>(Lcom/google/android/gms/wallet/l;Lcom/google/android/gms/wallet/j$1;)V

    return-object v0
.end method

.method public a(I)Lcom/google/android/gms/wallet/l;
    .registers 6

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    if-ne p1, v1, :cond_b

    :cond_8
    iput p1, p0, Lcom/google/android/gms/wallet/l;->a:I

    return-object p0

    :cond_b
    const-string v0, "Invalid environment value %d"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(I)Lcom/google/android/gms/wallet/l;
    .registers 6

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-ne p1, v1, :cond_8

    :cond_5
    iput p1, p0, Lcom/google/android/gms/wallet/l;->b:I

    return-object p0

    :cond_8
    const-string v0, "Invalid theme value %d"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
