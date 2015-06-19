.class final Lcom/google/android/gms/internal/ih$a;
.super Lcom/google/android/gms/internal/eh$b;

# interfaces
.implements Lcom/google/android/gms/panorama/Panorama$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/eh",
        "<",
        "Lcom/google/android/gms/internal/ig;",
        ">.b<",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/panorama/Panorama$a;",
        ">;>;",
        "Lcom/google/android/gms/panorama/Panorama$a;"
    }
.end annotation


# instance fields
.field public final QE:Lcom/google/android/gms/common/api/Status;

.field public final QF:Landroid/content/Intent;

.field final synthetic QG:Lcom/google/android/gms/internal/ih;

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ih;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;ILandroid/content/Intent;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/panorama/Panorama$a;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "I",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ih$a;->QG:Lcom/google/android/gms/internal/ih;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/eh$b;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ih$a;->QE:Lcom/google/android/gms/common/api/Status;

    iput p4, p0, Lcom/google/android/gms/internal/ih$a;->type:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ih$a;->QF:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/common/api/a$c;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ih$a;->c(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method

.method protected final c(Lcom/google/android/gms/common/api/a$c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/panorama/Panorama$a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected final cP()V
    .registers 1

    return-void
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ih$a;->QE:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final getViewerIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ih$a;->QF:Landroid/content/Intent;

    return-object v0
.end method
