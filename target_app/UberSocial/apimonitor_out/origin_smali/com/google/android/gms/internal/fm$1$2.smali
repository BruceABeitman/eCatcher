.class Lcom/google/android/gms/internal/fm$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fm$1;->a(Ljava/lang/String;DZ)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:D

.field final synthetic c:Z

.field final synthetic d:Lcom/google/android/gms/internal/fm$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fm$1;Ljava/lang/String;DZ)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/fm$1$2;->d:Lcom/google/android/gms/internal/fm$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/fm$1$2;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/fm$1$2;->b:D

    iput-boolean p5, p0, Lcom/google/android/gms/internal/fm$1$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/fm$1$2;->d:Lcom/google/android/gms/internal/fm$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/fm$1;->a:Lcom/google/android/gms/internal/fm;

    iget-object v1, p0, Lcom/google/android/gms/internal/fm$1$2;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/fm$1$2;->b:D

    iget-boolean v4, p0, Lcom/google/android/gms/internal/fm$1$2;->c:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/fm;->a(Lcom/google/android/gms/internal/fm;Ljava/lang/String;DZ)V

    return-void
.end method
