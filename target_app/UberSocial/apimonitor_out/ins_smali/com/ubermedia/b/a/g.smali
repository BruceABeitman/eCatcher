.class public Lcom/ubermedia/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Ljava/lang/String; = "GeoCoder"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/location/Location;)Landroid/location/Address;
.registers 11
const/4 v3, 0x0
const/4 v1, 0x0
new-instance v0, Landroid/location/Address;
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v2
invoke-direct {v0, v2}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V
:try_start_b
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "http://maps.googleapis.com/maps/api/geocode/json?latlng="
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {p0}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, ","
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {p0}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, "&sensor=true"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v4, 0x0
const/4 v5, 0x0
invoke-static {v2, v4, v5}, Lcom/ubermedia/net/d;->a(Ljava/lang/String;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;
move-result-object v2
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v2, "results"
invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v5
move v4, v3
:goto_50
invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
move-result v2
if-ge v4, v2, :cond_c5
invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v2
const-string v6, "address_components"
invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v6
move v2, v3
:goto_61
invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
move-result v7
if-ge v2, v7, :cond_bc
invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v7
const-string v8, "types"
invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
const-string v9, "postal_code"
invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v8
if-eqz v8, :cond_82
const-string v8, "long_name"
invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v0, v8}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V
:cond_82
const-string v8, "types"
invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
const-string v9, "country"
invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v8
if-eqz v8, :cond_a2
const-string v8, "short_name"
invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v0, v8}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V
const-string v8, "long_name"
invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v0, v8}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V
:cond_a2
const-string v8, "types"
invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
const-string v9, "locality"
invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v8
if-eqz v8, :cond_b9
const-string v8, "long_name"
invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v0, v7}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V
:try_end_b9
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_b9} :catch_c0
:cond_b9
add-int/lit8 v2, v2, 0x1
goto :goto_61
:cond_bc
add-int/lit8 v2, v4, 0x1
move v4, v2
goto :goto_50
:catch_c0
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
move-object v0, v1
:cond_c5
return-object v0
.end method