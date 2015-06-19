.class Lcom/glympse/android/hal/aq;
.super Ljava/lang/Object;
.source "LocalContactsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private bU:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPerson;",
            ">;"
        }
    .end annotation
.end field

.field private bY:Lcom/glympse/android/hal/ao;


# direct methods
.method public constructor <init>(Lcom/glympse/android/hal/ao;Lcom/glympse/android/hal/GVector;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/ao;",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPerson;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/hal/aq;->bY:Lcom/glympse/android/hal/ao;

    iput-object p2, p0, Lcom/glympse/android/hal/aq;->bU:Lcom/glympse/android/hal/GVector;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/aq;->bY:Lcom/glympse/android/hal/ao;

    iget-object v1, p0, Lcom/glympse/android/hal/aq;->bU:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/ao;->complete(Lcom/glympse/android/hal/GVector;)V

    return-void
.end method
