.class Lcom/google/android/gms/drive/internal/l$3;
.super Lcom/google/android/gms/drive/internal/l$j;


# instance fields
.field final synthetic Dv:Lcom/google/android/gms/drive/internal/l;

.field final synthetic Dw:Lcom/google/android/gms/drive/Contents;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/l;Lcom/google/android/gms/drive/Contents;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/l$3;->Dv:Lcom/google/android/gms/drive/internal/l;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/l$3;->Dw:Lcom/google/android/gms/drive/Contents;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/l$j;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/drive/internal/n;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/l$3;->a(Lcom/google/android/gms/drive/internal/n;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/n;)V
    .registers 6

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/n;->eT()Lcom/google/android/gms/drive/internal/u;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/CloseContentsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/l$3;->Dw:Lcom/google/android/gms/drive/Contents;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/CloseContentsRequest;-><init>(Lcom/google/android/gms/drive/Contents;Z)V

    new-instance v2, Lcom/google/android/gms/drive/internal/ak;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/ak;-><init>(Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/u;->a(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Lcom/google/android/gms/drive/internal/v;)V

    return-void
.end method
