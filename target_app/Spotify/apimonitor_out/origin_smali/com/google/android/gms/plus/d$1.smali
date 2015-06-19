.class final Lcom/google/android/gms/plus/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/d;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/g",
        "<",
        "Lcom/google/android/gms/plus/internal/m;",
        "Lcom/google/android/gms/plus/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/fc;Ljava/lang/Object;Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/f;
    .registers 16

    const/4 v5, 0x0

    check-cast p4, Lcom/google/android/gms/plus/e;

    if-nez p4, :cond_a

    new-instance p4, Lcom/google/android/gms/plus/e;

    invoke-direct {p4, v5}, Lcom/google/android/gms/plus/e;-><init>(B)V

    :cond_a
    new-instance v8, Lcom/google/android/gms/plus/internal/m;

    new-instance v0, Lcom/google/android/gms/plus/internal/h;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/fc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/fc;->b()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p4, Lcom/google/android/gms/plus/e;->b:Ljava/util/Set;

    new-array v4, v5, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-direct {v7}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;-><init>()V

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/plus/internal/h;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/plus/internal/m;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/plus/internal/h;)V

    return-object v8
.end method
