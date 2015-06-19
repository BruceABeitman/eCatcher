.class public Lcom/pinguo/share/website/ShareResultBean;
.super Ljava/lang/Object;
.source "ShareResultBean.java"
.field private isReBind:Z
.field private isSuccess:Z
.field private mExpiredTime:J
.field private mIsRefresh:Z
.field private mRefreshToken:Ljava/lang/String;
.field private message:Ljava/lang/String;
.field private wsib:Lcom/pinguo/share/website/WebSiteInfoBean;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/share/website/ShareResultBean;->mIsRefresh:Z
return-void
.end method
.method public getExpiredTime()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/share/website/ShareResultBean;->mExpiredTime:J
return-wide v0
.end method
.method public getMessage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/ShareResultBean;->message:Ljava/lang/String;
return-object v0
.end method
.method public getRefreshToken()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/ShareResultBean;->mRefreshToken:Ljava/lang/String;
return-object v0
.end method
.method public getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/website/ShareResultBean;->wsib:Lcom/pinguo/share/website/WebSiteInfoBean;
return-object v0
.end method
.method public isReBind()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/share/website/ShareResultBean;->isReBind:Z
return v0
.end method
.method public isRefresh()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/share/website/ShareResultBean;->mIsRefresh:Z
return v0
.end method
.method public isSuccess()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/share/website/ShareResultBean;->isSuccess:Z
return v0
.end method
.method public setExpiredTime(J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/share/website/ShareResultBean;->mExpiredTime:J
return-void
.end method
.method public setIsRefresh(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/share/website/ShareResultBean;->mIsRefresh:Z
return-void
.end method
.method public setMessage(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/ShareResultBean;->message:Ljava/lang/String;
return-void
.end method
.method public setReBind(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/share/website/ShareResultBean;->isReBind:Z
return-void
.end method
.method public setRefreshToken(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/ShareResultBean;->mRefreshToken:Ljava/lang/String;
return-void
.end method
.method public setSuccess(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/share/website/ShareResultBean;->isSuccess:Z
return-void
.end method
.method public setWsib(Lcom/pinguo/share/website/WebSiteInfoBean;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/ShareResultBean;->wsib:Lcom/pinguo/share/website/WebSiteInfoBean;
return-void
.end method