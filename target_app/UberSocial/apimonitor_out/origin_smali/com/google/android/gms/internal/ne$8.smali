.class Lcom/google/android/gms/internal/ne$8;
.super Lcom/google/android/gms/internal/ng;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ne;->c(Lcom/google/android/gms/common/api/e;Ljava/lang/String;I)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/gms/internal/ne;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ne;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ne$8;->c:Lcom/google/android/gms/internal/ne;

    iput-object p3, p0, Lcom/google/android/gms/internal/ne$8;->a:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ne$8;->b:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ng;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/jy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ne$8;->a(Lcom/google/android/gms/internal/jy;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/jy;)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ne$8;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/ne$8;->b:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/jy;->b(Lcom/google/android/gms/common/api/t;Ljava/lang/String;I)V

    return-void
.end method
