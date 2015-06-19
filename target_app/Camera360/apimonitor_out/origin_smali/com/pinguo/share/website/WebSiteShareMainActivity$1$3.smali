.class Lcom/pinguo/share/website/WebSiteShareMainActivity$1$3;
.super Ljava/lang/Object;
.source "WebSiteShareMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;

.field private final synthetic val$isFirstShareSuccess:Z

.field private final synthetic val$reShareList:Ljava/util/List;

.field private final synthetic val$successList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;ZLjava/util/List;Ljava/util/List;)V
    .registers 5

    iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$3;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;

    iput-boolean p2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$3;->val$isFirstShareSuccess:Z

    iput-object p3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$3;->val$successList:Ljava/util/List;

    iput-object p4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$3;->val$reShareList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$3;->val$isFirstShareSuccess:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$3;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v0

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$4(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/share/bind/BindSharedPreferences;->isSelectedBind(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$3;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$3;->val$successList:Ljava/util/List;

    #calls: Lcom/pinguo/share/website/WebSiteShareMainActivity;->setAttention(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$5(Lcom/pinguo/share/website/WebSiteShareMainActivity;Ljava/util/List;)V

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$3;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v0

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShare:Lcom/pinguo/share/website/WebShareModel;
    invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$6(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/website/WebShareModel;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$3;->val$reShareList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/pinguo/share/website/WebShareModel;->reStartShare(Ljava/util/List;)V

    :goto_2e
    return-void

    :cond_2f
    iget-boolean v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$3;->val$isFirstShareSuccess:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$3;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pinguo/share/bind/BindSharedPreferences;->saveSelectedBind(Landroid/content/Context;Z)V

    :cond_41
    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$3;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v0

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShare:Lcom/pinguo/share/website/WebShareModel;
    invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$6(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Lcom/pinguo/share/website/WebShareModel;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$3;->val$reShareList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/pinguo/share/website/WebShareModel;->reStartShare(Ljava/util/List;)V

    goto :goto_2e
.end method
