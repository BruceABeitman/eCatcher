.class public Lcom/google/android/gms/internal/p$a;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic kk:Lcom/google/android/gms/internal/p;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/p;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/p$a;->kk:Lcom/google/android/gms/internal/p;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/p;Ljava/lang/Throwable;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/p$a;->kk:Lcom/google/android/gms/internal/p;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
