.class public final Lcom/userzoom/cl;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/userzoom/cm;

    invoke-direct {v1}, Lcom/userzoom/cm;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static a()Lcom/userzoom/cl;
    .registers 1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v0, Lcom/userzoom/cl;

    invoke-direct {v0}, Lcom/userzoom/cl;-><init>()V

    return-object v0
.end method
