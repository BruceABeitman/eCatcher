.class final Lcom/google/android/gms/appstate/AppStateManager$7;
.super Lcom/google/android/gms/appstate/AppStateManager$c;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/appstate/AppStateManager$c;-><init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/dl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$7;->a(Lcom/google/android/gms/internal/dl;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/dl;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/dl;->a(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method