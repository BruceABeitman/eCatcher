.class final Lcom/google/android/gms/internal/cd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cd;-><init>(Lcom/google/android/gms/internal/ca;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ca;

.field final synthetic b:Lcom/google/android/gms/internal/cd;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/ca;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/ca;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/cd$1;->b:Lcom/google/android/gms/internal/cd;

    iput-object p2, p0, Lcom/google/android/gms/internal/cd$1;->a:Lcom/google/android/gms/internal/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/cd$1;->a:Lcom/google/android/gms/internal/ca;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cd$1;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cd$1;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ca;

    iget-object v1, p0, Lcom/google/android/gms/internal/cd$1;->b:Lcom/google/android/gms/internal/cd;

    invoke-static {v1}, Lcom/google/android/gms/internal/cd;->a(Lcom/google/android/gms/internal/cd;)Z

    move-result v1

    if-nez v1, :cond_1a

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ca;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cd$1;->b:Lcom/google/android/gms/internal/cd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cd;->b()V

    :cond_1a
    return-void
.end method
