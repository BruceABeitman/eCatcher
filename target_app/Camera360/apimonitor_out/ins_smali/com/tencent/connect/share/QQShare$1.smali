.class  Lcom/tencent/connect/share/QQShare$1;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Lcom/tencent/utils/AsynLoadImgBack;
.field final synthetic a:Landroid/os/Bundle;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Ljava/lang/String;
.field final synthetic d:Lcom/tencent/tauth/IUiListener;
.field final synthetic e:Landroid/app/Activity;
.field final synthetic f:Lcom/tencent/connect/share/QQShare;
.method constructor <init>(Lcom/tencent/connect/share/QQShare;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Landroid/app/Activity;)V
.registers 7
iput-object p1, p0, Lcom/tencent/connect/share/QQShare$1;->f:Lcom/tencent/connect/share/QQShare;
iput-object p2, p0, Lcom/tencent/connect/share/QQShare$1;->a:Landroid/os/Bundle;
iput-object p3, p0, Lcom/tencent/connect/share/QQShare$1;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/tencent/connect/share/QQShare$1;->c:Ljava/lang/String;
iput-object p5, p0, Lcom/tencent/connect/share/QQShare$1;->d:Lcom/tencent/tauth/IUiListener;
iput-object p6, p0, Lcom/tencent/connect/share/QQShare$1;->e:Landroid/app/Activity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public batchSaved(ILjava/util/ArrayList;)V
.registers 3
return-void
.end method
.method public saved(ILjava/lang/String;)V
.registers 8
if-nez p1, :cond_16
iget-object v0, p0, Lcom/tencent/connect/share/QQShare$1;->a:Landroid/os/Bundle;
const-string/jumbo v1, "imageLocalUrl"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_a
iget-object v0, p0, Lcom/tencent/connect/share/QQShare$1;->f:Lcom/tencent/connect/share/QQShare;
iget-object v1, p0, Lcom/tencent/connect/share/QQShare$1;->e:Landroid/app/Activity;
iget-object v2, p0, Lcom/tencent/connect/share/QQShare$1;->a:Landroid/os/Bundle;
iget-object v3, p0, Lcom/tencent/connect/share/QQShare$1;->d:Lcom/tencent/tauth/IUiListener;
invoke-static {v0, v1, v2, v3}, Lcom/tencent/connect/share/QQShare;->a(Lcom/tencent/connect/share/QQShare;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
:goto_15
:cond_15
return-void
:cond_16
iget-object v0, p0, Lcom/tencent/connect/share/QQShare$1;->b:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/tencent/connect/share/QQShare$1;->c:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/tencent/connect/share/QQShare$1;->d:Lcom/tencent/tauth/IUiListener;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/tencent/connect/share/QQShare$1;->d:Lcom/tencent/tauth/IUiListener;
new-instance v1, Lcom/tencent/tauth/UiError;
const/4 v2, -0x6
const-string/jumbo v3, "\u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25!"
const/4 v4, 0x0
invoke-direct {v1, v2, v3, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V
const-string/jumbo v0, "shareToQQ"
const-string/jumbo v1, "\u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25!"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_15
.end method