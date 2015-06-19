.class public Lcom/pinguo/share/ShareManager;
.super Ljava/lang/Object;
.source "ShareManager.java"


# static fields
.field public static final APP_KEY_BEETALK:Ljava/lang/String; = "d3afc60be427b6ec"

.field public static final DEBUG:Z = false

.field public static final PACKAGE_INSTAGRAM:Ljava/lang/String; = "com.instagram.android"

.field public static final SHARE_TYPE_CLOUD:I = 0x2

.field public static final SHARE_TYPE_NATIVE:I = 0x1

.field private static mApiGetLocation:Lcom/pinguo/camera360/login/i/user/ApiGetLocation;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/login/i/user/ApiGetLocation;)V
    .registers 1

    sput-object p0, Lcom/pinguo/share/ShareManager;->mApiGetLocation:Lcom/pinguo/camera360/login/i/user/ApiGetLocation;

    return-void
.end method

.method public static duringReqNationForBeeTalk()Z
    .registers 1

    sget-object v0, Lcom/pinguo/share/ShareManager;->mApiGetLocation:Lcom/pinguo/camera360/login/i/user/ApiGetLocation;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getBeeTalkInstallVersion(Landroid/content/Context;)I
    .registers 7

    const/4 v0, -0x1

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.beetalk"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_12

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return v0

    :catch_13
    move-exception v1

    const/4 v0, -0x1

    goto :goto_12
.end method

.method private static installBeeTalk(Landroid/app/Activity;)V
    .registers 12

    const/4 v10, 0x0

    invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Other;->otherBeetalkDownLoad()V

    const-string/jumbo v6, "com.beetalk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "market://details?id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-direct {v3, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v3, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_38

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_38

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_37
    return-void

    :cond_38
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "http://play.google.com/store/apps/details?id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-direct {v3, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v3, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7e

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_37

    :cond_7e
    const v8, 0x7f080038

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_37
.end method

.method public static otherShare(Landroid/content/Context;Lcom/pinguo/share/ShareInfo;)V
    .registers 8

    sget-object v3, Lcom/pinguo/share/ShareType;->OTHER:Lcom/pinguo/share/ShareType;

    iput-object v3, p1, Lcom/pinguo/share/ShareInfo;->shareType:Lcom/pinguo/share/ShareType;

    invoke-virtual {p1}, Lcom/pinguo/share/ShareInfo;->genImagePathFromImageBitmap()V

    new-instance v2, Lcom/pinguo/share/local/OtherShareAdapter;

    iget-object v3, p1, Lcom/pinguo/share/ShareInfo;->uiContent:Ljava/lang/String;

    iget-object v4, p1, Lcom/pinguo/share/ShareInfo;->uiTag:Ljava/lang/String;

    iget-object v5, p1, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/pinguo/share/local/OtherShareAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08003c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/pinguo/share/ShareManager$4;

    invoke-direct {v4, v2, p1, p0}, Lcom/pinguo/share/ShareManager$4;-><init>(Lcom/pinguo/share/local/OtherShareAdapter;Lcom/pinguo/share/ShareInfo;Landroid/content/Context;)V

    invoke-virtual {v3, v2, v4}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->show()V

    iget v3, p1, Lcom/pinguo/share/ShareInfo;->uiOrientation:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->setOrientation(IZ)V

    return-void
.end method

.method public static qqShare(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;)V
    .registers 3

    sget-object v0, Lcom/pinguo/share/ShareType;->LOCAL_QQ:Lcom/pinguo/share/ShareType;

    iput-object v0, p1, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;

    new-instance v0, Lcom/pinguo/share/local/LocalCloudShareModel;

    invoke-direct {v0, p1}, Lcom/pinguo/share/local/LocalCloudShareModel;-><init>(Lcom/pinguo/share/CloudShareInfo;)V

    invoke-virtual {v0, p0}, Lcom/pinguo/share/local/LocalCloudShareModel;->share(Landroid/app/Activity;)V

    return-void
.end method

