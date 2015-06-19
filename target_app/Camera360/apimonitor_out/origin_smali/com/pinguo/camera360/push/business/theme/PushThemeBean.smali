.class public Lcom/pinguo/camera360/push/business/theme/PushThemeBean;
.super Ljava/lang/Object;
.source "PushThemeBean.java"

# interfaces
.implements Lcom/pinguo/camera360/push/PushDataBean;


# static fields
.field private static final KEY_DEFAULT:Ljava/lang/String; = "defaultTheme"

.field private static final KEY_THEME:Ljava/lang/String; = "theme"

.field private static final TAG:Ljava/lang/String; = "newpush"


# instance fields
.field private defaultScene:I

.field private theme:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;->theme:I

    const v0, 0x186f4

    iput v0, p0, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;->defaultScene:I

    return-void
.end method

.method private static clearDefaultThemeCache()V
    .registers 3

    invoke-static {}, Lcom/pinguo/share/theme/ThemeXMLConsole;->getSelect()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/pinguo/share/theme/ThemeXMLConsole;->removeSelect()V

    invoke-static {}, Lcom/pinguo/share/theme/ThemeXMLConsole;->removePushTheme()V

    :goto_c
    return-void

    :cond_d
    invoke-static {}, Lcom/pinguo/share/theme/ThemeXMLConsole;->getPushDefault()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/pinguo/share/theme/ThemeXMLConsole;->removeSelect()V

    :cond_1e
    invoke-static {}, Lcom/pinguo/share/theme/ThemeXMLConsole;->removePushTheme()V

    goto :goto_c
.end method

.method private static dealDefaultTheme(Landroid/content/Context;I)I
    .registers 9

    const-string/jumbo v3, "newpush"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "defaultThemeId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1d

    const v3, 0x1869f

    if-ne p1, v3, :cond_2b

    :cond_1d
    invoke-static {}, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;->clearDefaultThemeCache()V

    :goto_20
    const-string/jumbo v3, "newpush"

    const-string/jumbo v4, "success: false"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    :goto_2a
    return v3

    :cond_2b
    invoke-static {}, Lcom/pinguo/share/theme/ThemeXMLConsole;->getPushDefault()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_69

    const/4 v0, 0x1

    :cond_33
    :goto_33
    if-eqz v0, :cond_7c

    invoke-static {}, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;->clearDefaultThemeCache()V

    new-instance v3, Lcom/pinguo/share/theme/ThemeXMLConsole;

    invoke-direct {v3}, Lcom/pinguo/share/theme/ThemeXMLConsole;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/pinguo/share/theme/ThemeXMLConsole;->uploadModel(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5e

    const-class v3, Lcom/pinguo/share/theme/ThemeXMLConsole;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "dealDefaultTheme"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pinguo/share/theme/ThemeXMLConsole;->setSelect(I)V

    invoke-static {p1}, Lcom/pinguo/share/theme/ThemeXMLConsole;->setPushDefault(I)V

    :cond_5e
    const-string/jumbo v3, "newpush"

    const-string/jumbo v4, "success: true"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_2a

    :cond_69
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    invoke-static {}, Lcom/pinguo/share/theme/ThemeXMLConsole;->removePushTheme()V

    const/4 v0, 0x1

    goto :goto_33

    :cond_7c
    const-string/jumbo v3, "newpush"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "needUploadSelect: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method

.method public static getDataBean(Ljava/lang/String;)Lcom/pinguo/camera360/push/business/theme/PushThemeBean;
    .registers 7

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;

    invoke-direct {v0}, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;-><init>()V

    const-string/jumbo v3, "theme"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;->theme:I

    const-string/jumbo v3, "defaultTheme"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;->defaultScene:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-object v0

    :catch_1d
    move-exception v1

    const-string/jumbo v3, "newpush"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "push error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static notify(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;I)I
    .registers 10

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/pinguo/camera360/push/PushBean;->getData()Lcom/pinguo/camera360/push/PushDataBean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pinguo/camera360/push/PushBean;->getNotifi()Lcom/pinguo/camera360/push/PushNotifyBean;

    move-result-object v0

    move-object v3, v1

    check-cast v3, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;

    invoke-virtual {v3}, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;->getTheme()I

    move-result v2

    const-string/jumbo v3, "newpush"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "theme:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/push/PushBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->setMessageId(Ljava/lang/String;)V

    if-nez v2, :cond_3a

    check-cast v1, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;

    invoke-virtual {v1}, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;->getDefaultScene()I

    move-result v3

    invoke-static {p0, v3}, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;->dealDefaultTheme(Landroid/content/Context;I)I

    move-result v3

    :goto_39
    return v3

    :cond_3a
    new-instance v3, Lcom/pinguo/share/theme/ThemeXMLConsole;

    invoke-direct {v3}, Lcom/pinguo/share/theme/ThemeXMLConsole;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v1, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;

    invoke-virtual {v1}, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;->getDefaultScene()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v4}, Lcom/pinguo/share/theme/ThemeXMLConsole;->uploadModel(Landroid/content/Context;Ljava/lang/String;Z)Z

    move v3, v4

    goto :goto_39
.end method


# virtual methods
.method public getDefaultScene()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;->defaultScene:I

    return v0
.end method

.method public getTheme()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;->theme:I

    return v0
.end method
