.class Lcom/google/android/gms/drive/internal/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/g;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/Status;

.field private final b:Lcom/google/android/gms/drive/r;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/r;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/ad;->a:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/ad;->b:Lcom/google/android/gms/drive/r;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/ad;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public b()Lcom/google/android/gms/drive/r;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/ad;->b:Lcom/google/android/gms/drive/r;

    return-object v0
.end method
