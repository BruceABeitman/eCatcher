.class Lcom/pinguo/share/website/WebSiteShareMainActivity$5$3;
.super Ljava/lang/Object;
.source "WebSiteShareMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->showDialog(Lcom/pinguo/share/website/WebShareBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$5;


# direct methods
.method constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$5;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$3;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_34

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$3;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$5;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$5;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$3;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$5;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$5;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;

    invoke-virtual {v1}, Lcom/pinguo/share/ui/ShareProcessBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$3;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$5;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$5;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;

    invoke-virtual {v1}, Lcom/pinguo/share/ui/ShareProcessBar;->dismiss()V

    :cond_27
    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$3;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$5;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$5;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v1

    #setter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->isShowDialog:Z
    invoke-static {v1, v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$22(Lcom/pinguo/share/website/WebSiteShareMainActivity;Z)V

    invoke-static {}, Lcom/pinguo/share/net/NetConnection;->quitFile()V

    const/4 v0, 0x1

    :cond_34
    return v0
.end method
