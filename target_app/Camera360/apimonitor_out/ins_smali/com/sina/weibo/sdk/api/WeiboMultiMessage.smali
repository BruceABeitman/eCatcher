.class public final Lcom/sina/weibo/sdk/api/WeiboMultiMessage;
.super Ljava/lang/Object;
.source "WeiboMultiMessage.java"
.field private static final TAG:Ljava/lang/String; = "WeiboMultiMessage"
.field public imageObject:Lcom/sina/weibo/sdk/api/ImageObject;
.field public mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
.field public textObject:Lcom/sina/weibo/sdk/api/TextObject;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/os/Bundle;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
return-void
.end method
.method public checkArgs()Z
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;
invoke-virtual {v1}, Lcom/sina/weibo/sdk/api/TextObject;->checkArgs()Z
move-result v1
if-nez v1, :cond_17
const-string/jumbo v1, "WeiboMultiMessage"
const-string/jumbo v2, "checkArgs fail, textObject is invalid"
invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_16
return v0
:cond_17
iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;
if-eqz v1, :cond_2d
iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;
invoke-virtual {v1}, Lcom/sina/weibo/sdk/api/ImageObject;->checkArgs()Z
move-result v1
if-nez v1, :cond_2d
const-string/jumbo v1, "WeiboMultiMessage"
const-string/jumbo v2, "checkArgs fail, imageObject is invalid"
invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_16
:cond_2d
iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
if-eqz v1, :cond_43
iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
invoke-virtual {v1}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->checkArgs()Z
move-result v1
if-nez v1, :cond_43
const-string/jumbo v1, "WeiboMultiMessage"
const-string/jumbo v2, "checkArgs fail, mediaObject is invalid"
invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_16
:cond_43
iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;
if-nez v1, :cond_59
iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;
if-nez v1, :cond_59
iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
if-nez v1, :cond_59
const-string/jumbo v1, "WeiboMultiMessage"
const-string/jumbo v2, "checkArgs fail, textObject and imageObject and mediaObject is null"
invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_16
:cond_59
const/4 v0, 0x1
goto :goto_16
.end method
.method public toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
.registers 4
iget-object v0, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;
if-eqz v0, :cond_18
const-string/jumbo v0, "_weibo_message_text"
iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string/jumbo v0, "_weibo_message_text_extra"
iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;
invoke-virtual {v1}, Lcom/sina/weibo/sdk/api/TextObject;->toExtraMediaString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_18
iget-object v0, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;
if-eqz v0, :cond_30
const-string/jumbo v0, "_weibo_message_image"
iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string/jumbo v0, "_weibo_message_image_extra"
iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;
invoke-virtual {v1}, Lcom/sina/weibo/sdk/api/ImageObject;->toExtraMediaString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_30
iget-object v0, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
if-eqz v0, :cond_48
const-string/jumbo v0, "_weibo_message_media"
iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string/jumbo v0, "_weibo_message_media_extra"
iget-object v1, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
invoke-virtual {v1}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->toExtraMediaString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_48
return-object p1
.end method
.method public toObject(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/api/WeiboMultiMessage;
.registers 4
const-string/jumbo v0, "_weibo_message_text"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/sina/weibo/sdk/api/TextObject;
iput-object v0, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;
iget-object v0, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;
const-string/jumbo v1, "_weibo_message_text_extra"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/TextObject;->toExtraMediaObject(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;
:cond_1b
const-string/jumbo v0, "_weibo_message_image"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/sina/weibo/sdk/api/ImageObject;
iput-object v0, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;
iget-object v0, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;
const-string/jumbo v1, "_weibo_message_image_extra"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/ImageObject;->toExtraMediaObject(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;
:cond_36
const-string/jumbo v0, "_weibo_message_media"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/sina/weibo/sdk/api/BaseMediaObject;
iput-object v0, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
iget-object v0, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
if-eqz v0, :cond_51
iget-object v0, p0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;
const-string/jumbo v1, "_weibo_message_media_extra"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->toExtraMediaObject(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;
:cond_51
return-object p0
.end method