.class Lcom/google/android/gms/internal/sn;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/sm;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/sm;Ljava/lang/String;Z)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/sn;->a:Lcom/google/android/gms/internal/sm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/sn;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/sn;->c:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/sn;->c:Z

    return v0
.end method
