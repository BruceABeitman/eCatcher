.class  Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;
.super Ljava/lang/Object;
.source "BaseAPI.java"
.implements Lcom/tencent/weibo/sdk/android/network/HttpCallback;
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onResult(Ljava/lang/Object;)V
.registers 19
const-string/jumbo v1, "sss"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p1
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
if-eqz p1, :cond_168
move-object/from16 v15, p1
check-cast v15, Lcom/tencent/weibo/sdk/android/model/ModelResult;
invoke-virtual {v15}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->getObj()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "&"
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v13
const/4 v1, 0x0
aget-object v1, v13, v1
const-string/jumbo v2, "="
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
aget-object v8, v1, v2
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#setter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mAccessToken:Ljava/lang/String;
invoke-static {v1, v8}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$0(Lcom/tencent/weibo/sdk/android/api/BaseAPI;Ljava/lang/String;)V
const/4 v1, 0x1
aget-object v1, v13, v1
const-string/jumbo v2, "="
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
aget-object v9, v1, v2
const/4 v1, 0x2
aget-object v1, v13, v1
const-string/jumbo v2, "="
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
aget-object v14, v1, v2
const/4 v1, 0x3
aget-object v1, v13, v1
const-string/jumbo v2, "="
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
aget-object v12, v1, v2
const/4 v1, 0x4
aget-object v1, v13, v1
const-string/jumbo v2, "="
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
aget-object v10, v1, v2
const/4 v1, 0x5
aget-object v1, v13, v1
const-string/jumbo v2, "="
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
aget-object v11, v1, v2
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$1(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "ACCESS_TOKEN"
invoke-static {v1, v2, v8}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$1(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "EXPIRES_IN"
invoke-static {v1, v2, v9}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$1(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "OPEN_ID"
invoke-static {v1, v2, v12}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$1(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "REFRESH_TOKEN"
invoke-static {v1, v2, v14}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$1(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "NAME"
invoke-static {v1, v2, v10}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$1(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "NICK"
invoke-static {v1, v2, v11}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$1(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "AUTHORIZETIME"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
const-wide/16 v5, 0x3e8
div-long/2addr v3, v5
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
move-object/from16 v16, v0
new-instance v1, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$1(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Landroid/content/Context;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mRequestUrl:Ljava/lang/String;
invoke-static {v3}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$2(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p0
iget-object v4, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mmCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;
invoke-static {v4}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$3(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Lcom/tencent/weibo/sdk/android/network/HttpCallback;
move-result-object v4
move-object/from16 v0, p0
iget-object v5, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mmTargetClass:Ljava/lang/Class;
invoke-static {v5}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$4(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Ljava/lang/Class;
move-result-object v5
move-object/from16 v0, p0
iget-object v6, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mRequestMethod:Ljava/lang/String;
invoke-static {v6}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$5(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Ljava/lang/String;
move-result-object v6
move-object/from16 v0, p0
iget-object v7, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mResultType:I
invoke-static {v7}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$6(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)I
move-result v7
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-direct/range {v1 .. v7}, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Integer;)V
move-object/from16 v0, v16
#setter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->weibo:Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
invoke-static {v0, v1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$7(Lcom/tencent/weibo/sdk/android/api/BaseAPI;Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mParams:Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$8(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Lcom/tencent/weibo/sdk/android/network/ReqParam;
move-result-object v1
const-string/jumbo v2, "access_token"
move-object/from16 v0, p0
iget-object v3, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mAccessToken:Ljava/lang/String;
invoke-static {v3}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$9(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->weibo:Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$10(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
move-result-object v1
move-object/from16 v0, p0
iget-object v2, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->mParams:Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$8(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Lcom/tencent/weibo/sdk/android/network/ReqParam;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->setParam(Lcom/tencent/weibo/sdk/android/network/ReqParam;)V
invoke-static {}, Lcom/tencent/weibo/sdk/android/network/HttpService;->getInstance()Lcom/tencent/weibo/sdk/android/network/HttpService;
move-result-object v1
move-object/from16 v0, p0
iget-object v2, v0, Lcom/tencent/weibo/sdk/android/api/BaseAPI$1;->this$0:Lcom/tencent/weibo/sdk/android/api/BaseAPI;
#getter for: Lcom/tencent/weibo/sdk/android/api/BaseAPI;->weibo:Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;->access$10(Lcom/tencent/weibo/sdk/android/api/BaseAPI;)Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/tencent/weibo/sdk/android/network/HttpService;->addImmediateReq(Lcom/tencent/weibo/sdk/android/network/HttpReq;)V
:cond_168
return-void
.end method