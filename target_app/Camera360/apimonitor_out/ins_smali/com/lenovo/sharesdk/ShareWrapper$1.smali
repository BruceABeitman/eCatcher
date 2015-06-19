.class  Lcom/lenovo/sharesdk/ShareWrapper$1;
.super Ljava/lang/Object;
.source "ShareWrapper.java"
.implements Lcom/lenovo/channel/base/IUserListener;
.field final synthetic a:Lcom/lenovo/sharesdk/ShareWrapper;
.method constructor <init>(Lcom/lenovo/sharesdk/ShareWrapper;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/sharesdk/ShareWrapper$1;->a:Lcom/lenovo/sharesdk/ShareWrapper;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onLocalUserChanged(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
.registers 3
return-void
.end method
.method public onRemoteUserChanged(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
.registers 8
const/4 v3, 0x0
sget-object v2, Lcom/lenovo/channel/base/IUserListener$UserEventType;->ONLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;
if-ne p1, v2, :cond_37
iget-object v2, p0, Lcom/lenovo/sharesdk/ShareWrapper$1;->a:Lcom/lenovo/sharesdk/ShareWrapper;
invoke-static {v2}, Lcom/lenovo/sharesdk/ShareWrapper;->a(Lcom/lenovo/sharesdk/ShareWrapper;)Lcom/lenovo/anyshare/sdk/internal/cj;
move-result-object v2
invoke-virtual {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/cj;->b(Z)V
iget-object v2, p0, Lcom/lenovo/sharesdk/ShareWrapper$1;->a:Lcom/lenovo/sharesdk/ShareWrapper;
invoke-static {v2}, Lcom/lenovo/sharesdk/ShareWrapper;->a(Lcom/lenovo/sharesdk/ShareWrapper;)Lcom/lenovo/anyshare/sdk/internal/cj;
move-result-object v2
invoke-virtual {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Z)V
iget-object v2, p0, Lcom/lenovo/sharesdk/ShareWrapper$1;->a:Lcom/lenovo/sharesdk/ShareWrapper;
invoke-static {v2}, Lcom/lenovo/sharesdk/ShareWrapper;->a(Lcom/lenovo/sharesdk/ShareWrapper;)Lcom/lenovo/anyshare/sdk/internal/cj;
move-result-object v2
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/cj;->o()Lcom/lenovo/anyshare/sdk/internal/cd;
move-result-object v1
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/cd;->c:Lcom/lenovo/anyshare/sdk/internal/cd;
if-ne v1, v2, :cond_38
const-string/jumbo v0, "EnabledApServerModel"
:goto_28
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v2
iget-object v3, p0, Lcom/lenovo/sharesdk/ShareWrapper$1;->a:Lcom/lenovo/sharesdk/ShareWrapper;
invoke-static {v3}, Lcom/lenovo/sharesdk/ShareWrapper;->b(Lcom/lenovo/sharesdk/ShareWrapper;)Landroid/content/Context;
move-result-object v3
sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v2, v3, v0, v4}, Lcom/lenovo/anyshare/sdk/internal/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
:cond_37
return-void
:cond_38
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/cd;->b:Lcom/lenovo/anyshare/sdk/internal/cd;
if-ne v1, v2, :cond_37
const-string/jumbo v0, "EnabledApClientModel"
goto :goto_28
.end method