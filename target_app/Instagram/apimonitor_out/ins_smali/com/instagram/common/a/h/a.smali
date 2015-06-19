.class public final Lcom/instagram/common/a/h/a;
.super Ljava/lang/Object;
.source "UserAgentUtil.java"
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.registers 15
const/4 v12, 0x3
const/4 v11, 0x2
const/4 v10, 0x1
const/4 v2, 0x0
invoke-static {p0}, Lcom/instagram/common/o/a;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v4
:try_start_8
invoke-static {p0}, Lcom/instagram/common/u/f;->c(Landroid/content/Context;)Landroid/util/DisplayMetrics;
move-result-object v1
iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I
:try_start_e
:try_end_e
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_94
iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I
:try_start_10
:try_end_10
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_10} :catch_b6
iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I
:goto_12
:try_end_12
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_12} :catch_ba
const-string v5, "%sdpi; %sx%s"
new-array v6, v12, [Ljava/lang/Object;
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v6, v2
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v6, v10
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v6, v11
invoke-static {v5, v6}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v5
const-string v0, "(unknown build)"
:try_start_36
sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_55
const-string v1, "%s/%s"
const/4 v6, 0x2
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
aput-object v8, v6, v7
const/4 v7, 0x1
sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;
aput-object v8, v6, v7
invoke-static {v1, v6}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
:cond_55
const-string v6, "(%s/%s; %s; %s; %s; %s; %s; %s)"
const/16 v7, 0x8
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
sget v9, Landroid/os/Build$VERSION;->SDK_INT:I
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v7, v8
const/4 v8, 0x1
sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
aput-object v9, v7, v8
const/4 v8, 0x2
aput-object v3, v7, v8
const/4 v3, 0x3
aput-object v1, v7, v3
const/4 v1, 0x4
sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;
aput-object v3, v7, v1
const/4 v1, 0x5
sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;
aput-object v3, v7, v1
const/4 v1, 0x6
sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
aput-object v3, v7, v1
const/4 v1, 0x7
aput-object v5, v7, v1
invoke-static {v6, v7}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
:try_end_84
.catch Ljava/lang/Exception; {:try_start_36 .. :try_end_84} :catch_9b
move-result-object v0
:goto_85
const-string v1, "%s %s Android %s"
new-array v3, v12, [Ljava/lang/Object;
aput-object p1, v3, v2
aput-object v4, v3, v10
aput-object v0, v3, v11
invoke-static {v1, v3}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
:catch_94
move-exception v0
move v0, v2
move v1, v2
:goto_97
move v3, v1
move v1, v2
goto/16 :goto_12
:catch_9b
move-exception v1
:try_start_9c
const-string v1, "(%s/%s)"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v5, 0x0
sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v3, v5
const/4 v5, 0x1
sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
aput-object v6, v3, v5
invoke-static {v1, v3}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
:try_end_b2
.catch Ljava/lang/Exception; {:try_start_9c .. :try_end_b2} :catch_b4
move-result-object v0
goto :goto_85
:catch_b4
move-exception v1
goto :goto_85
:catch_b6
move-exception v0
move v0, v2
move v1, v3
goto :goto_97
:catch_ba
move-exception v1
move v1, v3
goto :goto_97
.end method