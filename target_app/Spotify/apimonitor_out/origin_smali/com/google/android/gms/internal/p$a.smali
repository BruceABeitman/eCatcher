.class public Lcom/google/android/gms/internal/p$a;
.super Ljava/lang/Exception;


# instance fields
.field final synthetic kj:Lcom/google/android/gms/internal/p;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/p;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/p$a;->kj:Lcom/google/android/gms/internal/p;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/p$a;->kj:Lcom/google/android/gms/internal/p;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
