.class public final Lcom/instagram/common/u/c/c;
.super Ljava/lang/Thread;
.source "IgThread.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput p3, p0, Lcom/instagram/common/u/c/c;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/instagram/common/u/c/c;->a:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
