.class  Landroid/support/v4/net/ConnectivityManagerCompat$GingerbreadConnectivityManagerCompatImpl;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"
.implements Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
.registers 3
invoke-static {p1}, Landroid/support/v4/net/ConnectivityManagerCompatGingerbread;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
move-result v0
return v0
.end method