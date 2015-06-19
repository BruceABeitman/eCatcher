.class Lcom/glympse/android/hal/ak;
.super Ljava/lang/Object;
.source "GlympseSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bI:Lcom/glympse/android/hal/ai;


# direct methods
.method private constructor <init>(Lcom/glympse/android/hal/ai;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/hal/ak;->bI:Lcom/glympse/android/hal/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glympse/android/hal/ai;Lcom/glympse/android/hal/ai$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/glympse/android/hal/ak;-><init>(Lcom/glympse/android/hal/ai;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/ak;->bI:Lcom/glympse/android/hal/ai;

    invoke-static {v0}, Lcom/glympse/android/hal/ai;->h(Lcom/glympse/android/hal/ai;)V

    return-void
.end method
