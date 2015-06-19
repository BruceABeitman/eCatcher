.class public Lcom/pinguo/share/website/WebSiteInfoBean;
.super Ljava/lang/Object;
.source "WebSiteInfoBean.java"
.field private activate:Z
.field private atable:Z
.field private avatar:Ljava/lang/String;
.field private binding:I
.field private expire_in:J
.field private isTrue:I
.field private loginUrl:Ljava/lang/String;
.field private message:Ljava/lang/String;
.field private nickName:Ljava/lang/String;
.field private offBitmap:Landroid/graphics/Bitmap;
.field private onBitmap:Landroid/graphics/Bitmap;
.field public final site_code:Ljava/lang/String;
.field public final site_name:Ljava/lang/String;
.field private site_url:Ljava/lang/String;
.field private sso:Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;
.field private status:I
.field private text:Ljava/lang/String;
.field private thirdFace:Ljava/lang/String;
.field private timespan:J
.field private token:Ljava/lang/String;
.field private uid:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_name:Ljava/lang/String;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
if-nez p1, :cond_9
move v1, v2
goto :goto_4
:cond_9
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_15
move v1, v2
goto :goto_4
:cond_15
move-object v0, p1
check-cast v0, Lcom/pinguo/share/website/WebSiteInfoBean;
iget-object v3, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
if-nez v3, :cond_22
iget-object v3, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
if-eqz v3, :cond_4
move v1, v2
goto :goto_4
:cond_22
iget-object v3, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
iget-object v4, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
move v1, v2
goto :goto_4
.end method
.method public getAvatar()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->avatar:Ljava/lang/String;
return-object v0
.end method
.method public getBinding()I
.registers 2
iget v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->binding:I
return v0
.end method
.method public getExpire_in()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->expire_in:J
return-wide v0
.end method
.method public getIsTrue()I
.registers 2
iget v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->isTrue:I
return v0
.end method
.method public getLoginUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->loginUrl:Ljava/lang/String;
return-object v0
.end method
.method public getMessage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->message:Ljava/lang/String;
return-object v0
.end method
.method public getNickName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->nickName:Ljava/lang/String;
return-object v0
.end method
.method public getOffBitmap()Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->offBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method public getOnBitmap()Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->onBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method public getSite_url()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_url:Ljava/lang/String;
return-object v0
.end method
.method public getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->sso:Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;
return-object v0
.end method
.method public getStatus()I
.registers 2
iget v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->status:I
return v0
.end method
.method public getText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->text:Ljava/lang/String;
return-object v0
.end method
.method public getThirdFace()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->thirdFace:Ljava/lang/String;
return-object v0
.end method
.method public getTimespan()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->timespan:J
return-wide v0
.end method
.method public getToken()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->token:Ljava/lang/String;
return-object v0
.end method
.method public getUid()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->uid:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 4
const/16 v0, 0x1f
const/4 v1, 0x1
iget-object v2, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
if-nez v2, :cond_b
const/4 v2, 0x0
:goto_8
add-int/lit8 v1, v2, 0x1f
return v1
:cond_b
iget-object v2, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
goto :goto_8
.end method
.method public isActivate()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->activate:Z
return v0
.end method
.method public isAtable()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->atable:Z
return v0
.end method
.method public isBindedWebSite()Z
.registers 2
invoke-virtual {p0}, Lcom/pinguo/share/website/WebSiteInfoBean;->getNickName()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public setActivate(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->activate:Z
return-void
.end method
.method public setAtable(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->atable:Z
return-void
.end method
.method public setAvatar(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->avatar:Ljava/lang/String;
return-void
.end method
.method public setBinding(I)V
.registers 2
iput p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->binding:I
return-void
.end method
.method public setExpire_in(J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->expire_in:J
return-void
.end method
.method public setIsTrue(I)V
.registers 2
iput p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->isTrue:I
return-void
.end method
.method public setLoginUrl(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->loginUrl:Ljava/lang/String;
return-void
.end method
.method public setMessage(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->message:Ljava/lang/String;
return-void
.end method
.method public setNickName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->nickName:Ljava/lang/String;
return-void
.end method
.method public setOffBitmap(Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->offBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method public setOnBitmap(Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->onBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method public setSite_url(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_url:Ljava/lang/String;
return-void
.end method
.method public setSso(Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->sso:Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;
return-void
.end method
.method public setStatus(I)V
.registers 2
iput p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->status:I
return-void
.end method
.method public setText(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->text:Ljava/lang/String;
return-void
.end method
.method public setThirdFace(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->thirdFace:Ljava/lang/String;
return-void
.end method
.method public setTimespan(J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->timespan:J
return-void
.end method
.method public setToken(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->token:Ljava/lang/String;
return-void
.end method
.method public setUid(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->uid:Ljava/lang/String;
return-void
.end method