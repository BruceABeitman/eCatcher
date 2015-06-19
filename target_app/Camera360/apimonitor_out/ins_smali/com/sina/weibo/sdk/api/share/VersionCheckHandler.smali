.class public Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;
.super Ljava/lang/Object;
.source "VersionCheckHandler.java"
.implements Lcom/sina/weibo/sdk/api/share/IVersionCheckHandler;
.field private static final TAG:Ljava/lang/String; = "VersionCheckHandler"
.field private mPackageName:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->mPackageName:Ljava/lang/String;
return-void
.end method
.method public check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/WeiboMessage;)Z
.registers 9
const/4 v5, 0x0
const/4 v1, 0x0
const-string/jumbo v2, "VersionCheckHandler"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "check WeiboMessage package : "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->mPackageName:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->mPackageName:Ljava/lang/String;
if-eqz v2, :cond_26
iget-object v2, p0, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->mPackageName:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_27
:cond_26
:goto_26
return v1
:cond_27
iget-object v2, p0, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->mPackageName:Ljava/lang/String;
invoke-static {p1, v2}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->queryWeiboInfoByPackage(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;
move-result-object v0
if-eqz v0, :cond_26
const-string/jumbo v1, "VersionCheckHandler"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "check WeiboMessage WeiboInfo supportApi : "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, v0, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->supportApi:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
iget v1, v0, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->supportApi:I
const/16 v2, 0x286f
if-ge v1, v2, :cond_59
iget-object v1, p2, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
if-eqz v1, :cond_59
iget-object v1, p2, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
instance-of v1, v1, Lcom/sina/weibo/sdk/api/VoiceObject;
if-eqz v1, :cond_59
iput-object v5, p2, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
:cond_59
iget v1, v0, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->supportApi:I
const/16 v2, 0x2870
if-ge v1, v2, :cond_6b
iget-object v1, p2, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
if-eqz v1, :cond_6b
iget-object v1, p2, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
instance-of v1, v1, Lcom/sina/weibo/sdk/api/CmdObject;
if-eqz v1, :cond_6b
iput-object v5, p2, Lcom/sina/weibo/sdk/api/WeiboMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
:cond_6b
const/4 v1, 0x1
goto :goto_26
.end method
.method public check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Z
.registers 8
const/4 v1, 0x0
const-string/jumbo v2, "VersionCheckHandler"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "check WeiboMultiMessage package : "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->mPackageName:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->mPackageName:Ljava/lang/String;
if-eqz v2, :cond_25
iget-object v2, p0, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->mPackageName:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_26
:goto_25
:cond_25
return v1
:cond_26
iget-object v2, p0, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->mPackageName:Ljava/lang/String;
invoke-static {p1, v2}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->queryWeiboInfoByPackage(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;
move-result-object v0
if-eqz v0, :cond_25
const-string/jumbo v2, "VersionCheckHandler"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "check WeiboMultiMessage WeiboInfo supportApi : "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v4, v0, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->supportApi:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
iget v2, v0, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->supportApi:I
const/16 v3, 0x286f
if-lt v2, v3, :cond_25
iget v1, v0, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->supportApi:I
const/16 v2, 0x2870
if-ge v1, v2, :cond_5f
iget-object v1, p2, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
if-eqz v1, :cond_5f
iget-object v1, p2, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
instance-of v1, v1, Lcom/sina/weibo/sdk/api/CmdObject;
if-eqz v1, :cond_5f
const/4 v1, 0x0
iput-object v1, p2, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
:cond_5f
const/4 v1, 0x1
goto :goto_25
.end method
.method public setPackageName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->mPackageName:Ljava/lang/String;
return-void
.end method