.class public Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
.super Ljava/lang/Object;
.source "WebDavStore.java"
.field private mData:Ljava/util/HashMap;
.field private mLostData:Ljava/util/HashMap;
.field private mTempData:Ljava/util/HashMap;
.field private mUid:Ljava/lang/String;
.field final synthetic this$0:Lcom/fsck/k9/mail/store/WebDavStore;
.method public constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mLostData:Ljava/util/HashMap;
const-string v0, ""
iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mUid:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;
return-void
.end method
.method public addValue(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const-string v0, "uid"
invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a
iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mUid:Ljava/lang/String;
:cond_a
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;
invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;
invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/String;
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_30
return-void
:cond_31
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;
invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_30
.end method
.method public finish()V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mUid:Ljava/lang/String;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;
iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mUid:Ljava/lang/String;
iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_11
:cond_11
const-string v0, ""
iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mUid:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;
return-void
:cond_1d
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mTempData:Ljava/util/HashMap;
iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mLostData:Ljava/util/HashMap;
iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mLostData:Ljava/util/HashMap;
const-string v1, "visiblecount"
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
goto :goto_11
.end method
.method public getHrefs()[Ljava/lang/String;
.registers 7
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;
invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v5
invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_2f
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;
invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
const-string v5, "href"
invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_f
:cond_2f
const/4 v5, 0x0
new-array v5, v5, [Ljava/lang/String;
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Ljava/lang/String;
return-object p0
.end method
.method public getMessageCount()I
.registers 7
const/4 v3, -0x1
iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;
invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v5
invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_b
:cond_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_36
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;
invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/HashMap;
const-string v5, "visiblecount"
invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_b
const-string v5, ""
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_b
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
goto :goto_b
:cond_36
return v3
.end method
.method public getMessageEnvelopes()Ljava/util/HashMap;
.registers 22
new-instance v8, Ljava/util/HashMap;
invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v18
invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v10
:cond_13
:goto_13
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v18
if-eqz v18, :cond_11a
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v17
check-cast v17, Ljava/lang/String;
new-instance v7, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object/from16 v18, v0
move-object v0, v7
move-object/from16 v1, v18
invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;
move-object/from16 v18, v0
move-object/from16 v0, v18
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/util/HashMap;
if-eqz v3, :cond_10f
invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v18
invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v11
:goto_47
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v18
if-eqz v18, :cond_10f
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/String;
const-string v18, "read"
move-object v0, v9
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-eqz v18, :cond_83
invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v14
check-cast v14, Ljava/lang/String;
const-string v18, "0"
move-object v0, v14
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-eqz v18, :cond_80
const/16 v18, 0x0
:goto_71
invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z
move-result v18
move-object v0, v7
move/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->setReadStatus(Z)V
goto :goto_47
:cond_80
const/16 v18, 0x1
goto :goto_71
:cond_83
const-string v18, "date"
move-object v0, v9
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-eqz v18, :cond_104
invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
const/16 v18, 0x0
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v19
const/16 v20, 0x1
sub-int v19, v19, v20
move-object v0, v4
move/from16 v1, v18
move/from16 v2, v19
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/text/SimpleDateFormat;
const-string v18, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"
move-object v0, v5
move-object/from16 v1, v18
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
new-instance v6, Ljava/text/SimpleDateFormat;
const-string v18, "EEE, d MMM yy HH:mm:ss Z"
move-object v0, v6
move-object/from16 v1, v18
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
const-string v16, ""
:try_start_bd
invoke-virtual {v5, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v12
invoke-virtual {v6, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
:try_end_c4
.catch Ljava/text/ParseException; {:try_start_bd .. :try_end_c4} :catch_ce
move-result-object v16
:goto_c5
move-object v0, v7
move-object v1, v9
move-object/from16 v2, v16
invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_47
:catch_ce
move-exception v18
move-object/from16 v13, v18
const-string v18, "k9"
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
const-string v20, "Error parsing date: "
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object v1, v13
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v20, "\nTrace: "
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;
move-object/from16 v20, v0
move-object/from16 v0, v20
move-object v1, v13
#calls: Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;
invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_c5
:cond_104
invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-virtual {v7, v9, v4}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_47
:cond_10f
if-eqz v7, :cond_13
move-object v0, v8
move-object/from16 v1, v17
move-object v2, v7
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_13
:cond_11a
return-object v8
.end method
.method public getUidToRead()Ljava/util/HashMap;
.registers 8
new-instance v4, Ljava/util/HashMap;
invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
iget-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;
invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v6
invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_f
:cond_f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_48
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
iget-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;
invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
const-string v6, "read"
invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
if-eqz v2, :cond_f
const-string v6, ""
invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_f
const-string v6, "0"
invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_46
const/4 v6, 0x0
:goto_3e
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_f
:cond_46
const/4 v6, 0x1
goto :goto_3e
:cond_48
return-object v4
.end method
.method public getUidToUrl()Ljava/util/HashMap;
.registers 7
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;
invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v5
invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_f
:cond_f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_39
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
iget-object v5, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;
invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
const-string v5, "href"
invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
if-eqz v4, :cond_f
const-string v5, ""
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_f
invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_f
:cond_39
return-object v3
.end method
.method public getUids()[Ljava/lang/String;
.registers 5
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iget-object v3, p0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->mData:Ljava/util/HashMap;
invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_1f
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_f
:cond_1f
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Ljava/lang/String;
return-object p0
.end method