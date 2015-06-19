.class public Lcom/admarvel/android/util/a$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field final synthetic a:Lcom/admarvel/android/util/a;
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.method public constructor <init>(Lcom/admarvel/android/util/a;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/admarvel/android/util/a$c;->a:Lcom/admarvel/android/util/a;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-object p2, p0, Lcom/admarvel/android/util/a$c;->c:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/admarvel/android/util/a$c;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".zip"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/util/a$c;->b:Ljava/lang/String;
return-void
.end method
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/String;
.registers 16
const/4 v2, 0x0
const/4 v1, 0x0
const/4 v0, 0x0
:try_start_3
aget-object v0, p1, v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iget-object v3, p0, Lcom/admarvel/android/util/a$c;->a:Lcom/admarvel/android/util/a;
invoke-static {v3}, Lcom/admarvel/android/util/a;->a(Lcom/admarvel/android/util/a;)Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v3
if-eqz v3, :cond_18
array-length v4, v3
if-nez v4, :cond_1a
:cond_18
move-object v0, v2
:goto_19
return-object v0
:cond_1a
iget-object v4, p0, Lcom/admarvel/android/util/a$c;->a:Lcom/admarvel/android/util/a;
invoke-static {v4}, Lcom/admarvel/android/util/a;->b(Lcom/admarvel/android/util/a;)I
move-result v4
if-le v0, v4, :cond_268
iget-object v0, p0, Lcom/admarvel/android/util/a$c;->a:Lcom/admarvel/android/util/a;
invoke-static {v0}, Lcom/admarvel/android/util/a;->b(Lcom/admarvel/android/util/a;)I
move-result v0
move v6, v0
:goto_29
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
array-length v5, v3
move v0, v1
:goto_35
if-ge v0, v5, :cond_3f
aget-object v8, v3, v0
invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_35
:cond_3f
invoke-static {}, Lcom/admarvel/android/util/a;->a()Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget-object v4, p0, Lcom/admarvel/android/util/a$c;->a:Lcom/admarvel/android/util/a;
invoke-static {v4}, Lcom/admarvel/android/util/a;->a(Lcom/admarvel/android/util/a;)Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/log_"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget-object v4, p0, Lcom/admarvel/android/util/a$c;->a:Lcom/admarvel/android/util/a;
invoke-static {v4}, Lcom/admarvel/android/util/a;->a(Lcom/admarvel/android/util/a;)Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/ss_"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget-object v4, p0, Lcom/admarvel/android/util/a$c;->a:Lcom/admarvel/android/util/a;
invoke-static {v4}, Lcom/admarvel/android/util/a;->a(Lcom/admarvel/android/util/a;)Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/sse_"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget-object v4, p0, Lcom/admarvel/android/util/a$c;->a:Lcom/admarvel/android/util/a;
invoke-static {v4}, Lcom/admarvel/android/util/a;->a(Lcom/admarvel/android/util/a;)Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/ssr_"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
if-eqz v0, :cond_17b
iget-object v3, p0, Lcom/admarvel/android/util/a$c;->a:Lcom/admarvel/android/util/a;
invoke-static {v3, v0}, Lcom/admarvel/android/util/a;->a(Lcom/admarvel/android/util/a;Landroid/content/Context;)I
move-result v3
move v4, v1
:goto_c6
add-int/lit8 v5, v4, 0x1
if-eq v4, v6, :cond_17b
if-gtz v3, :cond_d2
iget-object v3, p0, Lcom/admarvel/android/util/a$c;->a:Lcom/admarvel/android/util/a;
invoke-static {v3}, Lcom/admarvel/android/util/a;->b(Lcom/admarvel/android/util/a;)I
move-result v3
:cond_d2
new-instance v4, Ljava/io/File;
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
const-string v13, ".txt"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v12
if-eqz v12, :cond_fb
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_fb
new-instance v4, Ljava/io/File;
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
const-string v13, ".jpg"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v12
if-eqz v12, :cond_124
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_124
new-instance v4, Ljava/io/File;
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
const-string v13, ".jpg"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v12
if-eqz v12, :cond_14d
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_14d
new-instance v4, Ljava/io/File;
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
const-string v13, ".jpg"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v12
if-eqz v12, :cond_176
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_176
add-int/lit8 v3, v3, -0x1
move v4, v5
goto/16 :goto_c6
:cond_17b
invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
move-result v3
new-array v5, v3, [Ljava/lang/String;
invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v6
move v3, v1
:goto_186
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_198
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
add-int/lit8 v4, v3, 0x1
aput-object v1, v5, v3
move v3, v4
goto :goto_186
:cond_198
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/admarvel/android/util/a$c;->a:Lcom/admarvel/android/util/a;
invoke-static {v3}, Lcom/admarvel/android/util/a;->a(Lcom/admarvel/android/util/a;)Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, "/"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v3, p0, Lcom/admarvel/android/util/a$c;->b:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v3, Lcom/admarvel/android/util/c;
invoke-direct {v3, v5, v1}, Lcom/admarvel/android/util/c;-><init>([Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3}, Lcom/admarvel/android/util/c;->a()V
const-string v3, "http://sdk-rh.admarvel.com/adhistory/upload?"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "platform=android"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "&deviceid="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {v0}, Lcom/admarvel/android/util/OptionalUtils;->getId(Landroid/content/Context;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
if-eqz v0, :cond_266
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "&appid="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_210
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "&zipguid="
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v3, p0, Lcom/admarvel/android/util/a$c;->c:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "&timestamp="
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v3, Lcom/admarvel/android/ads/a;->a:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v3, p0, Lcom/admarvel/android/util/a$c;->a:Lcom/admarvel/android/util/a;
invoke-static {v3, v0, v1}, Lcom/admarvel/android/util/a;->a(Lcom/admarvel/android/util/a;Ljava/lang/String;Ljava/lang/String;)V
:try_end_25c
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25c} :catch_25f
move-object v0, v1
goto/16 :goto_19
:catch_25f
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
move-object v0, v2
goto/16 :goto_19
:cond_266
move-object v0, v3
goto :goto_210
:cond_268
move v6, v0
goto/16 :goto_29
.end method
.method protected a(Ljava/lang/String;)V
.registers 2
invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V
return-void
.end method
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Integer;
invoke-virtual {p0, p1}, Lcom/admarvel/android/util/a$c;->a([Ljava/lang/Integer;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/admarvel/android/util/a$c;->a(Ljava/lang/String;)V
return-void
.end method
.method protected onPreExecute()V
.registers 1
invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V
return-void
.end method