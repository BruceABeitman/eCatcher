.class Lcom/google/android/gms/cast/d$3;
.super Lcom/google/android/gms/cast/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/gms/cast/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/d;Ljava/lang/String;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/cast/d$3;->c:Lcom/google/android/gms/cast/d;

    iput-object p2, p0, Lcom/google/android/gms/cast/d$3;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/cast/d$3;->b:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/k;-><init>(Lcom/google/android/gms/cast/a$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/fm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/d$3;->a(Lcom/google/android/gms/internal/fm;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fm;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/d$3;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/cast/d$3;->b:Z

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/fm;->a(Ljava/lang/String;ZLcom/google/android/gms/common/api/t;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/d$3;->a(I)V

    goto :goto_7
.end method