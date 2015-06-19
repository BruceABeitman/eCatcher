.class Lcom/google/android/gms/internal/bz$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nV:Lcom/google/android/gms/internal/bz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/bz$1;->nV:Lcom/google/android/gms/internal/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bz$1;->nV:Lcom/google/android/gms/internal/bz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bz;->onStop()V

    return-void
.end method
