.class Lcom/google/android/gms/internal/ne$3;
.super Lcom/google/android/gms/internal/ng;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ne;->b(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/internal/ne;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ne;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ne$3;->b:Lcom/google/android/gms/internal/ne;

    iput-object p3, p0, Lcom/google/android/gms/internal/ne$3;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ng;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/jy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ne$3;->a(Lcom/google/android/gms/internal/jy;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/jy;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ne$3;->a:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/jy;->b(Lcom/google/android/gms/common/api/t;Ljava/lang/String;)V

    return-void
.end method
