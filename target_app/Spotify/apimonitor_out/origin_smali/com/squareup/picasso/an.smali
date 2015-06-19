.class final Lcom/squareup/picasso/an;
.super Ljava/lang/Thread;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
