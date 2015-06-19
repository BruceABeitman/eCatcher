.class public final enum Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;
.super Ljava/lang/Enum;
.source "WebSiteDefaultControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/share/website/WebSiteDefaultControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultWeb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

.field public static final enum FACEBOOK:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

.field public static final enum FLICKER:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

.field private static final OTHERS:[Ljava/lang/String;

.field public static final enum QQ:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

.field public static final enum QZONE:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

.field public static final enum RENREN:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

.field public static final enum SINA:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

.field public static final enum TWITTER:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

.field private static final ZH_CN:[Ljava/lang/String;

.field private static final ZH_Hk_TW:[Ljava/lang/String;

.field private static showArray:[Ljava/lang/String;


# instance fields
.field private site_code:Ljava/lang/String;

.field private site_name:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    const-string/jumbo v1, "QZONE"

    const-string/jumbo v2, "qzone"

    const v3, 0x7f08004f

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->QZONE:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    new-instance v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    const-string/jumbo v1, "SINA"

    const-string/jumbo v2, "sina"

    const v3, 0x7f08004e

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->SINA:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    new-instance v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    const-string/jumbo v1, "RENREN"

    const-string/jumbo v2, "renren"

    const v3, 0x7f080053

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->RENREN:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    new-instance v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    const-string/jumbo v1, "QQ"

    const-string/jumbo v2, "qq"

    const v3, 0x7f080054

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->QQ:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    new-instance v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    const-string/jumbo v1, "FACEBOOK"

    const-string/jumbo v2, "facebook"

    const v3, 0x7f080050

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->FACEBOOK:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    new-instance v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    const-string/jumbo v1, "TWITTER"

    const/4 v2, 0x5

    const-string/jumbo v3, "twitter"

    const v4, 0x7f080051

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->TWITTER:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    new-instance v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    const-string/jumbo v1, "FLICKER"

    const/4 v2, 0x6

    const-string/jumbo v3, "flickr"

    const v4, 0x7f080052

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->FLICKER:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    sget-object v1, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->QZONE:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->SINA:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->RENREN:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    aput-object v1, v0, v7

    sget-object v1, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->QQ:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    aput-object v1, v0, v8

    sget-object v1, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->FACEBOOK:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->TWITTER:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->FLICKER:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->ENUM$VALUES:[Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "qzone"

    aput-object v1, v0, v5

    const-string/jumbo v1, "sina"

    aput-object v1, v0, v6

    const-string/jumbo v1, "qq"

    aput-object v1, v0, v7

    sput-object v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->ZH_CN:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "facebook"

    aput-object v1, v0, v5

    const-string/jumbo v1, "qzone"

    aput-object v1, v0, v6

    const-string/jumbo v1, "sina"

    aput-object v1, v0, v7

    sput-object v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->ZH_Hk_TW:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "facebook"

    aput-object v1, v0, v5

    const-string/jumbo v1, "twitter"

    aput-object v1, v0, v6

    const-string/jumbo v1, "flickr"

    aput-object v1, v0, v7

    sput-object v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->OTHERS:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->showArray:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->site_code:Ljava/lang/String;

    iput p4, p0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->site_name:I

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->site_code:Ljava/lang/String;

    return-object v0
.end method

.method public static getShowWeb()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sput-object v4, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->showArray:[Ljava/lang/String;

    const-string/jumbo v4, "zh-cn"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    sget-object v4, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->ZH_CN:[Ljava/lang/String;

    sput-object v4, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->showArray:[Ljava/lang/String;

    :goto_1b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->showArray:[Ljava/lang/String;

    array-length v8, v7

    move v6, v5

    :goto_24
    if-lt v6, v8, :cond_48

    return-object v2

    :cond_27
    const-string/jumbo v4, "zh-hk"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    sget-object v4, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->ZH_Hk_TW:[Ljava/lang/String;

    sput-object v4, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->showArray:[Ljava/lang/String;

    goto :goto_1b

    :cond_35
    const-string/jumbo v4, "zh-tw"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    sget-object v4, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->ZH_Hk_TW:[Ljava/lang/String;

    sput-object v4, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->showArray:[Ljava/lang/String;

    goto :goto_1b

    :cond_43
    sget-object v4, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->OTHERS:[Ljava/lang/String;

    sput-object v4, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->showArray:[Ljava/lang/String;

    goto :goto_1b

    :cond_48
    aget-object v0, v7, v6

    invoke-static {}, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->values()[Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    move-result-object v9

    array-length v10, v9

    move v4, v5

    :goto_50
    if-lt v4, v10, :cond_56

    :goto_52
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_24

    :cond_56
    aget-object v1, v9, v4

    iget-object v11, v1, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->site_code:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_64

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_50
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;
    .registers 2

    const-class v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->ENUM$VALUES:[Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->site_code:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->site_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
