.class Lcom/google/android/gms/internal/ik$2;
.super Lcom/google/android/gms/internal/ik$a;


# instance fields
.field final synthetic HW:I

.field final synthetic RA:Landroid/net/Uri;

.field final synthetic RB:Ljava/lang/String;

.field final synthetic RC:Ljava/lang/String;

.field final synthetic Ry:Lcom/google/android/gms/internal/ik;

.field final synthetic Rz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ik;Lcom/google/android/gms/common/api/Api$b;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/internal/ik$2;->Ry:Lcom/google/android/gms/internal/ik;

    iput p3, p0, Lcom/google/android/gms/internal/ik$2;->HW:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ik$2;->Rz:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ik$2;->RA:Landroid/net/Uri;

    iput-object p6, p0, Lcom/google/android/gms/internal/ik$2;->RB:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ik$2;->RC:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ik$a;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ik$2;->a(Lcom/google/android/gms/plus/internal/e;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .registers 9

    iget v2, p0, Lcom/google/android/gms/internal/ik$2;->HW:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ik$2;->Rz:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ik$2;->RA:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/gms/internal/ik$2;->RB:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ik$2;->RC:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$c;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
