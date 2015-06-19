.class public final Lcom/google/android/gms/wallet/MaskedWalletRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Z

.field d:Z

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Lcom/google/android/gms/wallet/Cart;

.field i:Z

.field j:Z

.field k:[Lcom/google/android/gms/wallet/CountrySpecification;

.field l:Z

.field m:Z

.field n:Ljava/util/ArrayList;

.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/z;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/z;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->o:I

    iput-boolean v1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->l:Z

    iput-boolean v1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->m:Z

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Cart;ZZ[Lcom/google/android/gms/wallet/CountrySpecification;ZZLjava/util/ArrayList;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->o:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->b:Z

    iput-boolean p4, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->c:Z

    iput-boolean p5, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->d:Z

    iput-object p6, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->h:Lcom/google/android/gms/wallet/Cart;

    iput-boolean p10, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->i:Z

    iput-boolean p11, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->j:Z

    iput-object p12, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->k:[Lcom/google/android/gms/wallet/CountrySpecification;

    iput-boolean p13, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->l:Z

    iput-boolean p14, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->m:Z

    iput-object p15, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->n:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/google/android/gms/wallet/f;
    .registers 3

    new-instance v0, Lcom/google/android/gms/wallet/f;

    new-instance v1, Lcom/google/android/gms/wallet/MaskedWalletRequest;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/MaskedWalletRequest;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/f;-><init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;Lcom/google/android/gms/wallet/MaskedWalletRequest$1;)V

    return-object v0
.end method


# virtual methods
.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->o:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->b:Z

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->c:Z

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->d:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/google/android/gms/wallet/Cart;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->h:Lcom/google/android/gms/wallet/Cart;

    return-object v0
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->i:Z

    return v0
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->j:Z

    return v0
.end method

.method public m()[Lcom/google/android/gms/wallet/CountrySpecification;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->k:[Lcom/google/android/gms/wallet/CountrySpecification;

    return-object v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->l:Z

    return v0
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->m:Z

    return v0
.end method

.method public p()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/z;->a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Parcel;I)V

    return-void
.end method
