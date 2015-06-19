.class public Lcom/pinguo/lib/location/service/BaiduLocationService$PGLocationListener;
.super Ljava/lang/Object;
.source "BaiduLocationService.java"
.implements Lcom/baidu/location/BDLocationListener;
.field final synthetic this$0:Lcom/pinguo/lib/location/service/BaiduLocationService;
.method public constructor <init>(Lcom/pinguo/lib/location/service/BaiduLocationService;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/lib/location/service/BaiduLocationService$PGLocationListener;->this$0:Lcom/pinguo/lib/location/service/BaiduLocationService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
.registers 10
if-nez p1, :cond_b
sget-object v4, Lcom/pinguo/lib/location/service/BaiduLocationService;->TAG:Ljava/lang/String;
const-string/jumbo v5, "Listener get location: null, ignore"
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_a
return-void
:cond_b
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I
move-result v4
const/16 v5, 0x3e
if-eq v4, v5, :cond_2b
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I
move-result v4
const/16 v5, 0x3f
if-eq v4, v5, :cond_2b
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I
move-result v4
const/16 v5, 0x44
if-eq v4, v5, :cond_2b
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I
move-result v4
const/16 v5, 0xa1
if-le v4, v5, :cond_4f
:cond_2b
sget-object v4, Lcom/pinguo/lib/location/service/BaiduLocationService;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Listener get location fail: getLocType="
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I
move-result v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x1
iget-object v4, p0, Lcom/pinguo/lib/location/service/BaiduLocationService$PGLocationListener;->this$0:Lcom/pinguo/lib/location/service/BaiduLocationService;
const-string/jumbo v5, ""
const/4 v6, 0x0
invoke-virtual {v4, v1, v5, v6}, Lcom/pinguo/lib/location/service/BaiduLocationService;->doCallback(ILjava/lang/String;Lcom/pinguo/lib/location/data/PGLocation;)V
goto :goto_a
:cond_4f
iget-object v4, p0, Lcom/pinguo/lib/location/service/BaiduLocationService$PGLocationListener;->this$0:Lcom/pinguo/lib/location/service/BaiduLocationService;
#getter for: Lcom/pinguo/lib/location/service/BaiduLocationService;->mContext:Landroid/content/Context;
invoke-static {v4}, Lcom/pinguo/lib/location/service/BaiduLocationService;->access$0(Lcom/pinguo/lib/location/service/BaiduLocationService;)Landroid/content/Context;
move-result-object v4
const-string/jumbo v5, "pref_last_known_location"
const/4 v6, 0x0
invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v3
invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v4
const-string/jumbo v5, "lat"
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v6
invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v4
const-string/jumbo v5, "lon"
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v6
invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v4
invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
sget-object v4, Lcom/pinguo/lib/location/service/BaiduLocationService;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Listener get location: latitude="
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D
move-result-wide v6
invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ", longitude="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D
move-result-wide v6
invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ", address="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
new-instance v2, Lcom/pinguo/lib/location/data/PGLocation;
const-string/jumbo v4, "reverseGeocoded"
invoke-direct {v2, v4}, Lcom/pinguo/lib/location/data/PGLocation;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D
move-result-wide v4
invoke-static {v2, v4, v5}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->setLatitude(Lcom/pinguo/lib/location/data/PGLocation;D)V
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D
move-result-wide v4
invoke-static {v2, v4, v5}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->setLongitude(Lcom/pinguo/lib/location/data/PGLocation;D)V
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/pinguo/lib/location/data/PGLocation;->setAddress(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-static {v2, v4, v5}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->setTime(Lcom/pinguo/lib/location/data/PGLocation;J)V
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAltitude()D
move-result-wide v4
invoke-static {v2, v4, v5}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->setAltitude(Lcom/pinguo/lib/location/data/PGLocation;D)V
iget-object v4, p0, Lcom/pinguo/lib/location/service/BaiduLocationService$PGLocationListener;->this$0:Lcom/pinguo/lib/location/service/BaiduLocationService;
const-string/jumbo v5, ""
invoke-virtual {v4, v1, v5, v2}, Lcom/pinguo/lib/location/service/BaiduLocationService;->doCallback(ILjava/lang/String;Lcom/pinguo/lib/location/data/PGLocation;)V
goto/16 :goto_a
.end method
.method public onReceivePoi(Lcom/baidu/location/BDLocation;)V
.registers 2
return-void
.end method