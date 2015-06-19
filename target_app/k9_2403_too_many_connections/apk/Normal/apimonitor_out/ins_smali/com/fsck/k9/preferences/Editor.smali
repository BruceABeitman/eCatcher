.class public Lcom/fsck/k9/preferences/Editor;
.super Ljava/lang/Object;
.source "Editor.java"
.implements Landroid/content/SharedPreferences$Editor;
.field private changes:Ljava/util/HashMap;
.field private removals:Ljava/util/ArrayList;
.field private removeAll:Z
.field  snapshot:Ljava/util/Map;
.field private storage:Lcom/fsck/k9/preferences/Storage;
.method protected constructor <init>(Lcom/fsck/k9/preferences/Storage;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/preferences/Editor;->changes:Ljava/util/HashMap;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/preferences/Editor;->removals:Ljava/util/ArrayList;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/fsck/k9/preferences/Editor;->removeAll:Z
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/preferences/Editor;->snapshot:Ljava/util/Map;
iput-object p1, p0, Lcom/fsck/k9/preferences/Editor;->storage:Lcom/fsck/k9/preferences/Storage;
iget-object v0, p0, Lcom/fsck/k9/preferences/Editor;->snapshot:Ljava/util/Map;
invoke-virtual {p1}, Lcom/fsck/k9/preferences/Storage;->getAll()Ljava/util/Map;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
return-void
.end method
.method static synthetic access$000(Lcom/fsck/k9/preferences/Editor;)Z
.registers 2
iget-boolean v0, p0, Lcom/fsck/k9/preferences/Editor;->removeAll:Z
return v0
.end method
.method static synthetic access$100(Lcom/fsck/k9/preferences/Editor;)Lcom/fsck/k9/preferences/Storage;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/preferences/Editor;->storage:Lcom/fsck/k9/preferences/Storage;
return-object v0
.end method
.method static synthetic access$200(Lcom/fsck/k9/preferences/Editor;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/preferences/Editor;->removals:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic access$300(Lcom/fsck/k9/preferences/Editor;)Ljava/util/HashMap;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/preferences/Editor;->changes:Ljava/util/HashMap;
return-object v0
.end method
.method public clear()Landroid/content/SharedPreferences$Editor;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fsck/k9/preferences/Editor;->removeAll:Z
return-object p0
.end method
.method public commit()Z
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/fsck/k9/preferences/Editor;->commitChanges()V
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5
const/4 v1, 0x1
:goto_4
return v1
:catch_5
move-exception v0
const-string v1, "k9"
const-string v2, "Failed to save preferences"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
goto :goto_4
.end method
.method public commitChanges()V
.registers 10
const-string v8, "k9"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
const-string v5, "k9"
const-string v5, "Committing preference changes"
invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Lcom/fsck/k9/preferences/Editor$1;
invoke-direct {v0, p0}, Lcom/fsck/k9/preferences/Editor$1;-><init>(Lcom/fsck/k9/preferences/Editor;)V
iget-object v5, p0, Lcom/fsck/k9/preferences/Editor;->storage:Lcom/fsck/k9/preferences/Storage;
invoke-virtual {v5, v0}, Lcom/fsck/k9/preferences/Storage;->doInTransaction(Ljava/lang/Runnable;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
const-string v5, "k9"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Preferences commit took "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
sub-long v6, v1, v3
invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "ms"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public copy(Landroid/content/SharedPreferences;)V
.registers 13
const-string v10, "k9"
const-string v9, "\', value \'"
const-string v8, "\'"
invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v3
invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v5
invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_12
:goto_12
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v4
if-eqz v2, :cond_71
if-eqz v4, :cond_71
sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v5, :cond_58
const-string v5, "k9"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Copying key \'"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "\', value \'"
invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "\'"
invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_58
iget-object v5, p0, Lcom/fsck/k9/preferences/Editor;->changes:Ljava/util/HashMap;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, ""
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_12
:cond_71
sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v5, :cond_12
const-string v5, "k9"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Skipping copying key \'"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "\', value \'"
invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "\'"
invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_12
:cond_9f
return-void
.end method
.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
.registers 6
iget-object v0, p0, Lcom/fsck/k9/preferences/Editor;->changes:Ljava/util/HashMap;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, ""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object p0
.end method
.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
.registers 6
iget-object v0, p0, Lcom/fsck/k9/preferences/Editor;->changes:Ljava/util/HashMap;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, ""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object p0
.end method
.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
.registers 6
iget-object v0, p0, Lcom/fsck/k9/preferences/Editor;->changes:Ljava/util/HashMap;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, ""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object p0
.end method
.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
.registers 7
iget-object v0, p0, Lcom/fsck/k9/preferences/Editor;->changes:Ljava/util/HashMap;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, ""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object p0
.end method
.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
.registers 4
if-nez p2, :cond_6
invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:goto_5
return-object p0
:cond_6
iget-object v0, p0, Lcom/fsck/k9/preferences/Editor;->changes:Ljava/util/HashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_5
.end method
.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
.registers 3
iget-object v0, p0, Lcom/fsck/k9/preferences/Editor;->removals:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-object p0
.end method