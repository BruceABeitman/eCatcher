.class Lcom/google/android/gms/internal/no$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/no;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/b/h;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/Status;

.field final synthetic b:Lcom/google/android/gms/internal/no;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/no;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/no$1;->b:Lcom/google/android/gms/internal/no;

    iput-object p2, p0, Lcom/google/android/gms/internal/no$1;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/no$1;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public b()Lcom/google/android/gms/games/b/c;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
