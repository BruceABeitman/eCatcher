.class Lcom/google/android/gms/cast/d$2;
.super Lcom/google/android/gms/cast/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/cast/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/d;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/cast/d$2;->b:Lcom/google/android/gms/cast/d;

    iput-object p2, p0, Lcom/google/android/gms/cast/d$2;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/k;-><init>(Lcom/google/android/gms/cast/a$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/fm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/d$2;->a(Lcom/google/android/gms/internal/fm;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fm;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/d$2;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/fm;->a(Ljava/lang/String;ZLcom/google/android/gms/common/api/t;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/d$2;->a(I)V

    goto :goto_6
.end method
