.class Lcom/glympse/android/lib/fe;
.super Ljava/lang/Object;
.source "JobQueue.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic px:Lcom/glympse/android/lib/fc;


# direct methods
.method private constructor <init>(Lcom/glympse/android/lib/fc;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/fe;->px:Lcom/glympse/android/lib/fc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glympse/android/lib/fc;Lcom/glympse/android/lib/fc$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/glympse/android/lib/fe;-><init>(Lcom/glympse/android/lib/fc;)V

    return-void
.end method


# virtual methods
.method public ck()Lcom/glympse/android/lib/GJob;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .registers 1

    return-void
.end method