.method public static qqShare(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V
    .registers 3

    sget-object v0, Lcom/pinguo/share/ShareType;->LOCAL_QQ:Lcom/pinguo/share/ShareType;

    iput-object v0, p1, Lcom/pinguo/share/ShareInfo;->shareType:Lcom/pinguo/share/ShareType;

    new-instance v0, Lcom/pinguo/share/local/LocalShareModel;

    invoke-direct {v0, p1}, Lcom/pinguo/share/local/LocalShareModel;-><init>(Lcom/pinguo/share/ShareInfo;)V

    invoke-virtual {v0, p0}, Lcom/pinguo/share/local/LocalShareModel;->share(Landroid/app/Activity;)V

    return-void
.end method

.method public static reqNationForBeeTalk(Landroid/content/Context;)V
    .registers 9

    sget-object v6, Lcom/pinguo/share/ShareManager;->mApiGetLocation:Lcom/pinguo/camera360/login/i/user/ApiGetLocation;

    if-eqz v6, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getUserCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_4

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v4, 0x5265c00

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getReqUserCountryCodeTime()J

    move-result-wide v6

    sub-long v6, v1, v6

    cmp-long v6, v6, v4

    if-ltz v6, :cond_4

    invoke-virtual {v3, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->setReqUserCountryCodeTime(J)V

    new-instance v6, Lcom/pinguo/camera360/login/i/user/ApiGetLocation;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/pinguo/camera360/login/i/user/ApiGetLocation;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/pinguo/share/ShareManager;->mApiGetLocation:Lcom/pinguo/camera360/login/i/user/ApiGetLocation;

    sget-object v6, Lcom/pinguo/share/ShareManager;->mApiGetLocation:Lcom/pinguo/camera360/login/i/user/ApiGetLocation;

    new-instance v7, Lcom/pinguo/share/ShareManager$1;

    invoke-direct {v7}, Lcom/pinguo/share/ShareManager$1;-><init>()V

    invoke-virtual {v6, v7}, Lcom/pinguo/camera360/login/i/user/ApiGetLocation;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    goto :goto_4
.end method

.method public static shareToBeeTalkBuzz(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V
    .registers 8

    invoke-static {p0}, Lcom/pinguo/share/ShareManager;->getBeeTalkInstallVersion(Landroid/content/Context;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    invoke-static {p0}, Lcom/pinguo/share/ShareManager;->installBeeTalk(Landroid/app/Activity;)V

    :goto_a
    return-void

    :cond_b
    const/16 v4, 0xd9

    if-ge v3, v4, :cond_1b

    const v4, 0x7f080038

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_a

    :cond_1b
    invoke-virtual {p1}, Lcom/pinguo/share/ShareInfo;->genImagePathFromImageBitmap()V

    new-instance v0, Ljava/io/File;

    iget-object v4, p1, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.beetalk.SHARE_IMAGE_BUZZ"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "APP_KEY"

    const-string/jumbo v5, "d3afc60be427b6ec"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "image/jpeg"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a
.end method

.method public static shareToBeeTalkChat(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V
    .registers 8

    invoke-static {p0}, Lcom/pinguo/share/ShareManager;->getBeeTalkInstallVersion(Landroid/content/Context;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    invoke-static {p0}, Lcom/pinguo/share/ShareManager;->installBeeTalk(Landroid/app/Activity;)V

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p1}, Lcom/pinguo/share/ShareInfo;->genImagePathFromImageBitmap()V

    new-instance v0, Ljava/io/File;

    iget-object v4, p1, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/16 v4, 0xd7

    if-le v3, v4, :cond_41

    const-string/jumbo v4, "com.beetalk.SHARE_IMAGE_CHAT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "APP_KEY"

    const-string/jumbo v5, "d3afc60be427b6ec"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "image/jpeg"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_3d
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    :cond_41
    const-string/jumbo v4, "com.beetalk"

    const-string/jumbo v5, "com.beetalk.ui.view.chat.selection.BTChatSelectionActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "APP_KEY"

    const-string/jumbo v5, "d3afc60be427b6ec"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "image/jpeg"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3d
.end method

.method public static shareToLocalApp(Landroid/app/Activity;Ljava/lang/String;Lcom/pinguo/share/ShareInfo;)V
    .registers 9

    invoke-virtual {p2}, Lcom/pinguo/share/ShareInfo;->genImagePathFromImageBitmap()V

    new-instance v0, Ljava/io/File;

    iget-object v3, p2, Lcom/pinguo/share/ShareInfo;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "image/jpg"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.SUBJECT"

    iget-object v4, p2, Lcom/pinguo/share/ShareInfo;->uiContent:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.TITLE"

    iget-object v4, p2, Lcom/pinguo/share/ShareInfo;->uiContent:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.TEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/pinguo/share/ShareInfo;->uiContent:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/pinguo/share/ShareInfo;->uiTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static smsShare(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;)V
    .registers 3

    sget-object v0, Lcom/pinguo/share/ShareType;->LOCAL_SMS:Lcom/pinguo/share/ShareType;

    iput-object v0, p1, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;

    new-instance v0, Lcom/pinguo/share/local/LocalCloudShareModel;

    invoke-direct {v0, p1}, Lcom/pinguo/share/local/LocalCloudShareModel;-><init>(Lcom/pinguo/share/CloudShareInfo;)V

    invoke-virtual {v0, p0}, Lcom/pinguo/share/local/LocalCloudShareModel;->share(Landroid/app/Activity;)V

    return-void
.end method

.method public static validateLocalAppInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_a} :catch_11

    move-result-object v1

    if-eqz v1, :cond_f

    const/4 v2, 0x1

    :goto_e
    return v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_e

    :catch_11
    move-exception v0

    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static validateQQInstall(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/pinguo/share/local/LocalQQShare;->validateInstall(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static validateWeChatInstall(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/pinguo/share/local/LocalWXShare;->validateInstall(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static weChatFriendsShare(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;)V
    .registers 3

    sget-object v0, Lcom/pinguo/share/ShareType;->LOCAL_WX_FRIENDS:Lcom/pinguo/share/ShareType;

    iput-object v0, p1, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;

    new-instance v0, Lcom/pinguo/share/local/LocalCloudShareModel;

    invoke-direct {v0, p1}, Lcom/pinguo/share/local/LocalCloudShareModel;-><init>(Lcom/pinguo/share/CloudShareInfo;)V

    invoke-virtual {v0, p0}, Lcom/pinguo/share/local/LocalCloudShareModel;->share(Landroid/app/Activity;)V

    return-void
.end method

.method public static weChatFriendsShare(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V
    .registers 3

    sget-object v0, Lcom/pinguo/share/ShareType;->LOCAL_WX_FRIENDS:Lcom/pinguo/share/ShareType;

    iput-object v0, p1, Lcom/pinguo/share/ShareInfo;->shareType:Lcom/pinguo/share/ShareType;

    new-instance v0, Lcom/pinguo/share/local/LocalShareModel;

    invoke-direct {v0, p1}, Lcom/pinguo/share/local/LocalShareModel;-><init>(Lcom/pinguo/share/ShareInfo;)V

    invoke-virtual {v0, p0}, Lcom/pinguo/share/local/LocalShareModel;->share(Landroid/app/Activity;)V

    return-void
.end method

.method public static weChatShare(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;)V
    .registers 3

    sget-object v0, Lcom/pinguo/share/ShareType;->LOCAL_WX_CHATS:Lcom/pinguo/share/ShareType;

    iput-object v0, p1, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;

    new-instance v0, Lcom/pinguo/share/local/LocalCloudShareModel;

    invoke-direct {v0, p1}, Lcom/pinguo/share/local/LocalCloudShareModel;-><init>(Lcom/pinguo/share/CloudShareInfo;)V

    invoke-virtual {v0, p0}, Lcom/pinguo/share/local/LocalCloudShareModel;->share(Landroid/app/Activity;)V

    return-void
.end method

.method public static weChatShare(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V
    .registers 3

    sget-object v0, Lcom/pinguo/share/ShareType;->LOCAL_WX_CHATS:Lcom/pinguo/share/ShareType;

    iput-object v0, p1, Lcom/pinguo/share/ShareInfo;->shareType:Lcom/pinguo/share/ShareType;

    new-instance v0, Lcom/pinguo/share/local/LocalShareModel;

    invoke-direct {v0, p1}, Lcom/pinguo/share/local/LocalShareModel;-><init>(Lcom/pinguo/share/ShareInfo;)V

    invoke-virtual {v0, p0}, Lcom/pinguo/share/local/LocalShareModel;->share(Landroid/app/Activity;)V

    return-void
.end method

.method public static websiteShare(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;)V
    .registers 10

    const/4 v7, 0x0

    sget-object v5, Lcom/pinguo/share/ShareType;->WEBSITE_SHARE:Lcom/pinguo/share/ShareType;

    iput-object v5, p1, Lcom/pinguo/share/CloudShareInfo;->shareType:Lcom/pinguo/share/ShareType;

    invoke-virtual {p1}, Lcom/pinguo/share/CloudShareInfo;->genImagePathFromThumbnailBitmap()V

    invoke-virtual {p1}, Lcom/pinguo/share/CloudShareInfo;->isNeedPhotoWall()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "zh-cn"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    invoke-static {p0}, Lcom/pinguo/share/util/ShareModuleUtil;->hasNet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_43

    const v5, 0x7f080047

    const/4 v6, 0x1

    invoke-static {p0, v5, v6, v7}, Lcom/pinguo/share/ui/dialog/ShareBSDialogUtils;->showProgressDialog(Landroid/content/Context;IZI)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    move-result-object v4

    new-instance v5, Lcom/pinguo/share/ShareManager$2;

    invoke-direct {v5, p0, p1, v4}, Lcom/pinguo/share/ShareManager$2;-><init>(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;)V

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lcom/pinguo/share/ShareManager$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    new-instance v0, Lcom/pinguo/share/ShareManager$3;

    invoke-direct {v0, v1}, Lcom/pinguo/share/ShareManager$3;-><init>(Landroid/os/AsyncTask;)V

    invoke-virtual {v4, v0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :goto_42
    return-void

    :cond_43
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/pinguo/share/website/WebSiteShareMainActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v5, "cloudshareinfo"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_42
.end method

.method public static websiteShare(Landroid/app/Activity;Lcom/pinguo/share/ShareInfo;)V
    .registers 4

    sget-object v1, Lcom/pinguo/share/ShareType;->WEBSITE_SHARE:Lcom/pinguo/share/ShareType;

    iput-object v1, p1, Lcom/pinguo/share/ShareInfo;->shareType:Lcom/pinguo/share/ShareType;

    invoke-virtual {p1}, Lcom/pinguo/share/ShareInfo;->genImagePathFromImageBitmap()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/share/website/WebSiteShareMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "shareinfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
