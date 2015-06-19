.class final Lcom/google/android/gms/internal/eh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/eh;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/eh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/eh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/eh$1;->a:Lcom/google/android/gms/internal/eh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/eh$1;->a:Lcom/google/android/gms/internal/eh;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eh;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/internal/eh$1;->a:Lcom/google/android/gms/internal/eh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eh;->a()V

    return-void
.end method
