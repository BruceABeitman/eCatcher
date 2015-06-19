.class final Lcom/google/android/gms/wallet/j$5;
.super Lcom/google/android/gms/wallet/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wallet/j;->a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/wallet/j$5;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/wallet/j$5;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/wallet/j$5;->c:I

    invoke-direct {p0}, Lcom/google/android/gms/wallet/m;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ry;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/j$5;->a(Lcom/google/android/gms/internal/ry;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ry;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/wallet/j$5;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/wallet/j$5;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/wallet/j$5;->c:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ry;->a(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wallet/j$5;->a(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method
