.class public Lcom/ubermedia/b/b;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;)Ljava/lang/String;
.registers 4
const/4 v0, 0x0
:try_start_1
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
const-string v2, "android_id"
invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
:try_end_a
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_27
move-result-object v0
move-object v1, v0
:goto_c
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_1e
const-string v0, "phone"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
:try_start_1a
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
:try_end_1d
.catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_2d
move-result-object v1
:goto_1e
:cond_1e
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_26
const-string v1, "null"
:cond_26
return-object v1
:catch_27
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
move-object v1, v0
goto :goto_c
:catch_2d
move-exception v0
goto :goto_1e
.end method
.method public static a()Z
.registers 2
sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, "amazon"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
return v0
.end method
.method public static a(Landroid/app/Activity;)Z
.registers 3
invoke-static {p0}, Lcom/ubermedia/b/b;->e(Landroid/app/Activity;)I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public static b(Landroid/content/Context;)Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I
and-int/lit8 v0, v0, 0xf
packed-switch v0, :pswitch_data_1e
const-string v0, "undefined"
:goto_11
return-object v0
:pswitch_12
const-string v0, "small"
goto :goto_11
:pswitch_15
const-string v0, "normal"
goto :goto_11
:pswitch_18
const-string v0, "large"
goto :goto_11
:pswitch_1b
const-string v0, "xlarge"
goto :goto_11
:pswitch_data_1e
.packed-switch 0x1
:pswitch_12
:pswitch_15
:pswitch_18
:pswitch_1b
.end packed-switch
.end method
.method public static b(Landroid/app/Activity;)Z
.registers 3
const/4 v0, 0x1
invoke-static {p0}, Lcom/ubermedia/b/b;->e(Landroid/app/Activity;)I
move-result v1
if-ne v1, v0, :cond_8
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public static c(Landroid/app/Activity;)I
.registers 2
invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v0
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Display;->getWidth()I
move-result v0
return v0
.end method
.method public static c(Landroid/content/Context;)Z
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I
and-int/lit8 v0, v0, 0xf
const/4 v3, 0x4
if-ne v0, v3, :cond_28
move v0, v1
:goto_12
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v3
iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I
and-int/lit8 v3, v3, 0xf
const/4 v4, 0x3
if-ne v3, v4, :cond_2a
move v3, v1
:goto_22
if-nez v0, :cond_26
if-eqz v3, :cond_27
:cond_26
move v2, v1
:cond_27
return v2
:cond_28
move v0, v2
goto :goto_12
:cond_2a
move v3, v2
goto :goto_22
.end method
.method public static d(Landroid/app/Activity;)I
.registers 2
invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v0
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Display;->getHeight()I
move-result v0
return v0
.end method
.method public static d(Landroid/content/Context;)Z
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I
and-int/lit8 v0, v0, 0xf
const/4 v1, 0x3
if-ne v0, v1, :cond_11
const/4 v0, 0x1
:goto_10
return v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method public static e(Landroid/app/Activity;)I
.registers 4
invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v0
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Display;->getWidth()I
move-result v1
invoke-virtual {v0}, Landroid/view/Display;->getHeight()I
move-result v2
if-ne v1, v2, :cond_14
const/4 v0, 0x3
:goto_13
return v0
:cond_14
invoke-virtual {v0}, Landroid/view/Display;->getWidth()I
move-result v1
invoke-virtual {v0}, Landroid/view/Display;->getHeight()I
move-result v0
if-ge v1, v0, :cond_20
const/4 v0, 0x1
goto :goto_13
:cond_20
const/4 v0, 0x2
goto :goto_13
.end method
.method public static e(Landroid/content/Context;)Z
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I
and-int/lit8 v0, v0, 0xf
const/4 v1, 0x4
if-ne v0, v1, :cond_11
const/4 v0, 0x1
:goto_10
return v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method