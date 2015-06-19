.class public Lcom/pinguo/share/at/AtManager;
.super Ljava/lang/Thread;
.source "AtManager.java"
.field private static final AT_FILE:Ljava/lang/String; = "atfile.txt"
.field private static final UPDATE_TIME:J = 0x7b98a00L
.field private mAtProcess:Lcom/pinguo/share/at/IAtProcess;
.field private mContext:Landroid/content/Context;
.field private mWSIB:Lcom/pinguo/share/website/WebSiteInfoBean;
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/share/website/WebSiteInfoBean;Lcom/pinguo/share/at/IAtProcess;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-object p1, p0, Lcom/pinguo/share/at/AtManager;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/pinguo/share/at/AtManager;->mWSIB:Lcom/pinguo/share/website/WebSiteInfoBean;
iput-object p3, p0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
return-void
.end method
.method public static clearFile(Landroid/content/Context;Ljava/lang/String;)Z
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "atfile.txt"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public static getPeoples(Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/app/Activity;Lcom/pinguo/share/at/IAtProcess;Z)V
.registers 16
if-eqz p3, :cond_6
invoke-static {p0, p1, p2}, Lcom/pinguo/share/at/AtManager;->startThread(Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/app/Activity;Lcom/pinguo/share/at/IAtProcess;)V
:goto_5
:cond_5
return-void
:cond_6
const/4 v1, 0x0
const/4 v6, 0x0
:try_start_8
new-instance v7, Ljava/io/ObjectInputStream;
new-instance v8, Ljava/lang/StringBuilder;
iget-object v9, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v9, "atfile.txt"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {p1, v8}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
move-result-object v8
invoke-direct {v7, v8}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
:try_end_27
.catchall {:try_start_8 .. :try_end_27} :catchall_79
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_27} :catch_64
:try_start_27
invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v8
move-object v0, v8
check-cast v0, Lcom/pinguo/share/at/AtBean;
move-object v1, v0
:try_end_2f
.catchall {:try_start_27 .. :try_end_2f} :catchall_95
.catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2f} :catch_98
move-object v6, v7
:goto_30
if-eqz v1, :cond_44
:try_start_32
invoke-virtual {v1}, Lcom/pinguo/share/at/AtBean;->getmAttentionMap()Ljava/util/Map;
move-result-object v8
invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v8
invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_3e
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-nez v8, :cond_67
:cond_44
if-eqz v1, :cond_56
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
invoke-virtual {v1}, Lcom/pinguo/share/at/AtBean;->getLastTime()J
move-result-wide v10
sub-long/2addr v8, v10
const-wide/32 v10, 0x7b98a00
cmp-long v8, v8, v10
if-lez v8, :cond_85
:cond_56
invoke-static {p0, p1, p2}, Lcom/pinguo/share/at/AtManager;->startThread(Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/app/Activity;Lcom/pinguo/share/at/IAtProcess;)V
:cond_59
:goto_59
:try_end_59
.catchall {:try_start_32 .. :try_end_59} :catchall_79
if-eqz v6, :cond_5e
:try_start_5b
invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
:goto_5e
:try_end_5e
.catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_90
:cond_5e
if-eqz p2, :cond_5
invoke-interface {p2}, Lcom/pinguo/share/at/IAtProcess;->afterThread()V
goto :goto_5
:catch_64
move-exception v4
:goto_65
const/4 v1, 0x0
goto :goto_30
:cond_67
:try_start_67
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/share/at/AtAttentionBean;
iget-object v8, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_name:Ljava/lang/String;
invoke-virtual {v2, v8}, Lcom/pinguo/share/at/AtAttentionBean;->setSite(Ljava/lang/String;)V
const v3, 0x7f02003d
invoke-virtual {v2, v3}, Lcom/pinguo/share/at/AtAttentionBean;->setDefHead(I)V
:try_end_78
.catchall {:try_start_67 .. :try_end_78} :catchall_79
goto :goto_3e
:catchall_79
move-exception v8
:goto_7a
if-eqz v6, :cond_7f
:try_start_7c
invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
:try_end_7f
.catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_8b
:goto_7f
:cond_7f
if-eqz p2, :cond_84
invoke-interface {p2}, Lcom/pinguo/share/at/IAtProcess;->afterThread()V
:cond_84
throw v8
:cond_85
if-eqz p2, :cond_59
:try_start_87
invoke-interface {p2, v1}, Lcom/pinguo/share/at/IAtProcess;->finish(Lcom/pinguo/share/at/AtBean;)V
:try_end_8a
.catchall {:try_start_87 .. :try_end_8a} :catchall_79
goto :goto_59
:catch_8b
move-exception v4
invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
goto :goto_7f
:catch_90
move-exception v4
invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
goto :goto_5e
:catchall_95
move-exception v8
move-object v6, v7
goto :goto_7a
:catch_98
move-exception v4
move-object v6, v7
goto :goto_65
.end method
.method public static saveFile(Landroid/content/Context;Lcom/pinguo/share/at/AtBean;)V
.registers 8
const/4 v2, 0x0
const/4 v1, 0x0
:try_start_2
new-instance v4, Ljava/lang/StringBuilder;
invoke-virtual {p1}, Lcom/pinguo/share/at/AtBean;->getSite_code()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "atfile.txt"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x0
invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
move-result-object v1
new-instance v3, Ljava/io/ObjectOutputStream;
invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_end_24
.catchall {:try_start_2 .. :try_end_24} :catchall_4c
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_33
:try_start_24
invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
:try_end_27
.catchall {:try_start_24 .. :try_end_27} :catchall_6d
.catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_70
if-eqz v3, :cond_2c
:try_start_29
invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
:goto_2c
:cond_2c
:try_end_2c
.catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_62
if-eqz v1, :cond_6b
:try_start_2e
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_31
.catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_67
move-object v2, v3
:goto_32
:cond_32
return-void
:catch_33
move-exception v0
:goto_34
:try_start_34
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:try_end_37
.catchall {:try_start_34 .. :try_end_37} :catchall_4c
if-eqz v2, :cond_3c
:try_start_39
invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
:try_end_3c
.catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_47
:goto_3c
:cond_3c
if-eqz v1, :cond_32
:try_start_3e
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_41
.catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42
goto :goto_32
:catch_42
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_32
:catch_47
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_3c
:catchall_4c
move-exception v4
:goto_4d
if-eqz v2, :cond_52
:try_start_4f
invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
:goto_52
:cond_52
:try_end_52
.catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_58
if-eqz v1, :cond_57
:try_start_54
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:goto_57
:cond_57
:try_end_57
.catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_5d
throw v4
:catch_58
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_52
:catch_5d
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_57
:catch_62
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_2c
:catch_67
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_6b
move-object v2, v3
goto :goto_32
:catchall_6d
move-exception v4
move-object v2, v3
goto :goto_4d
:catch_70
move-exception v0
move-object v2, v3
goto :goto_34
.end method
.method private static startThread(Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/app/Activity;Lcom/pinguo/share/at/IAtProcess;)V
.registers 5
if-eqz p2, :cond_5
invoke-interface {p2}, Lcom/pinguo/share/at/IAtProcess;->beforeThread()V
:cond_5
new-instance v0, Lcom/pinguo/share/at/AtManager;
invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p0, p2}, Lcom/pinguo/share/at/AtManager;-><init>(Landroid/content/Context;Lcom/pinguo/share/website/WebSiteInfoBean;Lcom/pinguo/share/at/IAtProcess;)V
invoke-virtual {v0}, Lcom/pinguo/share/at/AtManager;->start()V
return-void
.end method
.method public run()V
.registers 18
new-instance v12, Ljava/util/ArrayList;
invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mWSIB:Lcom/pinguo/share/website/WebSiteInfoBean;
invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_start_c
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mContext:Landroid/content/Context;
invoke-static {v14}, Lcom/pinguo/share/net/ServiceConnection;->getServiceConnection(Landroid/content/Context;)Lcom/pinguo/share/net/ServiceConnection;
move-result-object v14
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/share/at/AtManager;->mContext:Landroid/content/Context;
invoke-static {v15}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;
move-result-object v15
invoke-virtual {v15}, Lcom/pinguo/share/bind/DispatchBean;->getAuth()Ljava/lang/String;
move-result-object v15
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/share/at/AtManager;->mContext:Landroid/content/Context;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-virtual {v14, v15, v0, v12}, Lcom/pinguo/share/net/ServiceConnection;->getAt(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
move-result-object v13
new-instance v11, Lorg/json/JSONObject;
invoke-direct {v11, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v14, "200"
const-string/jumbo v15, "status"
invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v14
if-eqz v14, :cond_132
const-string/jumbo v14, "sites"
invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
const/4 v8, 0x0
:goto_49
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
:try_end_4c
.catchall {:try_start_c .. :try_end_4c} :catchall_161
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_4c} :catch_141
move-result v14
if-lt v8, v14, :cond_5d
:goto_4f
:cond_4f
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
if-eqz v14, :cond_5c
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
invoke-interface {v14}, Lcom/pinguo/share/at/IAtProcess;->afterThread()V
:goto_5c
:cond_5c
return-void
:cond_5d
:try_start_5d
invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v9
const-string/jumbo v14, "200"
const-string/jumbo v15, "status"
invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v14
if-eqz v14, :cond_116
new-instance v2, Lcom/pinguo/share/at/AtBean;
invoke-direct {v2}, Lcom/pinguo/share/at/AtBean;-><init>()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v14
invoke-virtual {v2, v14, v15}, Lcom/pinguo/share/at/AtBean;->setLastTime(J)V
const-string/jumbo v14, "site_code"
invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v14
invoke-virtual {v2, v14}, Lcom/pinguo/share/at/AtBean;->setSite_code(Ljava/lang/String;)V
const-string/jumbo v14, "friends"
invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v6
const/4 v10, 0x0
:goto_8f
invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
move-result v14
if-lt v10, v14, :cond_b9
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
if-eqz v14, :cond_b6
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
invoke-interface {v14, v2}, Lcom/pinguo/share/at/IAtProcess;->beforeSave(Lcom/pinguo/share/at/AtBean;)V
invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
move-result v14
if-eqz v14, :cond_af
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mContext:Landroid/content/Context;
invoke-static {v14, v2}, Lcom/pinguo/share/at/AtManager;->saveFile(Landroid/content/Context;Lcom/pinguo/share/at/AtBean;)V
:cond_af
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
invoke-interface {v14, v2}, Lcom/pinguo/share/at/IAtProcess;->finish(Lcom/pinguo/share/at/AtBean;)V
:cond_b6
add-int/lit8 v8, v8, 0x1
goto :goto_49
:cond_b9
invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v7
new-instance v3, Lcom/pinguo/share/at/AtAttentionBean;
invoke-direct {v3}, Lcom/pinguo/share/at/AtAttentionBean;-><init>()V
const-string/jumbo v14, "name"
invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v14
invoke-virtual {v3, v14}, Lcom/pinguo/share/at/AtAttentionBean;->setName(Ljava/lang/String;)V
const-string/jumbo v14, "uid"
invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v14
invoke-virtual {v3, v14}, Lcom/pinguo/share/at/AtAttentionBean;->setUid(Ljava/lang/String;)V
const-string/jumbo v14, "at"
invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v14
invoke-virtual {v3, v14}, Lcom/pinguo/share/at/AtAttentionBean;->setAt(Ljava/lang/String;)V
const-string/jumbo v14, "head"
invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v14
invoke-virtual {v3, v14}, Lcom/pinguo/share/at/AtAttentionBean;->setHead(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mWSIB:Lcom/pinguo/share/website/WebSiteInfoBean;
iget-object v14, v14, Lcom/pinguo/share/website/WebSiteInfoBean;->site_name:Ljava/lang/String;
invoke-virtual {v3, v14}, Lcom/pinguo/share/at/AtAttentionBean;->setSite(Ljava/lang/String;)V
const v4, 0x7f02003d
invoke-virtual {v3, v4}, Lcom/pinguo/share/at/AtAttentionBean;->setDefHead(I)V
invoke-virtual {v2}, Lcom/pinguo/share/at/AtBean;->getmAttentionMap()Ljava/util/Map;
move-result-object v14
if-nez v14, :cond_107
new-instance v14, Ljava/util/HashMap;
invoke-direct {v14}, Ljava/util/HashMap;-><init>()V
invoke-virtual {v2, v14}, Lcom/pinguo/share/at/AtBean;->setmAttentionMap(Ljava/util/Map;)V
:cond_107
invoke-virtual {v2}, Lcom/pinguo/share/at/AtBean;->getmAttentionMap()Ljava/util/Map;
move-result-object v14
invoke-virtual {v3}, Lcom/pinguo/share/at/AtAttentionBean;->getUid()Ljava/lang/String;
move-result-object v15
invoke-interface {v14, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v10, v10, 0x1
goto/16 :goto_8f
:cond_116
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
if-eqz v14, :cond_b6
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
invoke-interface {v14}, Lcom/pinguo/share/at/IAtProcess;->fail()V
:try_end_123
.catchall {:try_start_5d .. :try_end_123} :catchall_161
.catch Ljava/lang/Exception; {:try_start_5d .. :try_end_123} :catch_141
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
if-eqz v14, :cond_5c
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
invoke-interface {v14}, Lcom/pinguo/share/at/IAtProcess;->afterThread()V
goto/16 :goto_5c
:try_start_132
:cond_132
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
if-eqz v14, :cond_4f
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
invoke-interface {v14}, Lcom/pinguo/share/at/IAtProcess;->fail()V
:try_end_13f
.catchall {:try_start_132 .. :try_end_13f} :catchall_161
.catch Ljava/lang/Exception; {:try_start_132 .. :try_end_13f} :catch_141
goto/16 :goto_4f
:catch_141
move-exception v5
:try_start_142
invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
if-eqz v14, :cond_152
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
invoke-interface {v14}, Lcom/pinguo/share/at/IAtProcess;->fail()V
:try_end_152
.catchall {:try_start_142 .. :try_end_152} :catchall_161
:cond_152
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
if-eqz v14, :cond_5c
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
invoke-interface {v14}, Lcom/pinguo/share/at/IAtProcess;->afterThread()V
goto/16 :goto_5c
:catchall_161
move-exception v14
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
if-eqz v15, :cond_16f
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/share/at/AtManager;->mAtProcess:Lcom/pinguo/share/at/IAtProcess;
invoke-interface {v15}, Lcom/pinguo/share/at/IAtProcess;->afterThread()V
:cond_16f
throw v14
.end method