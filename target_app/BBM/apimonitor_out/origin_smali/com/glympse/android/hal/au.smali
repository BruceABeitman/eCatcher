.class Lcom/glympse/android/hal/au;
.super Ljava/lang/Object;
.source "LocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cv:Lcom/glympse/android/hal/at;


# direct methods
.method private constructor <init>(Lcom/glympse/android/hal/at;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/hal/au;->cv:Lcom/glympse/android/hal/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glympse/android/hal/at;Lcom/glympse/android/hal/at$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/glympse/android/hal/au;-><init>(Lcom/glympse/android/hal/at;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v0, 0x1

    const-string v1, "[GpsIdleTimer] Location timer fired"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/hal/au;->cv:Lcom/glympse/android/hal/at;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/hal/at;->a(Lcom/glympse/android/hal/at;Lcom/glympse/android/hal/au;)Lcom/glympse/android/hal/au;

    iget-object v0, p0, Lcom/glympse/android/hal/au;->cv:Lcom/glympse/android/hal/at;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/hal/at;->a(Lcom/glympse/android/hal/at;Z)Z

    iget-object v0, p0, Lcom/glympse/android/hal/au;->cv:Lcom/glympse/android/hal/at;

    invoke-virtual {v0}, Lcom/glympse/android/hal/at;->B()V

    return-void
.end method
