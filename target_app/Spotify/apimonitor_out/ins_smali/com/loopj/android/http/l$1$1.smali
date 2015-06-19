.class final Lcom/loopj/android/http/l$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/Object;
.field final synthetic b:Lcom/loopj/android/http/l$1;
.method constructor <init>(Lcom/loopj/android/http/l$1;Ljava/lang/Object;)V
.registers 3
iput-object p1, p0, Lcom/loopj/android/http/l$1$1;->b:Lcom/loopj/android/http/l$1;
iput-object p2, p0, Lcom/loopj/android/http/l$1$1;->a:Ljava/lang/Object;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 6
iget-object v0, p0, Lcom/loopj/android/http/l$1$1;->a:Ljava/lang/Object;
instance-of v0, v0, Lorg/json/JSONObject;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/loopj/android/http/l$1$1;->b:Lcom/loopj/android/http/l$1;
iget-object v1, v0, Lcom/loopj/android/http/l$1;->d:Lcom/loopj/android/http/l;
iget-object v0, p0, Lcom/loopj/android/http/l$1$1;->b:Lcom/loopj/android/http/l$1;
iget v2, v0, Lcom/loopj/android/http/l$1;->b:I
iget-object v0, p0, Lcom/loopj/android/http/l$1$1;->b:Lcom/loopj/android/http/l$1;
iget-object v0, v0, Lcom/loopj/android/http/l$1;->c:[Lorg/apache/http/Header;
iget-object v0, p0, Lcom/loopj/android/http/l$1$1;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
invoke-virtual {v1, v2, v0}, Lcom/loopj/android/http/l;->a(ILorg/json/JSONObject;)V
:goto_19
return-void
:cond_1a
iget-object v0, p0, Lcom/loopj/android/http/l$1$1;->a:Ljava/lang/Object;
instance-of v0, v0, Lorg/json/JSONArray;
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/loopj/android/http/l$1$1;->b:Lcom/loopj/android/http/l$1;
iget-object v1, v0, Lcom/loopj/android/http/l$1;->d:Lcom/loopj/android/http/l;
iget-object v0, p0, Lcom/loopj/android/http/l$1$1;->b:Lcom/loopj/android/http/l$1;
iget v0, v0, Lcom/loopj/android/http/l$1;->b:I
iget-object v0, p0, Lcom/loopj/android/http/l$1$1;->b:Lcom/loopj/android/http/l$1;
iget-object v0, v0, Lcom/loopj/android/http/l$1;->c:[Lorg/apache/http/Header;
iget-object v0, p0, Lcom/loopj/android/http/l$1$1;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONArray;
invoke-virtual {v1, v0}, Lcom/loopj/android/http/l;->a(Lorg/json/JSONArray;)V
goto :goto_19
:cond_34
iget-object v0, p0, Lcom/loopj/android/http/l$1$1;->a:Ljava/lang/Object;
instance-of v0, v0, Ljava/lang/String;
if-eqz v0, :cond_55
iget-object v0, p0, Lcom/loopj/android/http/l$1$1;->b:Lcom/loopj/android/http/l$1;
iget-object v1, v0, Lcom/loopj/android/http/l$1;->d:Lcom/loopj/android/http/l;
iget-object v0, p0, Lcom/loopj/android/http/l$1$1;->b:Lcom/loopj/android/http/l$1;
iget v2, v0, Lcom/loopj/android/http/l$1;->b:I
iget-object v0, p0, Lcom/loopj/android/http/l$1$1;->b:Lcom/loopj/android/http/l$1;
iget-object v0, v0, Lcom/loopj/android/http/l$1;->c:[Lorg/apache/http/Header;
iget-object v0, p0, Lcom/loopj/android/http/l$1$1;->a:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
new-instance v3, Lorg/json/JSONException;
const-string v4, "Response cannot be parsed as JSON data"
invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2, v0, v3}, Lcom/loopj/android/http/l;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
goto :goto_19
:cond_55
iget-object v0, p0, Lcom/loopj/android/http/l$1$1;->b:Lcom/loopj/android/http/l$1;
iget-object v0, v0, Lcom/loopj/android/http/l$1;->d:Lcom/loopj/android/http/l;
iget-object v1, p0, Lcom/loopj/android/http/l$1$1;->b:Lcom/loopj/android/http/l$1;
iget v1, v1, Lcom/loopj/android/http/l$1;->b:I
iget-object v2, p0, Lcom/loopj/android/http/l$1$1;->b:Lcom/loopj/android/http/l$1;
iget-object v2, v2, Lcom/loopj/android/http/l$1;->c:[Lorg/apache/http/Header;
new-instance v2, Lorg/json/JSONException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Unexpected response type "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Lcom/loopj/android/http/l$1$1;->a:Ljava/lang/Object;
invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/l;->a(ILjava/lang/Throwable;Lorg/json/JSONObject;)V
goto :goto_19
.end method