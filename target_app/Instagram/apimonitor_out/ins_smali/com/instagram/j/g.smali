.class public final Lcom/instagram/j/g;
.super Ljava/lang/Object;
.source "TrafficStatsDelegate.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(I)J
.registers 3
invoke-static {p0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J
move-result-wide v0
return-wide v0
.end method
.method public static b(I)J
.registers 3
invoke-static {p0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J
move-result-wide v0
return-wide v0
.end method