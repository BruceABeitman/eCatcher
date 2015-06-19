.class public Lcom/pinguo/share/ShareConstants;
.super Ljava/lang/Object;
.source "ShareConstants.java"
.field public static final APP_KEY:Ljava/lang/String; = "5dab06e7a53740ea9b78"
.field public static final CACHE_ROOT:Ljava/lang/String; = null
.field public static final DISPATCHER_TEST_URL:Ljava/lang/String; = "http://sharetest1.camera360.com/v4/dispatcher.json"
.field public static final DISPATCHER_TEST_URL2:Ljava/lang/String; = "http://share.camera360.com/dispatcher.json"
.field public static final DISPATCHER_URL:Ljava/lang/String; = "http://share.camera360.com/v4/dispatcher.json"
.field public static final DISPATCHER_URL2:Ljava/lang/String; = "http://share.camera360.com/dispatcher.json"
.field public static HOST_CLOUD:Ljava/lang/String; = null
.field public static final NORMAL_SHARE_FILE_PATH:Ljava/lang/String; = null
.field public static final PHOTO_WALL_LINKS:Ljava/lang/String; = "/mobile/share/getPhotoWallLinks"
.field public static QQ_APPKEY:Ljava/lang/String; = null
.field public static QQ_APPSECRET:Ljava/lang/String; = null
.field public static final SECRET:Ljava/lang/String; = "*jNb29>,1*)4`:\\Bo)023&3MnvQ14Lk@"
.field public static final SHARE_VERSION:Ljava/lang/String; = "v2.3"
.field public static final TEMPLATE_DATA:Ljava/lang/String; = null
.field public static final VERSION_FRONT:Ljava/lang/String; = "camera360_android_"
.field public static WX_APP_ID:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
sget-object v0, LvStudio/Android/Camera360/wxapi/WXConstants;->APP_ID:Ljava/lang/String;
sput-object v0, Lcom/pinguo/share/ShareConstants;->WX_APP_ID:Ljava/lang/String;
const-string/jumbo v0, "100303003"
sput-object v0, Lcom/pinguo/share/ShareConstants;->QQ_APPKEY:Ljava/lang/String;
const-string/jumbo v0, "7a32c51df7e23c98cb789cba8f42d21d"
sput-object v0, Lcom/pinguo/share/ShareConstants;->QQ_APPSECRET:Ljava/lang/String;
const-string/jumbo v0, "https://cloud.camera360.com"
sput-object v0, Lcom/pinguo/share/ShareConstants;->HOST_CLOUD:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/share/ShareAccess;->getAppFileRoot()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/TempData"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/share/ShareConstants;->CACHE_ROOT:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
sget-object v1, Lcom/pinguo/share/ShareConstants;->CACHE_ROOT:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/tempImage.jpg"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/share/ShareAccess;->getAppFileRoot()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/Template"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/share/ShareConstants;->TEMPLATE_DATA:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method