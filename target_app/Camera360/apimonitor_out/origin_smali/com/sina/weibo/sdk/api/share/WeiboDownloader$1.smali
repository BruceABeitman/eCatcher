.class Lcom/sina/weibo/sdk/api/share/WeiboDownloader$1;
.super Ljava/lang/Object;
.source "WeiboDownloader.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/api/share/WeiboDownloader;->createDownloadConfirmDialog(Landroid/content/Context;Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$1;->val$context:Landroid/content/Context;

    #calls: Lcom/sina/weibo/sdk/api/share/WeiboDownloader;->downloadWeibo(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/sina/weibo/sdk/api/share/WeiboDownloader;->access$0(Landroid/content/Context;)V

    return-void
.end method
