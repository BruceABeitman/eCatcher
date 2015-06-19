.class Lcom/google/android/gms/internal/tn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/tn;-><init>(Lcom/google/android/gms/internal/tl;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/tl;

.field final synthetic b:Lcom/google/android/gms/internal/tn;

.field private final c:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/tn;Lcom/google/android/gms/internal/tl;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/tn$1;->b:Lcom/google/android/gms/internal/tn;

    iput-object p2, p0, Lcom/google/android/gms/internal/tn$1;->a:Lcom/google/android/gms/internal/tl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/tn$1;->a:Lcom/google/android/gms/internal/tl;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/tn$1;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/tn$1;->b:Lcom/google/android/gms/internal/tn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/tn;->a(Lcom/google/android/gms/internal/tn;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/tn$1;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/tl;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/tn$1;->b:Lcom/google/android/gms/internal/tn;

    invoke-static {v1}, Lcom/google/android/gms/internal/tn;->a(Lcom/google/android/gms/internal/tn;)Lcom/google/android/gms/internal/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tl;->b(Lcom/google/android/gms/internal/z;)V

    :cond_19
    return-void
.end method
