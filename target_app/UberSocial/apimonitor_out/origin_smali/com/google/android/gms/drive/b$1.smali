.class final Lcom/google/android/gms/drive/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/b;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const v0, 0x7fffffff

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/drive/internal/am;
    .registers 14

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ee;->d()Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/drive/internal/am;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/internal/am;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;[Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/b;
    .registers 8

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/drive/b$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/drive/internal/am;

    move-result-object v0

    return-object v0
.end method
