.class Lcom/glympse/android/lib/au;
.super Ljava/lang/Object;
.source "Debug.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glympse/android/lib/Debug$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/glympse/android/lib/au;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    invoke-static {}, Lcom/glympse/android/lib/Debug;->uploadLogsOnCurrentThread()V

    return-void
.end method
