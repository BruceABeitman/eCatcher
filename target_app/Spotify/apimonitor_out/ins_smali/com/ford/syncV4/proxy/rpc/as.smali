.class public final Lcom/ford/syncV4/proxy/rpc/as;
.super Lcom/ford/syncV4/proxy/f;
.source "SourceFile"
.method public constructor <init>()V
.registers 2
const-string v0, "RegisterAppInterface"
invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/f;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/util/Hashtable;)V
.registers 2
invoke-direct {p0, p1}, Lcom/ford/syncV4/proxy/f;-><init>(Ljava/util/Hashtable;)V
return-void
.end method
.method public final i()Lcom/ford/syncV4/proxy/rpc/bm;
.registers 3
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/as;->b:Ljava/util/Hashtable;
const-string v1, "syncMsgVersion"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lcom/ford/syncV4/proxy/rpc/bm;
if-eqz v1, :cond_f
check-cast v0, Lcom/ford/syncV4/proxy/rpc/bm;
:goto_e
return-object v0
:cond_f
instance-of v1, v0, Ljava/util/Hashtable;
if-eqz v1, :cond_1c
new-instance v1, Lcom/ford/syncV4/proxy/rpc/bm;
check-cast v0, Ljava/util/Hashtable;
invoke-direct {v1, v0}, Lcom/ford/syncV4/proxy/rpc/bm;-><init>(Ljava/util/Hashtable;)V
move-object v0, v1
goto :goto_e
:cond_1c
const/4 v0, 0x0
goto :goto_e
.end method
.method public final j()Lcom/ford/syncV4/proxy/rpc/enums/Language;
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/as;->b:Ljava/util/Hashtable;
const-string v2, "language"
invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v2, v0, Lcom/ford/syncV4/proxy/rpc/enums/Language;
if-eqz v2, :cond_10
check-cast v0, Lcom/ford/syncV4/proxy/rpc/enums/Language;
:goto_f
return-object v0
:cond_10
instance-of v2, v0, Ljava/lang/String;
if-eqz v2, :cond_3e
:try_start_14
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/ford/syncV4/proxy/rpc/enums/Language;->a(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/Language;
:try_end_19
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1b
move-result-object v0
goto :goto_f
:catch_1b
move-exception v0
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Failed to parse "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ".language"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v1
goto :goto_f
:cond_3e
move-object v0, v1
goto :goto_f
.end method
.method public final k()Lcom/ford/syncV4/proxy/rpc/enums/Language;
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/as;->b:Ljava/util/Hashtable;
const-string v2, "hmiDisplayLanguage"
invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v2, v0, Lcom/ford/syncV4/proxy/rpc/enums/Language;
if-eqz v2, :cond_10
check-cast v0, Lcom/ford/syncV4/proxy/rpc/enums/Language;
:goto_f
return-object v0
:cond_10
instance-of v2, v0, Ljava/lang/String;
if-eqz v2, :cond_3e
:try_start_14
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/ford/syncV4/proxy/rpc/enums/Language;->a(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/Language;
:try_end_19
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1b
move-result-object v0
goto :goto_f
:catch_1b
move-exception v0
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Failed to parse "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ".hmiDisplayLanguage"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v1
goto :goto_f
:cond_3e
move-object v0, v1
goto :goto_f
.end method
.method public final l()Lcom/ford/syncV4/proxy/rpc/o;
.registers 3
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/as;->b:Ljava/util/Hashtable;
const-string v1, "displayCapabilities"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lcom/ford/syncV4/proxy/rpc/o;
if-eqz v1, :cond_f
check-cast v0, Lcom/ford/syncV4/proxy/rpc/o;
:goto_e
return-object v0
:cond_f
instance-of v1, v0, Ljava/util/Hashtable;
if-eqz v1, :cond_1c
new-instance v1, Lcom/ford/syncV4/proxy/rpc/o;
check-cast v0, Ljava/util/Hashtable;
invoke-direct {v1, v0}, Lcom/ford/syncV4/proxy/rpc/o;-><init>(Ljava/util/Hashtable;)V
move-object v0, v1
goto :goto_e
:cond_1c
const/4 v0, 0x0
goto :goto_e
.end method
.method public final m()Ljava/util/Vector;
.registers 5
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/as;->b:Ljava/util/Hashtable;
const-string v1, "buttonCapabilities"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Ljava/util/Vector;
if-eqz v0, :cond_4c
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/as;->b:Ljava/util/Hashtable;
const-string v1, "buttonCapabilities"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Vector;
if-eqz v0, :cond_4c
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v1
if-lez v1, :cond_4c
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v1
instance-of v2, v1, Lcom/ford/syncV4/proxy/rpc/e;
if-eqz v2, :cond_28
:goto_27
return-object v0
:cond_28
instance-of v1, v1, Ljava/util/Hashtable;
if-eqz v1, :cond_4c
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_35
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
new-instance v3, Lcom/ford/syncV4/proxy/rpc/e;
check-cast v0, Ljava/util/Hashtable;
invoke-direct {v3, v0}, Lcom/ford/syncV4/proxy/rpc/e;-><init>(Ljava/util/Hashtable;)V
invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
goto :goto_35
:cond_4a
move-object v0, v1
goto :goto_27
:cond_4c
const/4 v0, 0x0
goto :goto_27
.end method
.method public final n()Ljava/util/Vector;
.registers 5
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/as;->b:Ljava/util/Hashtable;
const-string v1, "softButtonCapabilities"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Ljava/util/Vector;
if-eqz v0, :cond_4c
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/as;->b:Ljava/util/Hashtable;
const-string v1, "softButtonCapabilities"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Vector;
if-eqz v0, :cond_4c
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v1
if-lez v1, :cond_4c
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v1
instance-of v2, v1, Lcom/ford/syncV4/proxy/rpc/bf;
if-eqz v2, :cond_28
:goto_27
return-object v0
:cond_28
instance-of v1, v1, Ljava/util/Hashtable;
if-eqz v1, :cond_4c
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_35
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
new-instance v3, Lcom/ford/syncV4/proxy/rpc/bf;
check-cast v0, Ljava/util/Hashtable;
invoke-direct {v3, v0}, Lcom/ford/syncV4/proxy/rpc/bf;-><init>(Ljava/util/Hashtable;)V
invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
goto :goto_35
:cond_4a
move-object v0, v1
goto :goto_27
:cond_4c
const/4 v0, 0x0
goto :goto_27
.end method
.method public final o()Lcom/ford/syncV4/proxy/rpc/ao;
.registers 3
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/as;->b:Ljava/util/Hashtable;
const-string v1, "presetBankCapabilities"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lcom/ford/syncV4/proxy/rpc/ao;
if-eqz v1, :cond_f
check-cast v0, Lcom/ford/syncV4/proxy/rpc/ao;
:goto_e
return-object v0
:cond_f
instance-of v1, v0, Ljava/util/Hashtable;
if-eqz v1, :cond_1c
new-instance v1, Lcom/ford/syncV4/proxy/rpc/ao;
check-cast v0, Ljava/util/Hashtable;
invoke-direct {v1, v0}, Lcom/ford/syncV4/proxy/rpc/ao;-><init>(Ljava/util/Hashtable;)V
move-object v0, v1
goto :goto_e
:cond_1c
const/4 v0, 0x0
goto :goto_e
.end method
.method public final p()Ljava/util/Vector;
.registers 7
const/4 v2, 0x0
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/as;->b:Ljava/util/Hashtable;
const-string v1, "hmiZoneCapabilities"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Ljava/util/Vector;
if-eqz v0, :cond_71
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/as;->b:Ljava/util/Hashtable;
const-string v1, "hmiZoneCapabilities"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Vector;
if-eqz v0, :cond_71
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v1
if-lez v1, :cond_71
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v1
instance-of v3, v1, Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
if-eqz v3, :cond_29
:goto_28
return-object v0
:cond_29
instance-of v1, v1, Ljava/lang/String;
if-eqz v1, :cond_71
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_36
:cond_36
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6f
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:try_start_42
invoke-static {v0}, Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;->a(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/HmiZoneCapabilities;
:try_end_45
.catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_4c
move-result-object v0
:goto_46
if-eqz v0, :cond_36
invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
goto :goto_36
:catch_4c
move-exception v0
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Failed to parse "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ".hmiZoneCapabilities"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v2
goto :goto_46
:cond_6f
move-object v0, v1
goto :goto_28
:cond_71
move-object v0, v2
goto :goto_28
.end method
.method public final q()Ljava/util/Vector;
.registers 7
const/4 v2, 0x0
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/as;->b:Ljava/util/Hashtable;
const-string v1, "speechCapabilities"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Ljava/util/Vector;
if-eqz v0, :cond_71
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/as;->b:Ljava/util/Hashtable;
const-string v1, "speechCapabilities"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Vector;
if-eqz v0, :cond_71
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v1
if-lez v1, :cond_71
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v1
instance-of v3, v1, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
if-eqz v3, :cond_29
:goto_28
return-object v0
:cond_29
instance-of v1, v1, Ljava/lang/String;
if-eqz v1, :cond_71
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_36
:cond_36
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6f
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:try_start_42
invoke-static {v0}, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;->a(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;
:try_end_45
.catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_4c
move-result-object v0
:goto_46
if-eqz v0, :cond_36
invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
goto :goto_36
:catch_4c
move-exception v0
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Failed to parse "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ".speechCapabilities"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v2
goto :goto_46
:cond_6f
move-object v0, v1
goto :goto_28
:cond_71
move-object v0, v2
goto :goto_28
.end method
.method public final r()Ljava/util/Vector;
.registers 7
const/4 v2, 0x0
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/as;->b:Ljava/util/Hashtable;
const-string v1, "vrCapabilities"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Ljava/util/Vector;
if-eqz v0, :cond_71
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/as;->b:Ljava/util/Hashtable;
const-string v1, "vrCapabilities"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Vector;
if-eqz v0, :cond_71
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v1
if-lez v1, :cond_71
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
move-result-object v1
instance-of v3, v1, Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;
if-eqz v3, :cond_29
:goto_28
return-object v0
:cond_29
instance-of v1, v1, Ljava/lang/String;
if-eqz v1, :cond_71
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_36
:cond_36
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6f
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:try_start_42
invoke-static {v0}, Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;->a(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;
:try_end_45
.catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_4c
move-result-object v0
:goto_46
if-eqz v0, :cond_36
invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
goto :goto_36
:catch_4c
move-exception v0
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Failed to parse "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ".vrCapabilities"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v2
goto :goto_46
:cond_6f
move-object v0, v1
goto :goto_28
:cond_71
move-object v0, v2
goto :goto_28
.end method
.method public final s()Lcom/ford/syncV4/proxy/rpc/bu;
.registers 3
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/as;->b:Ljava/util/Hashtable;
const-string v1, "vehicleType"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lcom/ford/syncV4/proxy/rpc/bu;
if-eqz v1, :cond_f
check-cast v0, Lcom/ford/syncV4/proxy/rpc/bu;
:goto_e
return-object v0
:cond_f
instance-of v1, v0, Ljava/util/Hashtable;
if-eqz v1, :cond_1c
new-instance v1, Lcom/ford/syncV4/proxy/rpc/bu;
check-cast v0, Ljava/util/Hashtable;
invoke-direct {v1, v0}, Lcom/ford/syncV4/proxy/rpc/bu;-><init>(Ljava/util/Hashtable;)V
move-object v0, v1
goto :goto_e
:cond_1c
const/4 v0, 0x0
goto :goto_e
.end method