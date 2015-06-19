.class  Lcom/pinguo/camera360/shop/activity/ComponentInteration;
.super Lcom/pinguo/camera360/shop/activity/Interaction;
.source "InteractionFactory.java"
.field private static final TAG:Ljava/lang/String;
.field private mContext:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/shop/activity/ComponentInteration;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/shop/activity/ComponentInteration;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/Interaction;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/ComponentInteration;->mContext:Landroid/content/Context;
return-void
.end method
.method public onClick(Ljava/lang/String;I)V
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/shop/activity/ComponentInteration; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
const-string/jumbo v4, "pkg"
invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_12
:cond_11
:goto_11
const-string v1, " - Lcom/pinguo/camera360/shop/activity/ComponentInteration; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_12
iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/ComponentInteration;->mContext:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v4
invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
if-nez v0, :cond_3d
const-string/jumbo v4, "link"
invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_11
iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/ComponentInteration;->mContext:Landroid/content/Context;
new-instance v5, Landroid/content/Intent;
const-string/jumbo v6, "android.intent.action.VIEW"
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v7
invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_11
:cond_3d
iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/ComponentInteration;->mContext:Landroid/content/Context;
invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_11
.end method