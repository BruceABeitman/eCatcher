.class public final Lcom/instagram/common/q/b/a/a;
.super Ljava/lang/Object;
.source "AdmPushRegistrar.java"
.implements Lcom/instagram/common/q/b/h;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/content/Context;)V
.registers 3
new-instance v0, Lcom/amazon/device/messaging/ADM;
invoke-direct {v0, p1}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->startRegister()V
return-void
.end method