.class Lcom/pinguo/share/website/WebSiteShareMainActivity$5$2;
.super Ljava/lang/Object;
.source "WebSiteShareMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->noActive()V
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

    iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$2;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$2;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$5;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$5;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$2;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$5;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$5;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v1

    const v2, 0x7f080074

    invoke-virtual {v1, v2}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/share/ShareAccess;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
