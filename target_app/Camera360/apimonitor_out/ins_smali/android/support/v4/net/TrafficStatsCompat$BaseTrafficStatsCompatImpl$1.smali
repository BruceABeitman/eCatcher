.class  Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;
.super Ljava/lang/ThreadLocal;
.source "TrafficStatsCompat.java"
.field final synthetic this$0:Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;
.method constructor <init>(Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;->this$0:Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;
invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V
return-void
.end method
.method protected initialValue()Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
.registers 3
new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
const/4 v1, 0x0
invoke-direct {v0, v1}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;-><init>(Landroid/support/v4/net/TrafficStatsCompat$1;)V
return-object v0
.end method
.method protected bridge synthetic initialValue()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;->initialValue()Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
move-result-object v0
return-object v0
.end method