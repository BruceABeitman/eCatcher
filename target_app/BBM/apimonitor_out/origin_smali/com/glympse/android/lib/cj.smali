.class Lcom/glympse/android/lib/cj;
.super Ljava/lang/Object;
.source "GogoLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private lW:Lcom/glympse/android/lib/ci;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/ci;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/cj;->lW:Lcom/glympse/android/lib/ci;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/cj;->lW:Lcom/glympse/android/lib/ci;

    invoke-virtual {v0}, Lcom/glympse/android/lib/ci;->bv()V

    return-void
.end method
