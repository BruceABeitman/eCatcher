.class public Lcom/sina/weibo/sdk/utils/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"
.field private static final DIALOG_BACKGROUND_IMAGE_NAME:Ljava/lang/String; = "weibosdk_dialog_bg.9.png"
.field public static final DIALOG_BOTTOM_MARGIN:I = 0xa
.field private static final DIALOG_CLOSE_BUTTON_IMAGE_NAME:Ljava/lang/String; = "ic_com_sina_weibo_sdk_close.png"
.field public static final DIALOG_LEFT_MARGIN:I = 0xa
.field public static final DIALOG_RIGHT_MARGIN:I = 0xa
.field public static final DIALOG_TOP_MARGIN:I = 0x1e
.field private static final DRAWABLE:Ljava/lang/String; = "drawable"
.field private static final DRAWABLE_HDPI:Ljava/lang/String; = "drawable-hdpi"
.field private static final DRAWABLE_LDPI:Ljava/lang/String; = "drawable-ldpi"
.field private static final DRAWABLE_MDPI:Ljava/lang/String; = "drawable-mdpi"
.field private static final DRAWABLE_XHDPI:Ljava/lang/String; = "drawable-xhdpi"
.field private static final DRAWABLE_XXHDPI:Ljava/lang/String; = "drawable-xxhdpi"
.field private static final LOADING_EN:Ljava/lang/String; = "Loading..."
.field private static final LOADING_ZH_CN:Ljava/lang/String; = "\u52a0\u8f7d\u4e2d..."
.field private static final LOADING_ZH_TW:Ljava/lang/String; = "\u8f09\u5165\u4e2d..."
.field private static final NETWORK_NOT_AVAILABLE_EN:Ljava/lang/String; = "Network is not available"
.field private static final NETWORK_NOT_AVAILABLE_ZH_CN:Ljava/lang/String; = "\u65e0\u6cd5\u8fde\u63a5\u5230\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u914d\u7f6e"
.field private static final NETWORK_NOT_AVAILABLE_ZH_TW:Ljava/lang/String; = "\u7121\u6cd5\u9023\u63a5\u5230\u7db2\u7edc\uff0c\u8acb\u6aa2\u67e5\u7db2\u7edc\u914d\u7f6e"
.field private static final PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String; = null
.field private static final TAG:Ljava/lang/String; = null
.field public static final dimen_dialog_bottom_margin:I = 0x4
.field public static final dimen_dialog_left_margin:I = 0x1
.field public static final dimen_dialog_right_margin:I = 0x3
.field public static final dimen_dialog_top_margin:I = 0x2
.field public static final drawable_dialog_background:I = 0x1
.field public static final drawable_dialog_close_button:I = 0x2
.field private static final sDrawableMap:Landroid/util/SparseArray; = null
.field private static final sLanguageMap:Ljava/util/HashMap; = null
.field private static final sLayoutMap:Landroid/util/SparseIntArray; = null
.field public static final string_loading:I = 0x1
.field public static final string_network_not_available:I = 0x2
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/16 v3, 0xa
const/4 v5, 0x2
const/4 v4, 0x1
const-class v1, Lcom/sina/weibo/sdk/utils/ResourceManager;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;
new-instance v1, Landroid/util/SparseIntArray;
invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V
sput-object v1, Lcom/sina/weibo/sdk/utils/ResourceManager;->sLayoutMap:Landroid/util/SparseIntArray;
sget-object v1, Lcom/sina/weibo/sdk/utils/ResourceManager;->sLayoutMap:Landroid/util/SparseIntArray;
invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V
sget-object v1, Lcom/sina/weibo/sdk/utils/ResourceManager;->sLayoutMap:Landroid/util/SparseIntArray;
const/16 v2, 0x1e
invoke-virtual {v1, v5, v2}, Landroid/util/SparseIntArray;->put(II)V
sget-object v1, Lcom/sina/weibo/sdk/utils/ResourceManager;->sLayoutMap:Landroid/util/SparseIntArray;
invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V
sget-object v1, Lcom/sina/weibo/sdk/utils/ResourceManager;->sLayoutMap:Landroid/util/SparseIntArray;
invoke-virtual {v1, v7, v3}, Landroid/util/SparseIntArray;->put(II)V
const/4 v1, 0x6
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
const-string/jumbo v3, "drawable-xxhdpi"
aput-object v3, v1, v2
const-string/jumbo v2, "drawable-xhdpi"
aput-object v2, v1, v4
const-string/jumbo v2, "drawable-hdpi"
aput-object v2, v1, v5
const-string/jumbo v2, "drawable-mdpi"
aput-object v2, v1, v6
const-string/jumbo v2, "drawable-ldpi"
aput-object v2, v1, v7
const/4 v2, 0x5
const-string/jumbo v3, "drawable"
aput-object v3, v1, v2
sput-object v1, Lcom/sina/weibo/sdk/utils/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;
new-instance v1, Landroid/util/SparseArray;
invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V
sput-object v1, Lcom/sina/weibo/sdk/utils/ResourceManager;->sDrawableMap:Landroid/util/SparseArray;
sget-object v1, Lcom/sina/weibo/sdk/utils/ResourceManager;->sDrawableMap:Landroid/util/SparseArray;
const-string/jumbo v2, "weibosdk_dialog_bg.9.png"
invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
sget-object v1, Lcom/sina/weibo/sdk/utils/ResourceManager;->sDrawableMap:Landroid/util/SparseArray;
const-string/jumbo v2, "ic_com_sina_weibo_sdk_close.png"
invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
sput-object v1, Lcom/sina/weibo/sdk/utils/ResourceManager;->sLanguageMap:Ljava/util/HashMap;
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
const-string/jumbo v1, "\u52a0\u8f7d\u4e2d..."
invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
const-string/jumbo v1, "\u65e0\u6cd5\u8fde\u63a5\u5230\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u914d\u7f6e"
invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
sget-object v1, Lcom/sina/weibo/sdk/utils/ResourceManager;->sLanguageMap:Ljava/util/HashMap;
sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
const-string/jumbo v1, "\u8f09\u5165\u4e2d..."
invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
const-string/jumbo v1, "\u7121\u6cd5\u9023\u63a5\u5230\u7db2\u7edc\uff0c\u8acb\u6aa2\u67e5\u7db2\u7edc\u914d\u7f6e"
invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
sget-object v1, Lcom/sina/weibo/sdk/utils/ResourceManager;->sLanguageMap:Ljava/util/HashMap;
sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
const-string/jumbo v1, "Loading..."
invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
const-string/jumbo v1, "Network is not available"
invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
sget-object v1, Lcom/sina/weibo/sdk/utils/ResourceManager;->sLanguageMap:Ljava/util/HashMap;
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static extractDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.registers 7
invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v4
invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v2
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
new-instance v3, Landroid/util/TypedValue;
invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V
iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I
iput v4, v3, Landroid/util/TypedValue;->density:I
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-static {v4, v3, v2, p1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
return-object v1
.end method
.method private static extractView(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v2
invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
move-result-object v1
const-string/jumbo v2, "layout_inflater"
invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
return-object v2
.end method
.method public static getAppropriatePathOfDrawable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.registers 10
const/4 v4, 0x0
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-eqz v5, :cond_11
sget-object v5, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v6, "id is NOT correct!"
invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
move-object v2, v4
:cond_10
:goto_10
return-object v2
:cond_11
invoke-static {p0}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getCurrentDpiFolder(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "/"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
sget-object v5, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "Maybe the appropriate path: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->isFileExisted(Landroid/content/Context;Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_10
sget-object v5, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v6, "Not the correct path, we need to find one..."
invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
const/4 v0, 0x0
const/4 v1, 0x0
:goto_53
sget-object v5, Lcom/sina/weibo/sdk/utils/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;
array-length v5, v5
if-lt v1, v5, :cond_62
sget-object v5, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v6, "Not find the appropriate path for drawable"
invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
move-object v2, v4
goto :goto_10
:cond_62
if-nez v0, :cond_96
sget-object v5, Lcom/sina/weibo/sdk/utils/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;
aget-object v5, v5, v1
invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_93
const/4 v0, 0x1
sget-object v5, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "Have Find index: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ", "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
sget-object v7, Lcom/sina/weibo/sdk/utils/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;
aget-object v7, v7, v1
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
:cond_93
add-int/lit8 v1, v1, 0x1
goto :goto_53
:cond_96
new-instance v5, Ljava/lang/StringBuilder;
sget-object v6, Lcom/sina/weibo/sdk/utils/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;
aget-object v6, v6, v1
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "/"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {p0, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->isFileExisted(Landroid/content/Context;Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_93
goto/16 :goto_10
.end method
.method private static getCurrentDpiFolder(Landroid/content/Context;)Ljava/lang/String;
.registers 7
const/16 v5, 0xf0
const/16 v4, 0xa0
const/16 v3, 0x78
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I
if-gt v0, v3, :cond_16
const-string/jumbo v2, "drawable-ldpi"
:goto_15
return-object v2
:cond_16
if-le v0, v3, :cond_1e
if-gt v0, v4, :cond_1e
const-string/jumbo v2, "drawable-mdpi"
goto :goto_15
:cond_1e
if-le v0, v4, :cond_26
if-gt v0, v5, :cond_26
const-string/jumbo v2, "drawable-hdpi"
goto :goto_15
:cond_26
if-le v0, v5, :cond_30
const/16 v2, 0x140
if-gt v0, v2, :cond_30
const-string/jumbo v2, "drawable-xhdpi"
goto :goto_15
:cond_30
const-string/jumbo v2, "drawable-xxhdpi"
goto :goto_15
.end method
.method public static getDimensionPixelSize(I)I
.registers 3
sget-object v0, Lcom/sina/weibo/sdk/utils/ResourceManager;->sLayoutMap:Landroid/util/SparseIntArray;
const/4 v1, 0x0
invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I
move-result v0
return v0
.end method
.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
.registers 5
sget-object v1, Lcom/sina/weibo/sdk/utils/ResourceManager;->sDrawableMap:Landroid/util/SparseArray;
const-string/jumbo v2, ""
invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {p0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getAppropriatePathOfDrawable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawableFromAssert(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
move-result-object v1
return-object v1
.end method
.method public static getDrawableFromAssert(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
.registers 19
const/4 v12, 0x0
invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v7
const/4 v10, 0x0
:try_start_6
move-object/from16 v0, p1
invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v10
if-eqz v10, :cond_7b
invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
move-result-object v3
invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v11
if-eqz p2, :cond_47
invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v8
new-instance v2, Landroid/content/res/Resources;
invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v4
invoke-direct {v2, v4, v11, v8}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;
invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B
move-result-object v4
new-instance v5, Landroid/graphics/Rect;
const/4 v6, 0x0
const/4 v13, 0x0
const/4 v14, 0x0
const/4 v15, 0x0
invoke-direct {v5, v6, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V
const/4 v6, 0x0
invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
:try_end_40
.catchall {:try_start_6 .. :try_end_40} :catchall_67
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_40} :catch_56
:goto_40
if-eqz v10, :cond_46
:try_start_42
invoke-virtual {v10}, Ljava/io/InputStream;->close()V
:try_end_45
.catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_74
:goto_45
const/4 v10, 0x0
:goto_46
:cond_46
return-object v1
:try_start_47
:cond_47
iget v4, v11, Landroid/util/DisplayMetrics;->densityDpi:I
invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setDensity(I)V
new-instance v1, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-direct {v1, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
:try_end_55
.catchall {:try_start_47 .. :try_end_55} :catchall_67
.catch Ljava/io/IOException; {:try_start_47 .. :try_end_55} :catch_56
goto :goto_40
:catch_56
move-exception v9
:try_start_57
invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
:try_end_5a
.catchall {:try_start_57 .. :try_end_5a} :catchall_67
if-eqz v10, :cond_79
:try_start_5c
invoke-virtual {v10}, Ljava/io/InputStream;->close()V
:try_end_5f
.catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_62
:goto_5f
const/4 v10, 0x0
move-object v1, v12
goto :goto_46
:catch_62
move-exception v9
invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
goto :goto_5f
:catchall_67
move-exception v4
if-eqz v10, :cond_6e
:try_start_6a
invoke-virtual {v10}, Ljava/io/InputStream;->close()V
:goto_6d
:try_end_6d
.catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6f
const/4 v10, 0x0
:cond_6e
throw v4
:catch_6f
move-exception v9
invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
goto :goto_6d
:catch_74
move-exception v9
invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
goto :goto_45
:cond_79
move-object v1, v12
goto :goto_46
:cond_7b
move-object v1, v12
goto :goto_40
.end method
.method public static getLanguage()Ljava/util/Locale;
.registers 2
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v0
sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;
invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_14
sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;
invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_15
:goto_14
:cond_14
return-object v0
:cond_15
sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
goto :goto_14
.end method
.method public static getNinePatchDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
.registers 5
sget-object v1, Lcom/sina/weibo/sdk/utils/ResourceManager;->sDrawableMap:Landroid/util/SparseArray;
const-string/jumbo v2, ""
invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {p0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getAppropriatePathOfDrawable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
invoke-static {p0, v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawableFromAssert(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
move-result-object v1
return-object v1
.end method
.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
.registers 5
invoke-static {}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getLanguage()Ljava/util/Locale;
move-result-object v0
sget-object v2, Lcom/sina/weibo/sdk/utils/ResourceManager;->sLanguageMap:Ljava/util/HashMap;
invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/util/SparseArray;
const-string/jumbo v2, ""
invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
return-object v2
.end method
.method private static isFileExisted(Landroid/content/Context;Ljava/lang/String;)Z
.registers 9
const/4 v3, 0x0
if-eqz p0, :cond_9
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_a
:goto_9
:cond_9
return v3
:cond_a
invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v0
const/4 v2, 0x0
:try_start_f
invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v2
sget-object v4, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "file ["
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "] existed"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_2f
.catchall {:try_start_f .. :try_end_2f} :catchall_65
.catch Ljava/io/IOException; {:try_start_f .. :try_end_2f} :catch_3c
if-eqz v2, :cond_34
:try_start_31
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:goto_34
:cond_34
:try_end_34
.catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_36
const/4 v3, 0x1
goto :goto_9
:catch_36
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
const/4 v2, 0x0
goto :goto_34
:catch_3c
move-exception v1
:try_start_3d
sget-object v4, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "file ["
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "] NOT existed"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_59
.catchall {:try_start_3d .. :try_end_59} :catchall_65
if-eqz v2, :cond_9
:try_start_5b
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_end_5e
.catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f
goto :goto_9
:catch_5f
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
const/4 v2, 0x0
goto :goto_9
:catchall_65
move-exception v3
if-eqz v2, :cond_6b
:try_start_68
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:goto_6b
:cond_6b
:try_end_6b
.catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c
throw v3
:catch_6c
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
const/4 v2, 0x0
goto :goto_6b
.end method