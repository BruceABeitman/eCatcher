.class public Lcom/twidroid/net/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final synthetic a:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/twidroid/net/a/a;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/twidroid/net/a/a;->a:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static varargs a([Ljava/lang/Object;)Ljava/util/Map;
.registers 5
sget-boolean v0, Lcom/twidroid/net/a/a;->a:Z
if-nez v0, :cond_f
array-length v0, p0
rem-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_f
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_f
new-instance v1, Ljava/util/HashMap;
array-length v0, p0
div-int/lit8 v0, v0, 0x2
invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V
const/4 v0, 0x0
:goto_18
array-length v2, p0
if-ge v0, v2, :cond_39
add-int/lit8 v2, v0, 0x1
aget-object v2, p0, v2
if-eqz v2, :cond_36
aget-object v2, p0, v0
if-eqz v2, :cond_36
aget-object v2, p0, v0
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
add-int/lit8 v3, v0, 0x1
aget-object v3, p0, v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_36
add-int/lit8 v0, v0, 0x2
goto :goto_18
:cond_39
return-object v1
.end method
.method public static a(Ljava/util/Map;)Lorg/json/JSONObject;
.registers 5
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:try_start_19
invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_20
.catch Lorg/json/JSONException; {:try_start_19 .. :try_end_20} :catch_21
goto :goto_d
:catch_21
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_d
:cond_26
return-object v1
.end method
.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setReportLocation(Z)V
new-instance v0, Landroid/location/Criteria;
invoke-direct {v0}, Landroid/location/Criteria;-><init>()V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V
invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setLocationCriteria(Landroid/location/Criteria;)V
invoke-static {p0, p1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public static a(Landroid/content/Context;)V
.registers 1
invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V
return-void
.end method
.method public static a(Ljava/lang/String;)V
.registers 1
invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "value"
aput-object v3, v1, v2
const/4 v2, 0x1
aput-object p2, v1, v2
invoke-static {v1}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x4
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "value1"
aput-object v3, v1, v2
const/4 v2, 0x1
aput-object p2, v1, v2
const/4 v2, 0x2
const-string v3, "value2"
aput-object v3, v1, v2
const/4 v2, 0x3
aput-object p3, v1, v2
invoke-static {v1}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/util/Map;)V
.registers 2
invoke-static {p0, p1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
return-void
.end method
.method public static varargs b([Ljava/lang/Object;)Lorg/json/JSONObject;
.registers 5
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
sget-boolean v0, Lcom/twidroid/net/a/a;->a:Z
if-nez v0, :cond_14
array-length v0, p0
rem-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_14
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_14
const/4 v0, 0x0
:goto_15
array-length v1, p0
if-ge v0, v1, :cond_3b
add-int/lit8 v1, v0, 0x1
aget-object v1, p0, v1
if-eqz v1, :cond_33
aget-object v1, p0, v0
if-eqz v1, :cond_33
:try_start_22
aget-object v1, p0, v0
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
add-int/lit8 v3, v0, 0x1
aget-object v3, p0, v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:goto_33
:cond_33
:try_end_33
.catch Lorg/json/JSONException; {:try_start_22 .. :try_end_33} :catch_36
add-int/lit8 v0, v0, 0x2
goto :goto_15
:catch_36
move-exception v1
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_33
:cond_3b
return-object v2
.end method