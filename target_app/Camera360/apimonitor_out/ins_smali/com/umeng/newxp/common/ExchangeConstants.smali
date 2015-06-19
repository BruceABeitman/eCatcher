.class public Lcom/umeng/newxp/common/ExchangeConstants;
.super Ljava/lang/Object;
.source "ExchangeConstants.java"
.field public static final ANIM_3D_X:I = 0x7
.field public static final ANIM_3D_Y:I = 0x8
.field public static final ANIM_SCALE:I = 0x6
.field public static final ANIM_SLIDE_DOWN:I = 0x4
.field public static final ANIM_SLIDE_LEFT:I = 0x1
.field public static final ANIM_SLIDE_RIGHT:I = 0x2
.field public static final ANIM_SLIDE_UP:I = 0x3
.field public static APPKEY:Ljava/lang/String; = null
.field public static BASE_URL_LIST:[Ljava/lang/String; = null
.field public static CHANNEL:Ljava/lang/String; = null
.field public static CONTAINER_AUTOEXPANDED:Z = false
.field public static CONTAINER_HEIGHT:I = 0x0
.field public static CONTAINER_LIST_COUNT:I = 0x0
.field public static CURTAIN_LIST_COUNT_HORIZEN:I = 0x0
.field public static CURTAIN_PEARL_COUNT_HORIZEN:I = 0x0
.field public static CURTAIN_PEARL_COUNT_VERTICAL:I = 0x0
.field public static DATA_CACHE_TIME:I = 0x0
.field public static DATA_COMPRESS:Z = false
.field public static DEBUG_MODE:Z = false
.field public static DRAWER_LIST_COUNT_VERTICAL:I = 0x0
.field public static IGNORE_SERVER_INTERVAL:Z = false
.field public static LOG_TAG:Ljava/lang/String; = null
.field public static ONLY_CHINESE:Z = false
.field public static REFRESH_INTERVAL:I = 0x0
.field public static RICH_NOTIFICATION:Z = false
.field public static ROUND_ICON:Z = false
.field public static TIPS_DOWNLOAD:Z = false
.field public static USE_SCROLL_VIEW_LANDSCAPE:Z = false
.field public static USE_SIMPLE_DIALOG:Z = false
.field public static final WAP_URL:Ljava/lang/String; = "http://ex.mobmore.com/api/wap?"
.field public static WEB_CACHE_NAME:Ljava/lang/String; = null
.field private static final a:I = 0x5
.field private static final b:I = 0x9
.field public static banben:Ljava/lang/String; = null
.field public static banner_alpha:I = 0x0
.field public static full_screen:Z = false
.field public static handler_auto_expand:Z = false
.field public static handler_left:Z = false
.field public static has_banner:Z = false
.field public static no:Ljava/lang/String; = null
.field public static protocol_version:Ljava/lang/String; = null
.field public static sdk_version:Ljava/lang/String; = null
.field public static show_price:Z = false
.field public static show_size:Z = false
.field public static text_color:Ljava/lang/String; = null
.field public static final type_big_handler_bottom:I = 0x0
.field public static final type_big_handler_top:I = 0x1
.field public static final type_cloud_full:I = 0xc
.field public static final type_container:I = 0x8
.field public static final type_float_dialog:I = 0xf
.field public static final type_grid_view_bottom:I = 0x29
.field public static final type_grid_view_top:I = 0x2a
.field public static final type_hypertextlink_banner:I = 0xd
.field public static final type_image_entry:I = 0xb
.field public static final type_large_image:I = 0x2b
.field public static final type_list_curtain:I = 0x7
.field public static final type_partners_banner:I = 0xb
.field public static final type_pearl_curtain:I = 0x9
.field public static final type_scroll_view_bottom:I = 0xa
.field public static final type_small_handler_list_bottom:I = 0x4
.field public static final type_small_handler_list_top:I = 0x5
.field public static final type_standalone_handler:I = 0x6
.field public static final type_wap_style:I = 0x1f5
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
const-string/jumbo v0, "5.7.20130528"
sput-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->sdk_version:Ljava/lang/String;
sput-boolean v2, Lcom/umeng/newxp/common/ExchangeConstants;->DEBUG_MODE:Z
const-string/jumbo v0, ""
sput-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->APPKEY:Ljava/lang/String;
const/4 v0, 0x0
sput-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->CHANNEL:Ljava/lang/String;
const-string/jumbo v0, "\u7248\u672c\uff1a"
sput-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->banben:Ljava/lang/String;
const-string/jumbo v0, "#000000"
sput-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->text_color:Ljava/lang/String;
const/16 v0, 0xff
sput v0, Lcom/umeng/newxp/common/ExchangeConstants;->banner_alpha:I
sput-boolean v2, Lcom/umeng/newxp/common/ExchangeConstants;->TIPS_DOWNLOAD:Z
new-array v0, v5, [Ljava/lang/String;
const-string/jumbo v1, "http://ex.puata.info"
aput-object v1, v0, v2
const-string/jumbo v1, "http://ex.umengcloud.com"
aput-object v1, v0, v3
const-string/jumbo v1, "http://ex.mobmore.com"
aput-object v1, v0, v4
sput-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->BASE_URL_LIST:[Ljava/lang/String;
sput-boolean v3, Lcom/umeng/newxp/common/ExchangeConstants;->CONTAINER_AUTOEXPANDED:Z
const/16 v0, 0x37
sput v0, Lcom/umeng/newxp/common/ExchangeConstants;->CONTAINER_HEIGHT:I
const/4 v0, 0x7
sput v0, Lcom/umeng/newxp/common/ExchangeConstants;->CONTAINER_LIST_COUNT:I
sput v6, Lcom/umeng/newxp/common/ExchangeConstants;->CURTAIN_LIST_COUNT_HORIZEN:I
sput v4, Lcom/umeng/newxp/common/ExchangeConstants;->CURTAIN_PEARL_COUNT_HORIZEN:I
sput v5, Lcom/umeng/newxp/common/ExchangeConstants;->CURTAIN_PEARL_COUNT_VERTICAL:I
const/16 v0, 0x384
sput v0, Lcom/umeng/newxp/common/ExchangeConstants;->DATA_CACHE_TIME:I
sput-boolean v2, Lcom/umeng/newxp/common/ExchangeConstants;->DATA_COMPRESS:Z
sput v6, Lcom/umeng/newxp/common/ExchangeConstants;->DRAWER_LIST_COUNT_VERTICAL:I
sput-boolean v2, Lcom/umeng/newxp/common/ExchangeConstants;->full_screen:Z
sput-boolean v3, Lcom/umeng/newxp/common/ExchangeConstants;->handler_auto_expand:Z
sput-boolean v3, Lcom/umeng/newxp/common/ExchangeConstants;->handler_left:Z
sput-boolean v2, Lcom/umeng/newxp/common/ExchangeConstants;->has_banner:Z
const-string/jumbo v0, "/download/.web_cache/"
sput-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->WEB_CACHE_NAME:Ljava/lang/String;
const-string/jumbo v0, "exchange"
sput-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v0, "\u5426"
sput-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->no:Ljava/lang/String;
sput-boolean v2, Lcom/umeng/newxp/common/ExchangeConstants;->ONLY_CHINESE:Z
const-string/jumbo v0, "1"
sput-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->protocol_version:Ljava/lang/String;
sput-boolean v3, Lcom/umeng/newxp/common/ExchangeConstants;->ROUND_ICON:Z
const/16 v0, 0x7530
sput v0, Lcom/umeng/newxp/common/ExchangeConstants;->REFRESH_INTERVAL:I
sput-boolean v2, Lcom/umeng/newxp/common/ExchangeConstants;->IGNORE_SERVER_INTERVAL:Z
sput-boolean v3, Lcom/umeng/newxp/common/ExchangeConstants;->RICH_NOTIFICATION:Z
sput-boolean v3, Lcom/umeng/newxp/common/ExchangeConstants;->show_price:Z
sput-boolean v2, Lcom/umeng/newxp/common/ExchangeConstants;->show_size:Z
sput-boolean v3, Lcom/umeng/newxp/common/ExchangeConstants;->USE_SCROLL_VIEW_LANDSCAPE:Z
sput-boolean v2, Lcom/umeng/newxp/common/ExchangeConstants;->USE_SIMPLE_DIALOG:Z
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method