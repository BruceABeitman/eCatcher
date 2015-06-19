.class Lcom/pinguo/share/website/WebSiteShareMainActivity$1$6;
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


# direct methods
.method constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$6;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$6;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
    invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)Lcom/pinguo/share/website/WebSiteShareMainActivity;

    move-result-object v0

    #calls: Lcom/pinguo/share/website/WebSiteShareMainActivity;->goToBind()V
    invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$9(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V

    return-void
.end method
