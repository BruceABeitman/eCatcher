.class Lcom/sina/weibo/sdk/auth/WeiboDialog$1;
.super Ljava/lang/Object;
.source "WeiboDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/auth/WeiboDialog;->initCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/auth/WeiboDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->dismiss()V

    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    #getter for: Lcom/sina/weibo/sdk/auth/WeiboDialog;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->access$0(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    #getter for: Lcom/sina/weibo/sdk/auth/WeiboDialog;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->access$0(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onCancel()V

    :cond_16
    return-void
.end method
