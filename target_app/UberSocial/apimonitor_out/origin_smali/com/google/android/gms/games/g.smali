.class public final Lcom/google/android/gms/games/g;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:Z

.field e:I


# direct methods
.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/games/g;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/g;->b:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/g;->c:I

    iput-boolean v1, p0, Lcom/google/android/gms/games/g;->d:Z

    const/16 v0, 0x1110

    iput v0, p0, Lcom/google/android/gms/games/g;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/e$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/games/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/games/f;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/games/f;-><init>(Lcom/google/android/gms/games/g;Lcom/google/android/gms/games/e$1;)V

    return-object v0
.end method

.method public a(I)Lcom/google/android/gms/games/g;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/games/g;->e:I

    return-object p0
.end method

.method public a(Z)Lcom/google/android/gms/games/g;
    .registers 3

    iput-boolean p1, p0, Lcom/google/android/gms/games/g;->b:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/g;->c:I

    return-object p0
.end method

.method public a(ZI)Lcom/google/android/gms/games/g;
    .registers 3

    iput-boolean p1, p0, Lcom/google/android/gms/games/g;->b:Z

    iput p2, p0, Lcom/google/android/gms/games/g;->c:I

    return-object p0
.end method
