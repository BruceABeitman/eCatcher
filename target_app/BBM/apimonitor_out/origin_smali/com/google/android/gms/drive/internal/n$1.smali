.class Lcom/google/android/gms/drive/internal/n$1;
.super Lcom/google/android/gms/drive/internal/l$j;


# instance fields
.field final synthetic DD:Lcom/google/android/gms/drive/DriveId;

.field final synthetic DE:I

.field final synthetic DF:Lcom/google/android/gms/drive/internal/s;

.field final synthetic DG:Lcom/google/android/gms/drive/internal/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/n;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/internal/s;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/n$1;->DG:Lcom/google/android/gms/drive/internal/n;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/n$1;->DD:Lcom/google/android/gms/drive/DriveId;

    iput p3, p0, Lcom/google/android/gms/drive/internal/n$1;->DE:I

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/n$1;->DF:Lcom/google/android/gms/drive/internal/s;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/l$j;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/drive/internal/n;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/n$1;->a(Lcom/google/android/gms/drive/internal/n;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/n;)V
    .registers 7

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/n;->eT()Lcom/google/android/gms/drive/internal/u;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/n$1;->DD:Lcom/google/android/gms/drive/DriveId;

    iget v3, p0, Lcom/google/android/gms/drive/internal/n$1;->DE:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/n$1;->DF:Lcom/google/android/gms/drive/internal/s;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gms/drive/internal/ak;

    invoke-direct {v4, p0}, Lcom/google/android/gms/drive/internal/ak;-><init>(Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/u;->a(Lcom/google/android/gms/drive/internal/AddEventListenerRequest;Lcom/google/android/gms/drive/internal/w;Ljava/lang/String;Lcom/google/android/gms/drive/internal/v;)V

    return-void
.end method
