.class final Lcom/google/android/gms/internal/kx;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/kw;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/kw;Ljava/lang/String;Z)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/kx;->a:Lcom/google/android/gms/internal/kw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/kx;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/kx;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/kx;->c:Z

    return v0
.end method
