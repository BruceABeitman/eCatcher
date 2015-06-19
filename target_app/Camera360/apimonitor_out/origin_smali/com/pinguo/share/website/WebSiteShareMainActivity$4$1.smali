.class Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;
.super Ljava/lang/Object;
.source "WebSiteShareMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$4;

.field private final synthetic val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;


# direct methods
.method constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$4;Lcom/pinguo/share/website/WebSiteInfoBean;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$4;

    iput-object p2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;)Lcom/pinguo/share/website/WebSiteShareMainActivity$4;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$4;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$4;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$4;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/share/ShareAccess;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    new-instance v1, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1$1;

    iget-object v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;

    invoke-direct {v1, p0, v2, v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1$1;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;Lcom/pinguo/share/website/WebSiteInfoBean;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1$1;->start()V

    :cond_1d
    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;

    iget-object v1, v1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-static {v1}, Lcom/pinguo/share/ShareAccess;->statShareSiteUnUse(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;

    iget-object v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$4;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v2}, Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$4;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/share/bind/BindManager;->clearWebSite(Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;)Z

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$4;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$4;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v1

    #calls: Lcom/pinguo/share/website/WebSiteShareMainActivity;->addAdapter()V
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$13(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;

    if-eqz v1, :cond_6f

    const-string/jumbo v1, "sina"

    iget-object v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;

    iget-object v2, v2, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$4;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$4;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v1

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mSinaAtUids:[Ljava/lang/String;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$19(Lcom/pinguo/share/website/WebSiteShareMainActivity;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$4;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$4;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v1

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mSinaAtUids:[Ljava/lang/String;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$19(Lcom/pinguo/share/website/WebSiteShareMainActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_6f

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$4;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$4;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v1

    #calls: Lcom/pinguo/share/website/WebSiteShareMainActivity;->showAtCount()V
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$14(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V

    :cond_6f
    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;

    if-eqz v1, :cond_a2

    const-string/jumbo v1, "qq"

    iget-object v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;

    iget-object v2, v2, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$4;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$4;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v1

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mTencentWeiboAtUids:[Ljava/lang/String;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$20(Lcom/pinguo/share/website/WebSiteShareMainActivity;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$4;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$4;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v1

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mTencentWeiboAtUids:[Ljava/lang/String;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$20(Lcom/pinguo/share/website/WebSiteShareMainActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_a2

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$4$1;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$4;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$4;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$4;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v1

    #calls: Lcom/pinguo/share/website/WebSiteShareMainActivity;->showAtCount()V
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$14(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V

    :cond_a2
    return-void
.end method
