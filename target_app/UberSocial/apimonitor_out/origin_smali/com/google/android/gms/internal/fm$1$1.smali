.class Lcom/google/android/gms/internal/fm$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fm$1;->e(I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/internal/fm$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fm$1;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/fm$1$1;->b:Lcom/google/android/gms/internal/fm$1;

    iput p2, p0, Lcom/google/android/gms/internal/fm$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fm$1$1;->b:Lcom/google/android/gms/internal/fm$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/fm$1;->a:Lcom/google/android/gms/internal/fm;

    invoke-static {v0}, Lcom/google/android/gms/internal/fm;->b(Lcom/google/android/gms/internal/fm;)Lcom/google/android/gms/cast/g;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/fm$1$1;->b:Lcom/google/android/gms/internal/fm$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/fm$1;->a:Lcom/google/android/gms/internal/fm;

    invoke-static {v0}, Lcom/google/android/gms/internal/fm;->b(Lcom/google/android/gms/internal/fm;)Lcom/google/android/gms/cast/g;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/fm$1$1;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/g;->a(I)V

    :cond_17
    return-void
.end method
