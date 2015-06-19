.class public Lcom/sina/weibo/sdk/api/share/WeiboDownloader;
.super Ljava/lang/Object;
.source "WeiboDownloader.java"
.field private static final CANCEL_CHINESS:Ljava/lang/String; = "\u4ee5\u540e\u518d\u8bf4"
.field private static final CANCEL_ENGLISH:Ljava/lang/String; = "Download Later"
.field private static final OK_CHINESS:Ljava/lang/String; = "\u73b0\u5728\u4e0b\u8f7d"
.field private static final OK_ENGLISH:Ljava/lang/String; = "Download Now"
.field private static final PROMPT_CHINESS:Ljava/lang/String; = "\u672a\u5b89\u88c5\u5fae\u535a\u5ba2\u6237\u7aef\uff0c\u662f\u5426\u73b0\u5728\u53bb\u4e0b\u8f7d\uff1f"
.field private static final PROMPT_ENGLISH:Ljava/lang/String; = "Sina Weibo client is not installed, download now?"
.field private static final TITLE_CHINESS:Ljava/lang/String; = "\u63d0\u793a"
.field private static final TITLE_ENGLISH:Ljava/lang/String; = "Notice"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Landroid/content/Context;)V
.registers 1
invoke-static {p0}, Lcom/sina/weibo/sdk/api/share/WeiboDownloader;->downloadWeibo(Landroid/content/Context;)V
return-void
.end method
.method public static createDownloadConfirmDialog(Landroid/content/Context;Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;)Landroid/app/Dialog;
.registers 9
const-string/jumbo v4, "\u63d0\u793a"
const-string/jumbo v3, "\u672a\u5b89\u88c5\u5fae\u535a\u5ba2\u6237\u7aef\uff0c\u662f\u5426\u73b0\u5728\u53bb\u4e0b\u8f7d\uff1f"
const-string/jumbo v2, "\u73b0\u5728\u4e0b\u8f7d"
const-string/jumbo v0, "\u4ee5\u540e\u518d\u8bf4"
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v5
invoke-static {v5}, Lcom/sina/weibo/sdk/utils/Utility;->isChineseLocale(Landroid/content/Context;)Z
move-result v5
if-nez v5, :cond_22
const-string/jumbo v4, "Notice"
const-string/jumbo v3, "Sina Weibo client is not installed, download now?"
const-string/jumbo v2, "Download Now"
const-string/jumbo v0, "Download Later"
:cond_22
new-instance v5, Landroid/app/AlertDialog$Builder;
invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v5
invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v5
new-instance v6, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$1;
invoke-direct {v6, p0}, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$1;-><init>(Landroid/content/Context;)V
invoke-virtual {v5, v2, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v5
new-instance v6, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$2;
invoke-direct {v6, p1}, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$2;-><init>(Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;)V
invoke-virtual {v5, v0, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v5
invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v1
return-object v1
.end method
.method private static downloadWeibo(Landroid/content/Context;)V
.registers 5
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
const-string/jumbo v3, "android.intent.action.VIEW"
invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const/high16 v3, 0x1000
invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
const-string/jumbo v3, "http://app.sina.cn/appdetail.php?appID=84560"
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
:try_start_1a
invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:goto_1d
:try_end_1d
.catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e
return-void
:catch_1e
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_1d
.end method