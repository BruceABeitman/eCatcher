.class Lcom/google/android/gms/internal/ng$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ng;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/a/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/Status;

.field final synthetic b:Lcom/google/android/gms/internal/ng;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ng;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ng$1;->b:Lcom/google/android/gms/internal/ng;

    iput-object p2, p0, Lcom/google/android/gms/internal/ng$1;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ng$1;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ng$1;->b:Lcom/google/android/gms/internal/ng;

    invoke-static {v0}, Lcom/google/android/gms/internal/ng;->a(Lcom/google/android/gms/internal/ng;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
