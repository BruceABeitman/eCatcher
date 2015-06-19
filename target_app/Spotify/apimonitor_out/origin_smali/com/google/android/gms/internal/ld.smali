.class public abstract Lcom/google/android/gms/internal/ld;
.super Ljava/lang/Object;


# instance fields
.field protected volatile n:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ld;->n:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ld;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ld;->n:I

    return v0
.end method

.method public a(Lcom/google/android/gms/internal/ko;)V
    .registers 2

    return-void
.end method

.method protected b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ld;->n:I

    if-gez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ld;->a()I

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/ld;->n:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/le;->a(Lcom/google/android/gms/internal/ld;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
