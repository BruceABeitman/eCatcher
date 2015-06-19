.class final Lcom/google/android/gms/internal/jj$1;
.super Lcom/google/android/gms/internal/jl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jj;->a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/m;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jj;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/jj$1;->a:Lcom/google/android/gms/internal/jj;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jl;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/f;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/plus/internal/m;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/plus/internal/m;->a(Lcom/google/android/gms/common/api/w;)V

    return-void
.end method
