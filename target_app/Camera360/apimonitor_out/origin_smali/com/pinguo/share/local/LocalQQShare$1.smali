.class Lcom/pinguo/share/local/LocalQQShare$1;
.super Ljava/lang/Object;
.source "LocalQQShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/local/LocalQQShare;->sharePicture(Landroid/app/Activity;Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/local/LocalQQShare;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$callback:Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;

.field private final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/pinguo/share/local/LocalQQShare;Landroid/app/Activity;Landroid/os/Bundle;Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;)V
    .registers 5

    iput-object p1, p0, Lcom/pinguo/share/local/LocalQQShare$1;->this$0:Lcom/pinguo/share/local/LocalQQShare;

    iput-object p2, p0, Lcom/pinguo/share/local/LocalQQShare$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/pinguo/share/local/LocalQQShare$1;->val$params:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/pinguo/share/local/LocalQQShare$1;->val$callback:Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/share/local/LocalQQShare$1;->this$0:Lcom/pinguo/share/local/LocalQQShare;

    #getter for: Lcom/pinguo/share/local/LocalQQShare;->mQQShare:Lcom/tencent/connect/share/QQShare;
    invoke-static {v0}, Lcom/pinguo/share/local/LocalQQShare;->access$0(Lcom/pinguo/share/local/LocalQQShare;)Lcom/tencent/connect/share/QQShare;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/share/local/LocalQQShare$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/pinguo/share/local/LocalQQShare$1;->val$params:Landroid/os/Bundle;

    new-instance v3, Lcom/pinguo/share/local/LocalQQShare$1$1;

    iget-object v4, p0, Lcom/pinguo/share/local/LocalQQShare$1;->val$callback:Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;

    invoke-direct {v3, p0, v4}, Lcom/pinguo/share/local/LocalQQShare$1$1;-><init>(Lcom/pinguo/share/local/LocalQQShare$1;Lcom/pinguo/share/local/LocalQQShare$IQQShareCallback;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/connect/share/QQShare;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method
