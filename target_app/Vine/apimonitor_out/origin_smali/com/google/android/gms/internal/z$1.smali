.class Lcom/google/android/gms/internal/z$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/z;-><init>(Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/z$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final lj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic lk:Lcom/google/android/gms/internal/v;

.field final synthetic ll:Lcom/google/android/gms/internal/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/v;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/z$1;->ll:Lcom/google/android/gms/internal/z;

    iput-object p2, p0, Lcom/google/android/gms/internal/z$1;->lk:Lcom/google/android/gms/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/z$1;->lk:Lcom/google/android/gms/internal/v;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/z$1;->lj:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/z$1;->ll:Lcom/google/android/gms/internal/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/z;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/z$1;->lj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/v;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/z$1;->ll:Lcom/google/android/gms/internal/z;

    invoke-static {v1}, Lcom/google/android/gms/internal/z;->a(Lcom/google/android/gms/internal/z;)Lcom/google/android/gms/internal/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/v;->b(Lcom/google/android/gms/internal/aj;)V

    :cond_19
    return-void
.end method
