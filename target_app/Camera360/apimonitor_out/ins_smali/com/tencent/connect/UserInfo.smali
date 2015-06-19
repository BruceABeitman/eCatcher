.class public Lcom/tencent/connect/UserInfo;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"
.field public static final GRAPH_OPEN_ID:Ljava/lang/String; = "oauth2.0/m_me"
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/tencent/connect/common/BaseApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQAuth;Lcom/tencent/connect/auth/QQToken;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
return-void
.end method
.method public getOpenId(Lcom/tencent/tauth/IUiListener;)V
.registers 8
invoke-virtual {p0}, Lcom/tencent/connect/UserInfo;->composeCGIParams()Landroid/os/Bundle;
move-result-object v3
new-instance v5, Lcom/tencent/connect/common/BaseApi$TempRequestListener;
invoke-direct {v5, p0, p1}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V
iget-object v0, p0, Lcom/tencent/connect/UserInfo;->mToken:Lcom/tencent/connect/auth/QQToken;
iget-object v1, p0, Lcom/tencent/connect/UserInfo;->mContext:Landroid/content/Context;
const-string/jumbo v2, "oauth2.0/m_me"
const-string/jumbo v4, "GET"
invoke-static/range {v0 .. v5}, Lcom/tencent/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
return-void
.end method
.method public getTenPayAddr(Lcom/tencent/tauth/IUiListener;)V
.registers 8
invoke-virtual {p0}, Lcom/tencent/connect/UserInfo;->composeCGIParams()Landroid/os/Bundle;
move-result-object v3
const-string/jumbo v0, "ver"
const-string/jumbo v1, "1"
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v5, Lcom/tencent/connect/common/BaseApi$TempRequestListener;
invoke-direct {v5, p0, p1}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V
iget-object v0, p0, Lcom/tencent/connect/UserInfo;->mToken:Lcom/tencent/connect/auth/QQToken;
iget-object v1, p0, Lcom/tencent/connect/UserInfo;->mContext:Landroid/content/Context;
const-string/jumbo v2, "cft_info/get_tenpay_addr"
const-string/jumbo v4, "GET"
invoke-static/range {v0 .. v5}, Lcom/tencent/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
return-void
.end method
.method public getUserInfo(Lcom/tencent/tauth/IUiListener;)V
.registers 8
invoke-virtual {p0}, Lcom/tencent/connect/UserInfo;->composeCGIParams()Landroid/os/Bundle;
move-result-object v3
new-instance v5, Lcom/tencent/connect/common/BaseApi$TempRequestListener;
invoke-direct {v5, p0, p1}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V
iget-object v0, p0, Lcom/tencent/connect/UserInfo;->mToken:Lcom/tencent/connect/auth/QQToken;
iget-object v1, p0, Lcom/tencent/connect/UserInfo;->mContext:Landroid/content/Context;
const-string/jumbo v2, "user/get_simple_userinfo"
const-string/jumbo v4, "GET"
invoke-static/range {v0 .. v5}, Lcom/tencent/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
return-void
.end method
.method public getVipUserInfo(Lcom/tencent/tauth/IUiListener;)V
.registers 8
invoke-virtual {p0}, Lcom/tencent/connect/UserInfo;->composeCGIParams()Landroid/os/Bundle;
move-result-object v3
new-instance v5, Lcom/tencent/connect/common/BaseApi$TempRequestListener;
invoke-direct {v5, p0, p1}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V
iget-object v0, p0, Lcom/tencent/connect/UserInfo;->mToken:Lcom/tencent/connect/auth/QQToken;
iget-object v1, p0, Lcom/tencent/connect/UserInfo;->mContext:Landroid/content/Context;
const-string/jumbo v2, "user/get_vip_info"
const-string/jumbo v4, "GET"
invoke-static/range {v0 .. v5}, Lcom/tencent/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
return-void
.end method
.method public getVipUserRichInfo(Lcom/tencent/tauth/IUiListener;)V
.registers 8
invoke-virtual {p0}, Lcom/tencent/connect/UserInfo;->composeCGIParams()Landroid/os/Bundle;
move-result-object v3
new-instance v5, Lcom/tencent/connect/common/BaseApi$TempRequestListener;
invoke-direct {v5, p0, p1}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V
iget-object v0, p0, Lcom/tencent/connect/UserInfo;->mToken:Lcom/tencent/connect/auth/QQToken;
iget-object v1, p0, Lcom/tencent/connect/UserInfo;->mContext:Landroid/content/Context;
const-string/jumbo v2, "user/get_vip_rich_info"
const-string/jumbo v4, "GET"
invoke-static/range {v0 .. v5}, Lcom/tencent/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
return-void
.end method