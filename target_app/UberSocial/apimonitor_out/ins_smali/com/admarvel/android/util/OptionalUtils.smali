.class public Lcom/admarvel/android/util/OptionalUtils;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getId(Landroid/content/Context;)Ljava/lang/String;
.registers 8
const/4 v2, 0x0
const/4 v4, 0x1
const/4 v3, 0x0
new-array v5, v4, [Ljava/lang/Class;
const-class v0, Landroid/content/Context;
aput-object v0, v5, v3
const-string v1, ""
:try_start_b
const-string v0, "com.admarvel.a.a"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_10
.catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_10} :catch_55
.catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_10} :catch_50
.catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_10} :catch_2b
move-result-object v0
:try_start_11
invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
:try_end_14
.catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_14} :catch_58
.catch Ljava/lang/InstantiationException; {:try_start_11 .. :try_end_14} :catch_53
.catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_14} :catch_4b
move-result-object v2
move v3, v4
:goto_16
if-eqz v3, :cond_49
:try_start_18
const-string v3, "getId"
invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p0, v3, v4
invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:try_end_2a
.catch Ljava/lang/NoSuchMethodException; {:try_start_18 .. :try_end_2a} :catch_33
.catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_2a} :catch_39
.catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_2a} :catch_3f
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_18 .. :try_end_2a} :catch_45
:goto_2a
return-object v0
:catch_2b
move-exception v0
move-object v3, v2
:goto_2d
invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
move-object v0, v3
move v3, v4
goto :goto_16
:catch_33
move-exception v0
invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
move-object v0, v1
goto :goto_2a
:catch_39
move-exception v0
invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
move-object v0, v1
goto :goto_2a
:catch_3f
move-exception v0
invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
move-object v0, v1
goto :goto_2a
:catch_45
move-exception v0
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
:cond_49
move-object v0, v1
goto :goto_2a
:catch_4b
move-exception v3
move-object v6, v3
move-object v3, v0
move-object v0, v6
goto :goto_2d
:catch_50
move-exception v0
move-object v0, v2
goto :goto_16
:catch_53
move-exception v4
goto :goto_16
:catch_55
move-exception v0
move-object v0, v2
goto :goto_16
:catch_58
move-exception v4
goto :goto_16
.end method