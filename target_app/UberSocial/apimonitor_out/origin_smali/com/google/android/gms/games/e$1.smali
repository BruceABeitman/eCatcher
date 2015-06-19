.class final Lcom/google/android/gms/games/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/e;
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

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/internal/jy;
    .registers 23

    new-instance v1, Lcom/google/android/gms/games/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/games/f;-><init>(Lcom/google/android/gms/games/e$1;)V

    if-eqz p4, :cond_49

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/google/android/gms/games/f;

    const-string v2, "Must provide valid GamesOptions!"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V

    check-cast p4, Lcom/google/android/gms/games/f;

    :goto_13
    new-instance v1, Lcom/google/android/gms/internal/jy;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ee;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ee;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ee;->e()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ee;->c()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ee;->g()Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p4

    iget-boolean v11, v0, Lcom/google/android/gms/games/f;->a:Z

    move-object/from16 v0, p4

    iget-boolean v12, v0, Lcom/google/android/gms/games/f;->b:Z

    move-object/from16 v0, p4

    iget v13, v0, Lcom/google/android/gms/games/f;->c:I

    move-object/from16 v0, p4

    iget-boolean v14, v0, Lcom/google/android/gms/games/f;->d:Z

    move-object/from16 v0, p4

    iget v15, v0, Lcom/google/android/gms/games/f;->e:I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/internal/jy;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;[Ljava/lang/String;ILandroid/view/View;ZZIZI)V

    return-object v1

    :cond_49
    move-object/from16 p4, v1

    goto :goto_13
.end method

.method public synthetic b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/b;
    .registers 8

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/games/e$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/internal/jy;

    move-result-object v0

    return-object v0
.end method
