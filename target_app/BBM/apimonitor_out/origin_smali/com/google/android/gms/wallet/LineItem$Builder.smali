.class public final Lcom/google/android/gms/wallet/LineItem$Builder;
.super Ljava/lang/Object;


# instance fields
.field final synthetic YB:Lcom/google/android/gms/wallet/LineItem;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/LineItem;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->YB:Lcom/google/android/gms/wallet/LineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/LineItem;Lcom/google/android/gms/wallet/LineItem$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/LineItem$Builder;-><init>(Lcom/google/android/gms/wallet/LineItem;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/wallet/LineItem;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->YB:Lcom/google/android/gms/wallet/LineItem;

    return-object v0
.end method

.method public final setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->YB:Lcom/google/android/gms/wallet/LineItem;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->Yg:Ljava/lang/String;

    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->YB:Lcom/google/android/gms/wallet/LineItem;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setQuantity(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->YB:Lcom/google/android/gms/wallet/LineItem;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->Yy:Ljava/lang/String;

    return-object p0
.end method

.method public final setRole(I)Lcom/google/android/gms/wallet/LineItem$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->YB:Lcom/google/android/gms/wallet/LineItem;

    iput p1, v0, Lcom/google/android/gms/wallet/LineItem;->YA:I

    return-object p0
.end method

.method public final setTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->YB:Lcom/google/android/gms/wallet/LineItem;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->Yf:Ljava/lang/String;

    return-object p0
.end method

.method public final setUnitPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->YB:Lcom/google/android/gms/wallet/LineItem;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->Yz:Ljava/lang/String;

    return-object p0
.end method
