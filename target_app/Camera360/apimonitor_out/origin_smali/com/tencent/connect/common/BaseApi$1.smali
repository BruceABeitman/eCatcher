.class Lcom/tencent/connect/common/BaseApi$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/common/BaseApi;->handleDownloadLastestQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/connect/common/BaseApi;

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Lcom/tencent/open/b;

.field final synthetic val$listener:Lcom/tencent/tauth/IUiListener;

.field final synthetic val$p:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/open/b;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Landroid/app/Activity;)V
    .registers 7

    iput-object p1, p0, Lcom/tencent/connect/common/BaseApi$1;->this$0:Lcom/tencent/connect/common/BaseApi;

    iput-object p2, p0, Lcom/tencent/connect/common/BaseApi$1;->val$dialog:Lcom/tencent/open/b;

    iput-object p3, p0, Lcom/tencent/connect/common/BaseApi$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/tencent/connect/common/BaseApi$1;->val$p:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/tencent/connect/common/BaseApi$1;->val$listener:Lcom/tencent/tauth/IUiListener;

    iput-object p6, p0, Lcom/tencent/connect/common/BaseApi$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$1;->val$dialog:Lcom/tencent/open/b;

    invoke-virtual {v0}, Lcom/tencent/open/b;->dismiss()V

    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$1;->this$0:Lcom/tencent/connect/common/BaseApi;

    iget-object v1, p0, Lcom/tencent/connect/common/BaseApi$1;->val$activity:Landroid/app/Activity;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "\u6b63\u5728\u83b7\u53d6\u4e0b\u8f7d\u5730\u5740..."

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/connect/common/BaseApi;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$1;->val$p:Landroid/os/Bundle;

    const-string/jumbo v1, "getinfo_mask"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/tencent/open/g;

    new-instance v0, Lcom/tencent/connect/common/BaseApi$1$1;

    invoke-direct {v0, p0}, Lcom/tencent/connect/common/BaseApi$1$1;-><init>(Lcom/tencent/connect/common/BaseApi$1;)V

    invoke-direct {v5, v0}, Lcom/tencent/open/g;-><init>(Lcom/tencent/tauth/IUiListener;)V

    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$1;->val$p:Landroid/os/Bundle;

    const-string/jumbo v1, "appid"

    const-string/jumbo v2, "100686848"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$1;->this$0:Lcom/tencent/connect/common/BaseApi;

    iget-object v0, v0, Lcom/tencent/connect/common/BaseApi;->mToken:Lcom/tencent/connect/auth/QQToken;

    iget-object v1, p0, Lcom/tencent/connect/common/BaseApi$1;->this$0:Lcom/tencent/connect/common/BaseApi;

    iget-object v1, v1, Lcom/tencent/connect/common/BaseApi;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/utils/ServerSetting;->getInstance()Lcom/tencent/utils/ServerSetting;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/connect/common/BaseApi$1;->val$a:Landroid/app/Activity;

    const-string/jumbo v4, "http://fusion.qq.com/cgi-bin/qzapps/mapp_getappinfo.cgi"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/connect/common/BaseApi$1;->val$p:Landroid/os/Bundle;

    const-string/jumbo v4, "GET"

    invoke-static/range {v0 .. v5}, Lcom/tencent/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    return-void
.end method
