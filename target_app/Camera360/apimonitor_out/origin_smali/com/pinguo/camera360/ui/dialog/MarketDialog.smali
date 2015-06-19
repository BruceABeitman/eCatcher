.class public Lcom/pinguo/camera360/ui/dialog/MarketDialog;
.super Ljava/lang/Object;
.source "MarketDialog.java"


# static fields
.field public static final FLAG_EXIT_ONDISMISS:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MarketDialog"


# instance fields
.field private mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

.field private mAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFlag:I

.field private mMarketSelect:Landroid/content/DialogInterface$OnClickListener;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mFlag:I

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/MarketDialog$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/MarketDialog$1;-><init>(Lcom/pinguo/camera360/ui/dialog/MarketDialog;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mMarketSelect:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "vStudio.Android.Camera360"

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mFlag:I

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/ui/dialog/MarketDialog;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mAppsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/ui/dialog/MarketDialog;Landroid/content/pm/ResolveInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->startActivityFromResolveInfo(Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/ui/dialog/MarketDialog;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private startActivityFromResolveInfo(Landroid/content/pm/ResolveInfo;)V
    .registers 8

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "market://details?id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getDialog()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    return-object v0
.end method

.method public show()V
    .registers 14

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "market://details"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v10, v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v10, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mAppsList:Ljava/util/List;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mAppsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_61

    new-instance v8, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08029c

    invoke-virtual {v8, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/MarketDialog$2;

    iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0300ba

    iget-object v4, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mAppsList:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/MarketDialog$2;-><init>(Lcom/pinguo/camera360/ui/dialog/MarketDialog;Landroid/content/Context;ILjava/util/List;Landroid/content/pm/PackageManager;)V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mMarketSelect:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v8, v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v8}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    iget v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    new-instance v2, Lcom/pinguo/camera360/ui/dialog/MarketDialog$3;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/ui/dialog/MarketDialog$3;-><init>(Lcom/pinguo/camera360/ui/dialog/MarketDialog;)V

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_60
    :goto_60
    return-void

    :cond_61
    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mAppsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_82

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mAppsList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->startActivityFromResolveInfo(Landroid/content/pm/ResolveInfo;)V

    iget v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_60

    :cond_82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "http://play.google.com/store/apps/details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v10, v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v10, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_cb

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v6, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v11, Landroid/content/ComponentName;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_cb
    iget v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_60
.end method
