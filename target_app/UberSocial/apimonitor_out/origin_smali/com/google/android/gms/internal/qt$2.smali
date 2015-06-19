.class Lcom/google/android/gms/internal/qt$2;
.super Lcom/google/android/gms/internal/qu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/qt;->a(Lcom/google/android/gms/common/api/e;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/google/android/gms/internal/qt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qt;Lcom/google/android/gms/common/api/c;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/internal/qt$2;->f:Lcom/google/android/gms/internal/qt;

    iput p3, p0, Lcom/google/android/gms/internal/qt$2;->a:I

    iput-object p4, p0, Lcom/google/android/gms/internal/qt$2;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/qt$2;->c:Landroid/net/Uri;

    iput-object p6, p0, Lcom/google/android/gms/internal/qt$2;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/qt$2;->e:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/qu;-><init>(Lcom/google/android/gms/common/api/c;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/plus/internal/l;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/qt$2;->a(Lcom/google/android/gms/plus/internal/l;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/l;)V
    .registers 9

    iget v2, p0, Lcom/google/android/gms/internal/qt$2;->a:I

    iget-object v3, p0, Lcom/google/android/gms/internal/qt$2;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/qt$2;->c:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/gms/internal/qt$2;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/qt$2;->e:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/l;->a(Lcom/google/android/gms/common/api/t;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
