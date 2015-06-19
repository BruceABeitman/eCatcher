.class public abstract Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;
.super Ljava/lang/Object;
.source "SourceFile"
.method protected constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected static createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;
.registers 3
invoke-static {p0, p1}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->createObject(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;
return-object v0
.end method
.method private static createObject(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
.registers 7
const/4 v0, 0x0
:try_start_1
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v1
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
const-class v4, Landroid/content/Context;
aput-object v4, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
:try_end_1e
.catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1e} :catch_20
.catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1e} :catch_29
.catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1e} :catch_32
.catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1e} :catch_3b
.catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1e} :catch_44
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1e} :catch_4d
move-result-object v0
:goto_1f
return-object v0
:catch_20
move-exception v1
invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_1f
:catch_29
move-exception v1
invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_1f
:catch_32
move-exception v1
invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_1f
:catch_3b
move-exception v1
invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_1f
:catch_44
move-exception v1
invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_1f
:catch_4d
move-exception v1
invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_1f
.end method
.method public abstract getAdapterAnalyticsVersion()Ljava/lang/String;
.end method
.method protected abstract getEnhancedTargetParams(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
.end method
.method protected abstract onAdClick(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
.end method
.method protected abstract onFailedToReceiveAd(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
.end method
.method protected abstract onReceiveAd(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
.end method
.method protected abstract pause()V
.end method
.method protected abstract resume()V
.end method
.method protected abstract start()V
.end method
.method protected abstract stop()V
.end method