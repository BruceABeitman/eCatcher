.class public final Lcom/facebook/e/c/n;
.super Ljava/lang/Object;
.source "TracerClock.java"
.field private static volatile a:J
.method static constructor <clinit>()V
.registers 2
const-wide/16 v0, -0x1
sput-wide v0, Lcom/facebook/e/c/n;->a:J
return-void
.end method
.method public static a()J
.registers 6
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
sget-wide v2, Lcom/facebook/e/c/n;->a:J
const-wide/16 v4, -0x1
cmp-long v2, v2, v4
if-eqz v2, :cond_e
sget-wide v0, Lcom/facebook/e/c/n;->a:J
:cond_e
return-wide v0
.end method
.method public static b()J
.registers 2
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
return-wide v0
.end method