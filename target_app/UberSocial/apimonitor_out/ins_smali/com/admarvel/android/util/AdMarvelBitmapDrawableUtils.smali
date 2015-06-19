.class public Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final ADMARVEL_CUSTOM_BACK_BUTTON:Ljava/lang/String; = "rd2KvT4Zi0NK9A0CejrW35pciQ002l"
.field public static final ADMARVEL_CUSTOM_BACK_DISABLE_BUTTON:Ljava/lang/String; = "MKlWddpjgeIrBuZxnd37tVjz7OM7fu"
.field public static final ADMARVEL_CUSTOM_CLOSE_BUTTON:Ljava/lang/String; = "OCkD4Sjg8bN0h8bDad6gWa5t51Zy5I"
.field public static final ADMARVEL_CUSTOM_DONE_BUTTON:Ljava/lang/String; = "USuSmQSCwrDx1CXCp4oqplFBGTQAZM"
.field public static final ADMARVEL_CUSTOM_MUTE_BUTTON:Ljava/lang/String; = "u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S"
.field public static final ADMARVEL_CUSTOM_OPEN_URL_BUTTON:Ljava/lang/String; = "nRdOcYYrMLotmPFqlTcjFIf7isxM5t"
.field public static final ADMARVEL_CUSTOM_OPEN_URL_DISABLED_BUTTON:Ljava/lang/String; = "H2GFZHEOwlzVJk4cBatArzxlb2XOJH"
.field public static final ADMARVEL_CUSTOM_PAUSE_BUTTON:Ljava/lang/String; = "d2UpTWfkssmtbKnAqIR6WGdcMl4Gg8"
.field public static final ADMARVEL_CUSTOM_PLAY_BUTTON:Ljava/lang/String; = "aSrZSorTa7PztrNZ4FuMvViHEaGfDV"
.field public static final ADMARVEL_CUSTOM_REPLAY_BUTTON:Ljava/lang/String; = "ej5yqIooDTRYYsXEJuN4eJOh7buHJI"
.field public static final ADMARVEL_CUSTOM_RESUME_BUTTON:Ljava/lang/String; = "UPuOOqinUE2sqnnpe8MYG7PzHVVl5p"
.field public static final ADMARVEL_CUSTOM_RESUME_DISABLE_BUTTON:Ljava/lang/String; = "NCLuZlSXjDualh2uti1kSm8vWlELL9"
.field public static final ADMARVEL_CUSTOM_STOP_BUTTON:Ljava/lang/String; = "yz6T5xsau00Hqg556ez5NwTY2IsOW1"
.field public static final ADMARVEL_CUSTOM_TIME_BUTTON:Ljava/lang/String; = "I9Kg1IJB4gtPeHhlB0pvKW5yqcRf2o"
.field public static final ADMARVEL_CUSTOM_UNMUTE_BUTTON:Ljava/lang/String; = "kOy0RFIzirRqTweJUasQ2qaqYyPhm4"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static convertBitmapTobyteArray(ILandroid/content/Context;)Ljava/lang/String;
.registers 6
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v3, 0x64
invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const/4 v0, 0x0
:goto_1e
array-length v3, v1
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_30
aget-byte v3, v1, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_1e
:cond_30
array-length v0, v1
add-int/lit8 v0, v0, -0x1
aget-byte v0, v1, v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "\\-"
const-string v3, "-"
invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static convertBitmapTobyteArray(Landroid/graphics/Bitmap;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v2, 0x64
invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const/4 v0, 0x0
:goto_16
array-length v3, v1
add-int/lit8 v3, v3, -0x1
if-ge v0, v3, :cond_28
aget-byte v3, v1, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_16
:cond_28
array-length v0, v1
add-int/lit8 v0, v0, -0x1
aget-byte v0, v1, v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "\\-"
const-string v3, "-"
invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static getBackwardDisableDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_32
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v1, "MKlWddpjgeIrBuZxnd37tVjz7OM7fu"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_32
:try_start_12
sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v2, "MKlWddpjgeIrBuZxnd37tVjz7OM7fu"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25
move-result-object v0
:goto_24
return-object v0
:catch_25
move-exception v0
const-string v0, "Error in setting custom bitmap for back_disable"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
:cond_32
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
.end method
.method private static getBackwardDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_32
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v1, "rd2KvT4Zi0NK9A0CejrW35pciQ002l"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_32
:try_start_12
sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->b:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v2, "rd2KvT4Zi0NK9A0CejrW35pciQ002l"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25
move-result-object v0
:goto_24
return-object v0
:catch_25
move-exception v0
const-string v0, "Error in setting custom bitmap for back "
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->b:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
:cond_32
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->b:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
.end method
.method public static getBitMapDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
.registers 3
const-string v0, "backward_disable"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d
invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getBackwardDisableDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
:goto_c
return-object v0
:cond_d
const-string v0, "backward"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getBackwardDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_c
:cond_1a
const-string v0, "close"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_27
invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getCloseDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_c
:cond_27
const-string v0, "done"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_34
invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getDoneDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_c
:cond_34
const-string v0, "mute"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_41
invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getMuteDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_c
:cond_41
const-string v0, "open_url_disabled"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4e
invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getOpenUrlDisabledDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_c
:cond_4e
const-string v0, "open_url"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5b
invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getOpenUrlDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_c
:cond_5b
const-string v0, "pause"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_68
invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getPauseDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_c
:cond_68
const-string v0, "play_movie"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_75
invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getPlayDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_c
:cond_75
const-string v0, "replay"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_82
invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getReplayDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_c
:cond_82
const-string v0, "resume_disable"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_90
invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getResumeDisableDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto/16 :goto_c
:cond_90
const-string v0, "resume"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9e
invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getResumeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto/16 :goto_c
:cond_9e
const-string v0, "stop"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_ac
invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getStopDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto/16 :goto_c
:cond_ac
const-string v0, "time"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_ba
invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getTimeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto/16 :goto_c
:cond_ba
const-string v0, "unmute"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c8
invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getUnmuteDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto/16 :goto_c
:cond_c8
const/4 v0, 0x0
goto/16 :goto_c
.end method
.method private static getCloseDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_32
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v1, "OCkD4Sjg8bN0h8bDad6gWa5t51Zy5I"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_32
:try_start_12
sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->c:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v2, "OCkD4Sjg8bN0h8bDad6gWa5t51Zy5I"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25
move-result-object v0
:goto_24
return-object v0
:catch_25
move-exception v0
const-string v0, "Error in setting custom bitmap for close "
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->c:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
:cond_32
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->c:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
.end method
.method private static getDoneDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_32
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v1, "USuSmQSCwrDx1CXCp4oqplFBGTQAZM"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_32
:try_start_12
sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->d:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v2, "USuSmQSCwrDx1CXCp4oqplFBGTQAZM"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25
move-result-object v0
:goto_24
return-object v0
:catch_25
move-exception v0
const-string v0, "Error in setting custom bitmap for done "
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->d:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
:cond_32
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->d:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
.end method
.method private static getMuteDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_32
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v1, "u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_32
:try_start_12
sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->e:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v2, "u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25
move-result-object v0
:goto_24
return-object v0
:catch_25
move-exception v0
const-string v0, "Error in setting custom bitmap for mute "
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->e:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
:cond_32
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->e:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
.end method
.method private static getOpenUrlDisabledDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_32
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v1, "H2GFZHEOwlzVJk4cBatArzxlb2XOJH"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_32
:try_start_12
sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->n:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v2, "H2GFZHEOwlzVJk4cBatArzxlb2XOJH"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25
move-result-object v0
:goto_24
return-object v0
:catch_25
move-exception v0
const-string v0, "Error in setting custom bitmap for open_url_disabled "
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->n:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
:cond_32
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->n:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
.end method
.method private static getOpenUrlDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_32
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v1, "nRdOcYYrMLotmPFqlTcjFIf7isxM5t"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_32
:try_start_12
sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->o:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v2, "nRdOcYYrMLotmPFqlTcjFIf7isxM5t"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25
move-result-object v0
:goto_24
return-object v0
:catch_25
move-exception v0
const-string v0, "Error in setting custom bitmap for open_url  "
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->o:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
:cond_32
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->o:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
.end method
.method private static getPauseDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_32
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v1, "d2UpTWfkssmtbKnAqIR6WGdcMl4Gg8"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_32
:try_start_12
sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->f:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v2, "d2UpTWfkssmtbKnAqIR6WGdcMl4Gg8"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25
move-result-object v0
:goto_24
return-object v0
:catch_25
move-exception v0
const-string v0, "Error in setting custom bitmap for pause  "
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->f:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
:cond_32
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->f:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
.end method
.method private static getPlayDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_32
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v1, "aSrZSorTa7PztrNZ4FuMvViHEaGfDV"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_32
:try_start_12
sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->g:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v2, "aSrZSorTa7PztrNZ4FuMvViHEaGfDV"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25
move-result-object v0
:goto_24
return-object v0
:catch_25
move-exception v0
const-string v0, "Error in setting custom bitmap for play  "
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->g:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
:cond_32
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->g:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
.end method
.method private static getReplayDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_32
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v1, "ej5yqIooDTRYYsXEJuN4eJOh7buHJI"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_32
:try_start_12
sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->h:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v2, "ej5yqIooDTRYYsXEJuN4eJOh7buHJI"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25
move-result-object v0
:goto_24
return-object v0
:catch_25
move-exception v0
const-string v0, "Error in setting custom bitmap for replay  "
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->h:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
:cond_32
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->h:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
.end method
.method private static getResumeDisableDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_32
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v1, "NCLuZlSXjDualh2uti1kSm8vWlELL9"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_32
:try_start_12
sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->i:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v2, "NCLuZlSXjDualh2uti1kSm8vWlELL9"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25
move-result-object v0
:goto_24
return-object v0
:catch_25
move-exception v0
const-string v0, "Error in setting custom bitmap for resume disable  "
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->i:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
:cond_32
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->i:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
.end method
.method private static getResumeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_32
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v1, "UPuOOqinUE2sqnnpe8MYG7PzHVVl5p"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_32
:try_start_12
sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->j:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v2, "UPuOOqinUE2sqnnpe8MYG7PzHVVl5p"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25
move-result-object v0
:goto_24
return-object v0
:catch_25
move-exception v0
const-string v0, "Error in setting custom bitmap for resume  "
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->j:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
:cond_32
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->j:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
.end method
.method private static getStopDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_32
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v1, "yz6T5xsau00Hqg556ez5NwTY2IsOW1"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_32
:try_start_12
sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->k:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v2, "yz6T5xsau00Hqg556ez5NwTY2IsOW1"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25
move-result-object v0
:goto_24
return-object v0
:catch_25
move-exception v0
const-string v0, "Error in setting custom bitmap for resume  "
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->k:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
:cond_32
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->k:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
.end method
.method private static getTimeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_32
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v1, "I9Kg1IJB4gtPeHhlB0pvKW5yqcRf2o"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_32
:try_start_12
sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->l:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v2, "I9Kg1IJB4gtPeHhlB0pvKW5yqcRf2o"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25
move-result-object v0
:goto_24
return-object v0
:catch_25
move-exception v0
const-string v0, "Error in setting custom bitmap for resume  "
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->l:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
:cond_32
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->l:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
.end method
.method private static getUnmuteDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_32
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v1, "kOy0RFIzirRqTweJUasQ2qaqYyPhm4"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_32
:try_start_12
sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->m:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;
move-result-object v0
const-string v2, "kOy0RFIzirRqTweJUasQ2qaqYyPhm4"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25
move-result-object v0
:goto_24
return-object v0
:catch_25
move-exception v0
const-string v0, "Error in setting custom bitmap for unmute  "
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->m:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
:cond_32
sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->m:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;
invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_24
.end method
.method public static writeByteArrayFromBitMap(ILandroid/content/Context;Ljava/lang/String;)V
.registers 11
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v4, 0x64
invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
:try_start_1e
new-instance v1, Ljava/io/File;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v0
const-string v5, "AdmBitmapTemp"
invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_32
invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
:cond_32
:try_start_32
:try_end_32
.catch Ljava/lang/Exception; {:try_start_1e .. :try_end_32} :catch_6c
new-instance v0, Ljava/io/File;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ".txt"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_start_4a
:try_end_4a
.catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4a} :catch_50
invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
:goto_4d
:try_end_4d
.catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_d4
if-nez v0, :cond_86
:goto_4f
:cond_4f
return-void
:catch_50
move-exception v0
move-object v1, v0
move-object v0, v2
:goto_53
:try_start_53
sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "ex: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:try_end_6b
.catch Ljava/lang/Exception; {:try_start_53 .. :try_end_6b} :catch_6c
goto :goto_4d
:catch_6c
move-exception v0
sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "e: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto :goto_4f
:cond_86
:try_start_86
new-instance v1, Ljava/io/PrintWriter;
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
const-string v5, "UTF-8"
invoke-direct {v1, v0, v5}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:try_end_91
.catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_91} :catch_b9
.catch Ljava/io/UnsupportedEncodingException; {:try_start_86 .. :try_end_91} :catch_be
move-object v2, v1
:goto_92
if-eqz v2, :cond_4f
const-string v0, "{"
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "{"
invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_9f
array-length v1, v3
if-ge v0, v1, :cond_c3
aget-byte v1, v3, v0
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, ","
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aget-byte v1, v3, v0
invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(I)V
const-string v1, ","
invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_9f
:catch_b9
move-exception v0
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
goto :goto_92
:catch_be
move-exception v0
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
goto :goto_92
:cond_c3
const-string v0, "}"
invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
const-string v0, "}"
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz v2, :cond_4f
invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
goto/16 :goto_4f
:catch_d4
move-exception v1
goto/16 :goto_53
.end method