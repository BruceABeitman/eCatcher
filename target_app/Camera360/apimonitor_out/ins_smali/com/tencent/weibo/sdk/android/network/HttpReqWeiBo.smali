.class public Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;
.super Lcom/tencent/weibo/sdk/android/network/HttpReq;
.source "HttpReqWeiBo.java"
.field private mContext:Landroid/content/Context;
.field private mResultType:Ljava/lang/Integer;
.field private mTargetClass:Ljava/lang/Class;
.field private mTargetClass2:Ljava/lang/Class;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Integer;)V
.registers 8
invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/network/HttpReq;-><init>()V
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mResultType:Ljava/lang/Integer;
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mContext:Landroid/content/Context;
const-string/jumbo v0, "192.168.1.100"
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mHost:Ljava/lang/String;
const/16 v0, 0x1f98
iput v0, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mPort:I
iput-object p2, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mUrl:Ljava/lang/String;
iput-object p3, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mCallBack:Lcom/tencent/weibo/sdk/android/network/HttpCallback;
iput-object p4, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mTargetClass:Ljava/lang/Class;
iput-object p6, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mResultType:Ljava/lang/Integer;
iput-object p5, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mMethod:Ljava/lang/String;
return-void
.end method
.method protected processResponse(Ljava/io/InputStream;)Ljava/lang/Object;
.registers 26
new-instance v15, Lcom/tencent/weibo/sdk/android/model/ModelResult;
invoke-direct {v15}, Lcom/tencent/weibo/sdk/android/model/ModelResult;-><init>()V
if-eqz p1, :cond_5d
move-object/from16 v9, p1
new-instance v8, Ljava/io/InputStreamReader;
invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
new-instance v5, Ljava/io/BufferedReader;
invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
new-instance v19, Ljava/lang/StringBuffer;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V
:goto_18
invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v6
if-nez v6, :cond_5e
invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
const-string/jumbo v22, "relst"
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v23
invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v22
const-string/jumbo v23, "errcode"
invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v22
const/16 v23, -0x1
move/from16 v0, v22
move/from16 v1, v23
if-ne v0, v1, :cond_64
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v22
const-string/jumbo v23, "access_token"
invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v22
const/16 v23, -0x1
move/from16 v0, v22
move/from16 v1, v23
if-eq v0, v1, :cond_64
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v22
move-object/from16 v0, v22
invoke-virtual {v15, v0}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->setObj(Ljava/lang/Object;)V
:goto_5d
:cond_5d
return-object v15
:cond_5e
move-object/from16 v0, v19
invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_18
:cond_64
new-instance v11, Lorg/json/JSONObject;
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v22
move-object/from16 v0, v22
invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const/4 v3, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mTargetClass:Ljava/lang/Class;
move-object/from16 v22, v0
if-eqz v22, :cond_84
move-object/from16 v0, p0
iget-object v0, v0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mTargetClass:Ljava/lang/Class;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/tencent/weibo/sdk/android/model/BaseVO;
:cond_84
const/4 v12, 0x0
const/4 v14, 0x0
const-string/jumbo v22, "errcode"
move-object/from16 v0, v22
invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
const-string/jumbo v22, "msg"
move-object/from16 v0, v22
invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v16
if-eqz v7, :cond_1c5
const-string/jumbo v22, "0"
move-object/from16 v0, v22
invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_1c5
const/16 v22, 0x1
move/from16 v0, v22
invoke-virtual {v15, v0}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->setSuccess(Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mResultType:Ljava/lang/Integer;
move-object/from16 v22, v0
invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I
move-result v22
packed-switch v22, :pswitch_data_1d2
goto :goto_5d
:pswitch_ba
move-object/from16 v0, p0
iget-object v0, v0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mTargetClass:Ljava/lang/Class;
move-object/from16 v22, v0
move-object/from16 v0, v22
invoke-static {v0, v11}, Lcom/tencent/weibo/sdk/android/api/util/JsonUtil;->jsonToObject(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/tencent/weibo/sdk/android/model/BaseVO;
move-result-object v21
new-instance v12, Ljava/util/ArrayList;
invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, v21
invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v15, v12}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->setList(Ljava/util/List;)V
goto :goto_5d
:pswitch_d4
invoke-virtual {v3, v11}, Lcom/tencent/weibo/sdk/android/model/BaseVO;->analyseHead(Lorg/json/JSONObject;)Ljava/util/Map;
move-result-object v14
const-string/jumbo v22, "array"
move-object/from16 v0, v22
invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lorg/json/JSONArray;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mTargetClass:Ljava/lang/Class;
move-object/from16 v22, v0
move-object/from16 v0, v22
invoke-static {v0, v2}, Lcom/tencent/weibo/sdk/android/api/util/JsonUtil;->jsonToList(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/List;
move-result-object v12
const-string/jumbo v22, "total"
move-object/from16 v0, v22
invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v22
if-nez v22, :cond_154
const/16 v22, 0x0
:goto_fc
invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v20
const-string/jumbo v22, "p"
move-object/from16 v0, v22
invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v22
if-nez v22, :cond_164
const/16 v22, 0x1
:goto_10d
invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v17
const-string/jumbo v22, "ps"
move-object/from16 v0, v22
invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v22
if-nez v22, :cond_174
const/16 v22, 0x1
:goto_11e
invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v18
const-string/jumbo v22, "isLastPage"
move-object/from16 v0, v22
invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v22
check-cast v22, Ljava/lang/Boolean;
invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z
move-result v10
invoke-virtual {v15, v12}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->setList(Ljava/util/List;)V
invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I
move-result v22
move/from16 v0, v22
invoke-virtual {v15, v0}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->setTotal(I)V
invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
move-result v22
move/from16 v0, v22
invoke-virtual {v15, v0}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->setP(I)V
invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I
move-result v22
move/from16 v0, v22
invoke-virtual {v15, v0}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->setPs(I)V
invoke-virtual {v15, v10}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->setLastPage(Z)V
goto/16 :goto_5d
:cond_154
const-string/jumbo v22, "total"
move-object/from16 v0, v22
invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v22
check-cast v22, Ljava/lang/Integer;
invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I
move-result v22
goto :goto_fc
:cond_164
const-string/jumbo v22, "p"
move-object/from16 v0, v22
invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v22
check-cast v22, Ljava/lang/Integer;
invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I
move-result v22
goto :goto_10d
:cond_174
const-string/jumbo v22, "ps"
move-object/from16 v0, v22
invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v22
check-cast v22, Ljava/lang/Integer;
invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I
move-result v22
goto :goto_11e
:pswitch_184
move-object/from16 v0, p0
iget-object v0, v0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mTargetClass:Ljava/lang/Class;
move-object/from16 v22, v0
move-object/from16 v0, v22
invoke-static {v0, v11}, Lcom/tencent/weibo/sdk/android/api/util/JsonUtil;->jsonToObject(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/tencent/weibo/sdk/android/model/BaseVO;
move-result-object v22
move-object/from16 v0, v22
invoke-virtual {v15, v0}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->setObj(Ljava/lang/Object;)V
goto/16 :goto_5d
:pswitch_197
move-object/from16 v0, p0
iget-object v0, v0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mTargetClass:Ljava/lang/Class;
move-object/from16 v22, v0
move-object/from16 v0, v22
invoke-static {v0, v11}, Lcom/tencent/weibo/sdk/android/api/util/JsonUtil;->jsonToObject(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/tencent/weibo/sdk/android/model/BaseVO;
move-result-object v4
const-string/jumbo v22, "result_list"
move-object/from16 v0, v22
invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v13
move-object/from16 v0, p0
iget-object v0, v0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mTargetClass2:Ljava/lang/Class;
move-object/from16 v22, v0
move-object/from16 v0, v22
invoke-static {v0, v13}, Lcom/tencent/weibo/sdk/android/api/util/JsonUtil;->jsonToList(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/List;
move-result-object v12
invoke-virtual {v15, v4}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->setObj(Ljava/lang/Object;)V
invoke-virtual {v15, v12}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->setList(Ljava/util/List;)V
goto/16 :goto_5d
:pswitch_1c0
invoke-virtual {v15, v11}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->setObj(Ljava/lang/Object;)V
goto/16 :goto_5d
:cond_1c5
const/16 v22, 0x0
move/from16 v0, v22
invoke-virtual {v15, v0}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->setSuccess(Z)V
invoke-virtual/range {v15 .. v16}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->setError_message(Ljava/lang/String;)V
goto/16 :goto_5d
nop
:pswitch_data_1d2
.packed-switch 0x0
:pswitch_ba
:pswitch_d4
:pswitch_184
:pswitch_197
:pswitch_1c0
.end packed-switch
.end method
.method public setReq(Ljava/lang/String;)V
.registers 7
const-string/jumbo v2, "POST"
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mMethod:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2d
new-instance v1, Lcom/tencent/weibo/sdk/android/network/HttpReq$UTF8PostMethod;
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mUrl:Ljava/lang/String;
invoke-direct {v1, v2}, Lcom/tencent/weibo/sdk/android/network/HttpReq$UTF8PostMethod;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mParam:Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-virtual {v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->toString()Ljava/lang/String;
move-result-object v0
new-instance v2, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mParam:Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-virtual {v3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->toString()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "utf-8"
invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v3
invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;-><init>([B)V
invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V
:cond_2d
return-void
.end method
.method protected setReq(Lorg/apache/commons/httpclient/HttpMethod;)V
.registers 7
const-string/jumbo v2, "POST"
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mMethod:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3b
move-object v1, p1
check-cast v1, Lorg/apache/commons/httpclient/methods/PostMethod;
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mParam:Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-virtual {v2}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->toString()Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "Connection"
const-string/jumbo v3, "Keep-Alive"
invoke-virtual {v1, v2, v3}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameter(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "Charset"
const-string/jumbo v3, "UTF-8"
invoke-virtual {v1, v2, v3}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameter(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mParam:Lcom/tencent/weibo/sdk/android/network/ReqParam;
invoke-virtual {v3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->toString()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "utf-8"
invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v3
invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;-><init>([B)V
invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V
:cond_3b
return-void
.end method
.method public setmResultType(Ljava/lang/Integer;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mResultType:Ljava/lang/Integer;
return-void
.end method
.method public setmTargetClass(Ljava/lang/Class;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mTargetClass:Ljava/lang/Class;
return-void
.end method
.method public setmTargetClass2(Ljava/lang/Class;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/network/HttpReqWeiBo;->mTargetClass2:Ljava/lang/Class;
return-void
.end method