.class Lcom/glympse/android/hal/af;
.super Ljava/lang/Object;
.source "GlympseHttpConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic br:Lcom/glympse/android/hal/ae;


# direct methods
.method private constructor <init>(Lcom/glympse/android/hal/ae;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/hal/af;->br:Lcom/glympse/android/hal/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glympse/android/hal/ae;Lcom/glympse/android/hal/ae$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/glympse/android/hal/af;-><init>(Lcom/glympse/android/hal/ae;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/af;->br:Lcom/glympse/android/hal/ae;

    invoke-virtual {v0}, Lcom/glympse/android/hal/ae;->close()V

    return-void
.end method
