.class public Lus/pinguo/androidsdk/pgedit/PGEditImageSDK;
.super Lus/pinguo/androidsdk/PGImageSDK;
.source "PGEditImageSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lus/pinguo/androidsdk/PGImageSDK;-><init>(Landroid/content/Context;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public destroySDK()V
    .registers 2

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .registers 1

    invoke-super {p0}, Lus/pinguo/androidsdk/PGImageSDK;->destroySDK()V

    return-void
.end method
