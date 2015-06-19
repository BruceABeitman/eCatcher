.class Lcom/google/android/gms/cast/d$6;
.super Lcom/google/android/gms/cast/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/d;->b(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/cast/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/d;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/cast/d$6;->a:Lcom/google/android/gms/cast/d;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/k;-><init>(Lcom/google/android/gms/cast/a$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/fm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/d$6;->a(Lcom/google/android/gms/internal/fm;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fm;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/fm;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/t;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/d$6;->a(I)V

    goto :goto_5
.end method
