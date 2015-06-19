.class final Lcom/bbm/b/u;
.super Lcom/bbm/util/b;
.source "AdsModel.java"
.field final synthetic a:Lcom/bbm/b/s;
.method private constructor <init>(Lcom/bbm/b/s;)V
.registers 2
iput-object p1, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
invoke-direct {p0}, Lcom/bbm/util/b;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/bbm/b/s;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/b/u;-><init>(Lcom/bbm/b/s;)V
return-void
.end method
.method private varargs b()Ljava/lang/Void;
.registers 12
const/4 v4, 0x0
const/4 v10, 0x3
const/4 v2, 0x0
const/4 v1, 0x1
new-instance v5, Lcom/bbm/b/ab;
invoke-direct {v5}, Lcom/bbm/b/ab;-><init>()V
iget-object v0, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v0, v0, Lcom/bbm/b/s;->c:Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I
move-result v0
if-ne v0, v1, :cond_37f
:try_start_13
iget-object v0, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v0, v0, Lcom/bbm/b/s;->c:Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_37c
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v0
if-lt v0, v10, :cond_37c
const/4 v0, 0x0
const/4 v6, 0x3
invoke-virtual {v3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
move-result-object v0
iget-object v6, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v6, v6, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v7, "currentMcc"
invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v0, v6}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_379
iget-object v6, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v6, v6, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v7, "currentMcc"
invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
move-result-wide v6
const-string v8, "currentMcc"
invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v6
invoke-virtual {v5, v8, v6}, Lcom/bbm/b/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v6, "DeviceProperties: currentMcc=%.0f"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
aput-object v0, v7, v8
invoke-static {v6, v7}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_5e
.catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_5e} :catch_317
.catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_5e} :catch_323
move v0, v1
:goto_5f
:try_start_5f
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v6
if-le v6, v10, :cond_a0
const/4 v6, 0x3
invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
move-result-object v3
iget-object v6, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v6, v6, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v7, "currentMnc"
invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_a0
iget-object v6, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v6, v6, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v7, "currentMnc"
invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D
move-result-wide v6
const-string v8, "currentMnc"
invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v6
invoke-virtual {v5, v8, v6}, Lcom/bbm/b/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v6, "DeviceProperties: currentMnc=%.0f"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
aput-object v3, v7, v8
invoke-static {v6, v7}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_9f
.catch Ljava/lang/NullPointerException; {:try_start_5f .. :try_end_9f} :catch_371
.catch Ljava/lang/NumberFormatException; {:try_start_5f .. :try_end_9f} :catch_36f
move v0, v1
:goto_a0
:cond_a0
iget-object v3, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v3, v3, Lcom/bbm/b/s;->c:Landroid/telephony/TelephonyManager;
invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_d6
iget-object v6, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v6, v6, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v7, "currentCarrier"
invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_d6
iget-object v0, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v0, v0, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v6, "currentCarrier"
invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "currentCarrier"
invoke-virtual {v5, v0, v3}, Lcom/bbm/b/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "DeviceProperties: currentCarrier=%s"
new-array v6, v1, [Ljava/lang/Object;
aput-object v3, v6, v2
invoke-static {v0, v6}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v1
:cond_d6
iget-object v3, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v3, v3, Lcom/bbm/b/s;->c:Landroid/telephony/TelephonyManager;
invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_376
iget-object v6, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v6, v6, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v7, "currentCountry"
invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_376
iget-object v0, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v0, v0, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v6, "currentCountry"
invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "currentCountry"
invoke-virtual {v5, v0, v3}, Lcom/bbm/b/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "DeviceProperties: currentCountry=%s"
new-array v6, v1, [Ljava/lang/Object;
aput-object v3, v6, v2
invoke-static {v0, v6}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
move v3, v1
:goto_10c
iget-object v0, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v0, v0, Lcom/bbm/b/s;->c:Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;
move-result-object v0
check-cast v0, Landroid/telephony/gsm/GsmCellLocation;
if-eqz v0, :cond_15b
invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I
move-result v0
const/4 v6, -0x1
if-eq v0, v6, :cond_15b
int-to-double v6, v0
invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
iget-object v6, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v6, v6, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v7, "gsmCellId"
invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v0, v6}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_15b
iget-object v3, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v3, v3, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v6, "gsmCellId"
invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
move-result-wide v6
const-string v3, "gsmCellId"
invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v6
invoke-virtual {v5, v3, v6}, Lcom/bbm/b/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v3, "DeviceProperties: gsmCellId=%.0f"
new-array v6, v1, [Ljava/lang/Object;
aput-object v0, v6, v2
invoke-static {v3, v6}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "DeviceProperties: gsmCellId has changed"
new-array v3, v2, [Ljava/lang/Object;
invoke-static {v0, v3}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
move v3, v1
:goto_15b
:cond_15b
iget-object v0, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v0, v0, Lcom/bbm/b/s;->c:Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I
move-result v0
const/4 v6, 0x5
if-ne v0, v6, :cond_25f
:try_start_166
iget-object v0, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v0, v0, Lcom/bbm/b/s;->c:Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1f3
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v6
if-lt v6, v10, :cond_1f3
const/4 v6, 0x0
const/4 v7, 0x3
invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
move-result-object v6
iget-object v7, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v7, v7, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v8, "homeMcc"
invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z
move-result v7
if-nez v7, :cond_1b2
iget-object v7, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v7, v7, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v8, "homeMcc"
invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D
move-result-wide v7
const-string v9, "homeMcc"
invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v7
invoke-virtual {v5, v9, v7}, Lcom/bbm/b/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v7, "DeviceProperties: homeMcc=%.0f"
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
aput-object v6, v8, v9
invoke-static {v7, v8}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
move v3, v1
:cond_1b2
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v6
if-le v6, v10, :cond_1f3
const/4 v6, 0x3
invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
move-result-object v0
iget-object v6, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v6, v6, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v7, "homeMnc"
invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v0, v6}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_1f3
iget-object v6, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v6, v6, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v7, "homeMnc"
invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
move-result-wide v6
const-string v8, "homeMnc"
invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v6
invoke-virtual {v5, v8, v6}, Lcom/bbm/b/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v6, "DeviceProperties: homeMnc=%.0f"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
aput-object v0, v7, v8
invoke-static {v6, v7}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_1f2
.catch Ljava/lang/NullPointerException; {:try_start_166 .. :try_end_1f2} :catch_32f
.catch Ljava/lang/NumberFormatException; {:try_start_166 .. :try_end_1f2} :catch_339
move v3, v1
:goto_1f3
:cond_1f3
iget-object v0, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v0, v0, Lcom/bbm/b/s;->c:Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_229
iget-object v6, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v6, v6, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v7, "homeCarrier"
invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_229
iget-object v3, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v3, v3, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v6, "homeCarrier"
invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "homeCarrier"
invoke-virtual {v5, v3, v0}, Lcom/bbm/b/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v3, "DeviceProperties: homeCarrier=%s"
new-array v6, v1, [Ljava/lang/Object;
aput-object v0, v6, v2
invoke-static {v3, v6}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
move v3, v1
:cond_229
iget-object v0, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v0, v0, Lcom/bbm/b/s;->c:Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_25f
iget-object v6, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v6, v6, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v7, "homeCountry"
invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_25f
iget-object v3, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v3, v3, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v6, "homeCountry"
invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "homeCountry"
invoke-virtual {v5, v3, v0}, Lcom/bbm/b/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v3, "DeviceProperties: homeCountry=%s"
new-array v6, v1, [Ljava/lang/Object;
aput-object v0, v6, v2
invoke-static {v3, v6}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
move v3, v1
:try_start_25f
:cond_25f
iget-object v0, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v0, v0, Lcom/bbm/b/s;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
:try_end_266
.catch Ljava/io/IOException; {:try_start_25f .. :try_end_266} :catch_343
.catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_25f .. :try_end_266} :catch_34e
.catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_25f .. :try_end_266} :catch_359
.catch Ljava/lang/Exception; {:try_start_25f .. :try_end_266} :catch_364
move-result-object v0
:goto_267
if-eqz v0, :cond_373
invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;
move-result-object v0
:goto_26d
if-eqz v0, :cond_29d
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v6
if-nez v6, :cond_29d
iget-object v6, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v6, v6, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v7, "androidAdvertisingId"
invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_29d
iget-object v3, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v3, v3, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v6, "androidAdvertisingId"
invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "androidAdvertisingId"
invoke-virtual {v5, v3, v0}, Lcom/bbm/b/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v3, "DeviceProperties: androidAdvertisingId=%s"
new-array v6, v1, [Ljava/lang/Object;
aput-object v0, v6, v2
invoke-static {v3, v6}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
move v3, v1
:cond_29d
iget-object v0, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v0, v0, Lcom/bbm/b/s;->b:Landroid/content/ContentResolver;
const-string v6, "android_id"
invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2d1
iget-object v6, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v6, v6, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v7, "androidId"
invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_2d1
iget-object v3, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v3, v3, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v6, "androidId"
invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "androidId"
invoke-virtual {v5, v3, v0}, Lcom/bbm/b/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v3, "DeviceProperties: androidId=%s"
new-array v6, v1, [Ljava/lang/Object;
aput-object v0, v6, v2
invoke-static {v3, v6}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
move v3, v1
:cond_2d1
iget-object v0, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v0, v0, Lcom/bbm/b/s;->e:Landroid/webkit/WebSettings;
if-eqz v0, :cond_309
iget-object v0, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v0, v0, Lcom/bbm/b/s;->e:Landroid/webkit/WebSettings;
invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_309
iget-object v6, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v6, v6, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v7, "browserUserAgent"
invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_309
iget-object v3, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v3, v3, Lcom/bbm/b/s;->d:Ljava/util/Map;
const-string v6, "browserUserAgent"
invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "browserUserAgent"
invoke-virtual {v5, v3, v0}, Lcom/bbm/b/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v3, "DeviceProperties: browserUserAgent=%s"
new-array v6, v1, [Ljava/lang/Object;
aput-object v0, v6, v2
invoke-static {v3, v6}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
move v3, v1
:cond_309
if-eqz v3, :cond_312
iget-object v0, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iget-object v0, v0, Lcom/bbm/b/s;->g:Lcom/bbm/b/q;
invoke-virtual {v0, v5}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
:cond_312
iget-object v0, p0, Lcom/bbm/b/u;->a:Lcom/bbm/b/s;
iput-object v4, v0, Lcom/bbm/b/s;->f:Lcom/bbm/b/u;
return-object v4
:catch_317
move-exception v0
move-object v3, v0
move v0, v2
:goto_31a
const-string v6, "NetworkOperator is null"
new-array v7, v2, [Ljava/lang/Object;
invoke-static {v3, v6, v7}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_a0
:catch_323
move-exception v0
move-object v3, v0
move v0, v2
:goto_326
const-string v6, "Cannot parse Gsm"
new-array v7, v2, [Ljava/lang/Object;
invoke-static {v3, v6, v7}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_a0
:catch_32f
move-exception v0
const-string v6, "SimOperator is null"
new-array v7, v2, [Ljava/lang/Object;
invoke-static {v0, v6, v7}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_1f3
:catch_339
move-exception v0
const-string v6, "Cannot parse SIM"
new-array v7, v2, [Ljava/lang/Object;
invoke-static {v0, v6, v7}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_1f3
:catch_343
move-exception v0
const-string v6, "AdvertisingId could not be retrieved"
new-array v7, v2, [Ljava/lang/Object;
invoke-static {v0, v6, v7}, Lcom/bbm/x;->c(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
move-object v0, v4
goto/16 :goto_267
:catch_34e
move-exception v0
const-string v6, "AdvertisingId could not be retrieved"
new-array v7, v2, [Ljava/lang/Object;
invoke-static {v0, v6, v7}, Lcom/bbm/x;->c(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
move-object v0, v4
goto/16 :goto_267
:catch_359
move-exception v0
const-string v6, "AdvertisingId could not be retrieved"
new-array v7, v2, [Ljava/lang/Object;
invoke-static {v0, v6, v7}, Lcom/bbm/x;->c(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
move-object v0, v4
goto/16 :goto_267
:catch_364
move-exception v0
const-string v6, "AdvertisingId could not be retrieved"
new-array v7, v2, [Ljava/lang/Object;
invoke-static {v0, v6, v7}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
move-object v0, v4
goto/16 :goto_267
:catch_36f
move-exception v3
goto :goto_326
:catch_371
move-exception v3
goto :goto_31a
:cond_373
move-object v0, v4
goto/16 :goto_26d
:cond_376
move v3, v0
goto/16 :goto_10c
:cond_379
move v0, v2
goto/16 :goto_5f
:cond_37c
move v0, v2
goto/16 :goto_a0
:cond_37f
move v3, v2
goto/16 :goto_15b
.end method
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/bbm/b/u;->b()Ljava/lang/Void;
move-result-object v0
return-object v0
.end method