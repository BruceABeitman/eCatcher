.class public final Lcom/instagram/common/u/b/a;
.super Ljava/lang/Object;
.source "IgSystemClock.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Lcom/instagram/common/u/b/a;
.registers 1
invoke-static {}, Lcom/instagram/common/u/b/b;->a()Lcom/instagram/common/u/b/a;
move-result-object v0
return-object v0
.end method
.method public static b()J
.registers 2
invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J
move-result-wide v0
return-wide v0
.end method
.method public static c()J
.registers 2
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
return-wide v0
.end method
.method public static d()J
.registers 2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
return-wide v0
.end method