.class Lcom/google/android/gms/internal/nx$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/request/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nx;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/request/f;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/Status;

.field final synthetic b:Lcom/google/android/gms/internal/nx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nx;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/nx$1;->b:Lcom/google/android/gms/internal/nx;

    iput-object p2, p0, Lcom/google/android/gms/internal/nx$1;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nx$1;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public a(I)Lcom/google/android/gms/games/request/b;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .registers 1

    return-void
.end method
