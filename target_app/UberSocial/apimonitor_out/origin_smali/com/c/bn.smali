.class public final Lcom/c/bn;
.super Lcom/c/co;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/c/co;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/c/co;->a()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
