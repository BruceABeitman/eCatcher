.class Lcom/pinguo/share/bind/BindActivity$2$1;
.super Ljava/lang/Object;
.source "BindActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/bind/BindActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/share/bind/BindActivity$2;

.field private final synthetic val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;


# direct methods
.method constructor <init>(Lcom/pinguo/share/bind/BindActivity$2;Lcom/pinguo/share/website/WebSiteInfoBean;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/share/bind/BindActivity$2$1;->this$1:Lcom/pinguo/share/bind/BindActivity$2;

    iput-object p2, p0, Lcom/pinguo/share/bind/BindActivity$2$1;->val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/share/bind/BindActivity$2$1;)Lcom/pinguo/share/bind/BindActivity$2;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$2$1;->this$1:Lcom/pinguo/share/bind/BindActivity$2;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/share/bind/BindActivity$2$1;->this$1:Lcom/pinguo/share/bind/BindActivity$2;

    #getter for: Lcom/pinguo/share/bind/BindActivity$2;->this$0:Lcom/pinguo/share/bind/BindActivity;
    invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity$2;->access$0(Lcom/pinguo/share/bind/BindActivity$2;)Lcom/pinguo/share/bind/BindActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/share/ShareAccess;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    new-instance v1, Lcom/pinguo/share/bind/BindActivity$2$1$1;

    iget-object v2, p0, Lcom/pinguo/share/bind/BindActivity$2$1;->val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;

    invoke-direct {v1, p0, v2, v0}, Lcom/pinguo/share/bind/BindActivity$2$1$1;-><init>(Lcom/pinguo/share/bind/BindActivity$2$1;Lcom/pinguo/share/website/WebSiteInfoBean;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/pinguo/share/bind/BindActivity$2$1$1;->start()V

    :cond_1f
    iget-object v1, p0, Lcom/pinguo/share/bind/BindActivity$2$1;->val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;

    iget-object v1, v1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-static {v1}, Lcom/pinguo/share/ShareAccess;->statShareSiteUnUse(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/share/bind/BindActivity$2$1;->val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;

    iget-object v2, p0, Lcom/pinguo/share/bind/BindActivity$2$1;->this$1:Lcom/pinguo/share/bind/BindActivity$2;

    #getter for: Lcom/pinguo/share/bind/BindActivity$2;->this$0:Lcom/pinguo/share/bind/BindActivity;
    invoke-static {v2}, Lcom/pinguo/share/bind/BindActivity$2;->access$0(Lcom/pinguo/share/bind/BindActivity$2;)Lcom/pinguo/share/bind/BindActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/share/bind/BindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/share/bind/BindManager;->clearWebSite(Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;)Z

    iget-object v1, p0, Lcom/pinguo/share/bind/BindActivity$2$1;->this$1:Lcom/pinguo/share/bind/BindActivity$2;

    #getter for: Lcom/pinguo/share/bind/BindActivity$2;->this$0:Lcom/pinguo/share/bind/BindActivity;
    invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity$2;->access$0(Lcom/pinguo/share/bind/BindActivity$2;)Lcom/pinguo/share/bind/BindActivity;

    move-result-object v1

    #getter for: Lcom/pinguo/share/bind/BindActivity;->mBaseAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$3(Lcom/pinguo/share/bind/BindActivity;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
