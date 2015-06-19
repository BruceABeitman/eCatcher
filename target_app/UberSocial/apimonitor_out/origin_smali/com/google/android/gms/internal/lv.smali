.class final Lcom/google/android/gms/internal/lv;
.super Lcom/google/android/gms/internal/gn;

# interfaces
.implements Lcom/google/android/gms/games/a/e;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jy;

.field private final c:Lcom/google/android/gms/common/api/Status;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;ILjava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/lv;->a:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/lv;->c:Lcom/google/android/gms/common/api/Status;

    iput-object p4, p0, Lcom/google/android/gms/internal/lv;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/lv;->c:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/common/api/t;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/common/api/t;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lv;->a(Lcom/google/android/gms/common/api/t;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/lv;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected c()V
    .registers 1

    return-void
.end method
