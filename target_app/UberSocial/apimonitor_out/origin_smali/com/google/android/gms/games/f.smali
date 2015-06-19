.class public final Lcom/google/android/gms/games/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f;


# instance fields
.field final a:Z

.field final b:Z

.field final c:I

.field final d:Z

.field final e:I


# direct methods
.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/games/f;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/f;->b:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/f;->c:I

    iput-boolean v1, p0, Lcom/google/android/gms/games/f;->d:Z

    const/16 v0, 0x1110

    iput v0, p0, Lcom/google/android/gms/games/f;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/e$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/games/f;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/games/g;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/google/android/gms/games/g;->a:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/f;->a:Z

    iget-boolean v0, p1, Lcom/google/android/gms/games/g;->b:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/f;->b:Z

    iget v0, p1, Lcom/google/android/gms/games/g;->c:I

    iput v0, p0, Lcom/google/android/gms/games/f;->c:I

    iget-boolean v0, p1, Lcom/google/android/gms/games/g;->d:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/f;->d:Z

    iget v0, p1, Lcom/google/android/gms/games/g;->e:I

    iput v0, p0, Lcom/google/android/gms/games/f;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/g;Lcom/google/android/gms/games/e$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/f;-><init>(Lcom/google/android/gms/games/g;)V

    return-void
.end method

.method public static a()Lcom/google/android/gms/games/g;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/g;-><init>(Lcom/google/android/gms/games/e$1;)V

    return-object v0
.end method
