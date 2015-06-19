.class  Lco/vine/android/ExploreChannelsActivity$ExploreChannelsAppSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "ExploreChannelsActivity.java"
.field final synthetic this$0:Lco/vine/android/ExploreChannelsActivity;
.method constructor <init>(Lco/vine/android/ExploreChannelsActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/ExploreChannelsActivity$ExploreChannelsAppSessionListener;->this$0:Lco/vine/android/ExploreChannelsActivity;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method public onGetChannelsComplete(Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)V
.registers 12
const/16 v5, 0xc8
if-ne p2, v5, :cond_47
iget-object v5, p0, Lco/vine/android/ExploreChannelsActivity$ExploreChannelsAppSessionListener;->this$0:Lco/vine/android/ExploreChannelsActivity;
#getter for: Lco/vine/android/ExploreChannelsActivity;->mChannelId:Ljava/lang/String;
invoke-static {v5}, Lco/vine/android/ExploreChannelsActivity;->access$200(Lco/vine/android/ExploreChannelsActivity;)Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-nez v5, :cond_47
iget-object v5, p0, Lco/vine/android/ExploreChannelsActivity$ExploreChannelsAppSessionListener;->this$0:Lco/vine/android/ExploreChannelsActivity;
#getter for: Lco/vine/android/ExploreChannelsActivity;->mChannelId:Ljava/lang/String;
invoke-static {v5}, Lco/vine/android/ExploreChannelsActivity;->access$200(Lco/vine/android/ExploreChannelsActivity;)Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
move-result-wide v1
invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_22
:goto_22
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_47
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/api/VineChannel;
iget-wide v5, v0, Lco/vine/android/api/VineChannel;->channelId:J
cmp-long v5, v1, v5
if-nez v5, :cond_22
iget-object v5, p0, Lco/vine/android/ExploreChannelsActivity$ExploreChannelsAppSessionListener;->this$0:Lco/vine/android/ExploreChannelsActivity;
invoke-static {v5}, Lco/vine/android/util/Util;->isHighRes(Landroid/content/Context;)Z
move-result v4
iget-object v6, p0, Lco/vine/android/ExploreChannelsActivity$ExploreChannelsAppSessionListener;->this$0:Lco/vine/android/ExploreChannelsActivity;
if-eqz v4, :cond_44
iget-object v5, v0, Lco/vine/android/api/VineChannel;->retinaIconFullUrl:Ljava/lang/String;
:goto_40
#calls: Lco/vine/android/ExploreChannelsActivity;->setIconImage(Ljava/lang/String;)V
invoke-static {v6, v5}, Lco/vine/android/ExploreChannelsActivity;->access$300(Lco/vine/android/ExploreChannelsActivity;Ljava/lang/String;)V
goto :goto_22
:cond_44
iget-object v5, v0, Lco/vine/android/api/VineChannel;->iconFullUrl:Ljava/lang/String;
goto :goto_40
:cond_47
return-void
.end method
.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
.registers 5
invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z
move-result v1
if-nez v1, :cond_2d
iget-object v1, p0, Lco/vine/android/ExploreChannelsActivity$ExploreChannelsAppSessionListener;->this$0:Lco/vine/android/ExploreChannelsActivity;
#getter for: Lco/vine/android/ExploreChannelsActivity;->mIconImageKey:Lco/vine/android/util/image/ImageKey;
invoke-static {v1}, Lco/vine/android/ExploreChannelsActivity;->access$000(Lco/vine/android/ExploreChannelsActivity;)Lco/vine/android/util/image/ImageKey;
move-result-object v1
if-eqz v1, :cond_2d
iget-object v1, p0, Lco/vine/android/ExploreChannelsActivity$ExploreChannelsAppSessionListener;->this$0:Lco/vine/android/ExploreChannelsActivity;
#getter for: Lco/vine/android/ExploreChannelsActivity;->mIconImageKey:Lco/vine/android/util/image/ImageKey;
invoke-static {v1}, Lco/vine/android/ExploreChannelsActivity;->access$000(Lco/vine/android/ExploreChannelsActivity;)Lco/vine/android/util/image/ImageKey;
move-result-object v1
invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/util/image/UrlImage;
if-eqz v0, :cond_2d
invoke-virtual {v0}, Lco/vine/android/util/image/UrlImage;->isValid()Z
move-result v1
if-eqz v1, :cond_2d
iget-object v1, v0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;
if-eqz v1, :cond_2d
iget-object v1, p0, Lco/vine/android/ExploreChannelsActivity$ExploreChannelsAppSessionListener;->this$0:Lco/vine/android/ExploreChannelsActivity;
iget-object v2, v0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;
#calls: Lco/vine/android/ExploreChannelsActivity;->setIconImage(Landroid/graphics/Bitmap;)V
invoke-static {v1, v2}, Lco/vine/android/ExploreChannelsActivity;->access$100(Lco/vine/android/ExploreChannelsActivity;Landroid/graphics/Bitmap;)V
:cond_2d
return-void
.end method