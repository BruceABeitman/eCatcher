.class public interface abstract Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager;
.super Ljava/lang/Object;
.source "IDevModeLogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getLogs(Lcom/pinguo/camera360/lib/devmode/lib/IDevModeLogManager$LogLevel;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract hasNewLog()Z
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
