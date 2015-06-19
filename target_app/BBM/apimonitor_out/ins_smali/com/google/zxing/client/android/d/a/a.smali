.class final Lcom/google/zxing/client/android/d/a/a;
.super Lcom/google/zxing/client/android/d/a/c;
.source "BookResultInfoRetriever.java"
.field private final a:Ljava/lang/String;
.field private final b:Ljava/lang/String;
.field private final c:Landroid/content/Context;
.method constructor <init>(Landroid/widget/TextView;Ljava/lang/String;Lcom/google/zxing/client/android/c/c;Landroid/content/Context;)V
.registers 6
invoke-direct {p0, p1, p3}, Lcom/google/zxing/client/android/d/a/c;-><init>(Landroid/widget/TextView;Lcom/google/zxing/client/android/c/c;)V
iput-object p2, p0, Lcom/google/zxing/client/android/d/a/a;->a:Ljava/lang/String;
sget v0, Lcom/google/zxing/client/android/y;->msg_google_books:I
invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/zxing/client/android/d/a/a;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/google/zxing/client/android/d/a/a;->c:Landroid/content/Context;
return-void
.end method
.method final a()V
.registers 9
const/4 v2, 0x0
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "https://www.googleapis.com/books/v1/volumes?q=isbn:"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/zxing/client/android/d/a/a;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/google/zxing/client/android/m;->b:Lcom/google/zxing/client/android/m;
invoke-static {v0, v1}, Lcom/google/zxing/client/android/k;->a(Ljava/lang/String;Lcom/google/zxing/client/android/m;)Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
move-result v1
if-nez v1, :cond_1f
:goto_1e
:cond_1e
return-void
:cond_1f
const/4 v1, 0x0
:try_start_20
new-instance v3, Lorg/json/JSONTokener;
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/json/JSONObject;
const-string v3, "items"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
if-eqz v0, :cond_1e
const/4 v3, 0x0
invoke-virtual {v0, v3}, Lorg/json/JSONArray;->isNull(I)Z
move-result v3
if-nez v3, :cond_1e
const/4 v3, 0x0
invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/json/JSONObject;
const-string v3, "volumeInfo"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
if-eqz v0, :cond_1e
const-string v3, "title"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v4, "pageCount"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string v5, "authors"
invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v5
if-eqz v5, :cond_8d
const/4 v0, 0x0
invoke-virtual {v5, v0}, Lorg/json/JSONArray;->isNull(I)Z
move-result v0
if-nez v0, :cond_8d
new-instance v0, Ljava/util/ArrayList;
invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
move-result v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
move v1, v2
:goto_72
invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
move-result v6
if-ge v1, v6, :cond_8e
invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:try_end_7f
.catch Lorg/json/JSONException; {:try_start_20 .. :try_end_7f} :catch_82
add-int/lit8 v1, v1, 0x1
goto :goto_72
:catch_82
move-exception v0
new-instance v1, Ljava/io/IOException;
invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_8d
move-object v0, v1
:cond_8e
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
if-eqz v3, :cond_9e
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_9e
invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_9e
if-eqz v0, :cond_d0
invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z
move-result v1
if-nez v1, :cond_d0
const/4 v1, 0x1
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_b0
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_c9
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v1, :cond_c3
move v1, v2
:goto_bf
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_b0
:cond_c3
const-string v7, ", "
invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_bf
:cond_c9
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_d0
if-eqz v4, :cond_ee
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_ee
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "pp."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_ee
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "http://www.google."
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/zxing/client/android/d/a/a;->c:Landroid/content/Context;
invoke-static {v1}, Lcom/google/zxing/client/android/r;->c(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/search?tbm=bks&source=zxing&q="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/google/zxing/client/android/d/a/a;->a:Ljava/lang/String;
iget-object v3, p0, Lcom/google/zxing/client/android/d/a/a;->b:Ljava/lang/String;
invoke-interface {v5}, Ljava/util/Collection;->size()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
invoke-interface {v5, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v4, p0, Lcom/google/zxing/client/android/d/a/a;->a:Ljava/lang/String;
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v2, v3, v0, v1}, Lcom/google/zxing/client/android/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_1e
.end method