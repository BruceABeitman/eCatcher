.class  Landroid/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"
.implements Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
.registers 5
const/4 v2, 0x1
invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-nez v0, :cond_8
:goto_7
:pswitch_7
return v2
:cond_8
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v1
packed-switch v1, :pswitch_data_12
goto :goto_7
:pswitch_10
const/4 v2, 0x0
goto :goto_7
:pswitch_data_12
.packed-switch 0x0
:pswitch_7
:pswitch_10
.end packed-switch
.end method