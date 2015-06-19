.class final Lcom/google/android/gms/cast/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/a;
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

.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/internal/fm;
    .registers 16

    const-string v0, "Setting the API options is required."

    invoke-static {p4, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p4, Lcom/google/android/gms/cast/e;

    const-string v1, "Must provide valid CastOptions!"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V

    check-cast p4, Lcom/google/android/gms/cast/e;

    new-instance v0, Lcom/google/android/gms/internal/fm;

    iget-object v3, p4, Lcom/google/android/gms/cast/e;->a:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {p4}, Lcom/google/android/gms/cast/e;->a(Lcom/google/android/gms/cast/e;)I

    move-result v1

    int-to-long v4, v1

    iget-object v6, p4, Lcom/google/android/gms/cast/e;->b:Lcom/google/android/gms/cast/g;

    move-object v1, p1

    move-object v2, p2

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fm;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/g;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)V

    return-object v0
.end method

.method public synthetic b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/b;
    .registers 8

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/cast/a$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/internal/fm;

    move-result-object v0

    return-object v0
.end method
