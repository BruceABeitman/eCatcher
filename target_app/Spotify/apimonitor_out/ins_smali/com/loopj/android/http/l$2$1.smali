.class final Lcom/loopj/android/http/l$2$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/Object;
.field final synthetic b:Lcom/loopj/android/http/l$2;
.method constructor <init>(Lcom/loopj/android/http/l$2;Ljava/lang/Object;)V
.registers 3
iput-object p1, p0, Lcom/loopj/android/http/l$2$1;->b:Lcom/loopj/android/http/l$2;
iput-object p2, p0, Lcom/loopj/android/http/l$2$1;->a:Ljava/lang/Object;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 6
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->a:Ljava/lang/Object;
instance-of v0, v0, Lorg/json/JSONObject;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->b:Lcom/loopj/android/http/l$2;
iget-object v1, v0, Lcom/loopj/android/http/l$2;->e:Lcom/loopj/android/http/l;
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->b:Lcom/loopj/android/http/l$2;
iget v2, v0, Lcom/loopj/android/http/l$2;->b:I
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->b:Lcom/loopj/android/http/l$2;
iget-object v0, v0, Lcom/loopj/android/http/l$2;->c:[Lorg/apache/http/Header;
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->b:Lcom/loopj/android/http/l$2;
iget-object v3, v0, Lcom/loopj/android/http/l$2;->d:Ljava/lang/Throwable;
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
invoke-virtual {v1, v2, v3, v0}, Lcom/loopj/android/http/l;->a(ILjava/lang/Throwable;Lorg/json/JSONObject;)V
:goto_1d
return-void
:cond_1e
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->a:Ljava/lang/Object;
instance-of v0, v0, Lorg/json/JSONArray;
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->b:Lcom/loopj/android/http/l$2;
iget-object v1, v0, Lcom/loopj/android/http/l$2;->e:Lcom/loopj/android/http/l;
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->b:Lcom/loopj/android/http/l$2;
iget v2, v0, Lcom/loopj/android/http/l$2;->b:I
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->b:Lcom/loopj/android/http/l$2;
iget-object v0, v0, Lcom/loopj/android/http/l$2;->c:[Lorg/apache/http/Header;
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->b:Lcom/loopj/android/http/l$2;
iget-object v3, v0, Lcom/loopj/android/http/l$2;->d:Ljava/lang/Throwable;
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONArray;
invoke-virtual {v1, v2, v3, v0}, Lcom/loopj/android/http/l;->a(ILjava/lang/Throwable;Lorg/json/JSONArray;)V
goto :goto_1d
:cond_3c
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->a:Ljava/lang/Object;
instance-of v0, v0, Ljava/lang/String;
if-eqz v0, :cond_5a
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->b:Lcom/loopj/android/http/l$2;
iget-object v1, v0, Lcom/loopj/android/http/l$2;->e:Lcom/loopj/android/http/l;
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->b:Lcom/loopj/android/http/l$2;
iget v2, v0, Lcom/loopj/android/http/l$2;->b:I
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->b:Lcom/loopj/android/http/l$2;
iget-object v0, v0, Lcom/loopj/android/http/l$2;->c:[Lorg/apache/http/Header;
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->a:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
iget-object v3, p0, Lcom/loopj/android/http/l$2$1;->b:Lcom/loopj/android/http/l$2;
iget-object v3, v3, Lcom/loopj/android/http/l$2;->d:Ljava/lang/Throwable;
invoke-virtual {v1, v2, v0, v3}, Lcom/loopj/android/http/l;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1d
:cond_5a
iget-object v0, p0, Lcom/loopj/android/http/l$2$1;->b:Lcom/loopj/android/http/l$2;
iget-object v0, v0, Lcom/loopj/android/http/l$2;->e:Lcom/loopj/android/http/l;
iget-object v1, p0, Lcom/loopj/android/http/l$2$1;->b:Lcom/loopj/android/http/l$2;
iget v1, v1, Lcom/loopj/android/http/l$2;->b:I
iget-object v2, p0, Lcom/loopj/android/http/l$2$1;->b:Lcom/loopj/android/http/l$2;
iget-object v2, v2, Lcom/loopj/android/http/l$2;->c:[Lorg/apache/http/Header;
new-instance v2, Lorg/json/JSONException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Unexpected response type "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Lcom/loopj/android/http/l$2$1;->a:Ljava/lang/Object;
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
goto :goto_1d
.end method