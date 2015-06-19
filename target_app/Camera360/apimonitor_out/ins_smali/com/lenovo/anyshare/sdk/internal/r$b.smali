.class public Lcom/lenovo/anyshare/sdk/internal/r$b;
.super Lcom/lenovo/anyshare/sdk/internal/n;
.source "UserMessages.java"
.field private a:Z
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:I
.field private e:Ljava/lang/String;
.field private f:I
.field private g:Ljava/lang/String;
.field private h:I
.field private i:I
.field private j:I
.field private k:I
.field private l:Ljava/lang/String;
.field private m:Ljava/lang/String;
.field private n:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const-string/jumbo v0, "user_presence"
invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/n;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->d:I
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->b:Ljava/lang/String;
return-void
.end method
.method public a(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->g:Ljava/lang/String;
iput p2, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->h:I
iput p3, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->i:I
iput p4, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->j:I
iput p5, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->k:I
iput-object p6, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->l:Ljava/lang/String;
iput-object p7, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->m:Ljava/lang/String;
iput-object p8, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->n:Ljava/lang/String;
return-void
.end method
.method public a(Lorg/json/JSONObject;)V
.registers 5
const/4 v1, 0x0
invoke-super {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/n;->a(Lorg/json/JSONObject;)V
invoke-super {p0}, Lcom/lenovo/anyshare/sdk/internal/n;->g()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->b:Ljava/lang/String;
const-string/jumbo v0, "presence"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->a:Z
iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->a:Z
if-eqz v0, :cond_67
const-string/jumbo v0, "nickname"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->c:Ljava/lang/String;
const-string/jumbo v0, "user_icon"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f8
const-string/jumbo v0, "user_icon"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
:goto_30
iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->d:I
const-string/jumbo v0, "ip"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->e:Ljava/lang/String;
const-string/jumbo v0, "port"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->f:I
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->c:Ljava/lang/String;
const-string/jumbo v2, "online presence must have a valid user name"
invoke-static {v0, v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->e:Ljava/lang/String;
const-string/jumbo v2, "online presence must have a valid ip"
invoke-static {v0, v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;Ljava/lang/String;)V
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->f:I
if-lez v0, :cond_61
const/4 v1, 0x1
:cond_61
const-string/jumbo v0, "online presence must have a valid port"
invoke-static {v1, v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(ZLjava/lang/String;)V
:cond_67
const-string/jumbo v0, "app_id"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_79
const-string/jumbo v0, "app_id"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->g:Ljava/lang/String;
:cond_79
const-string/jumbo v0, "app_ver"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8b
const-string/jumbo v0, "app_ver"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->h:I
:cond_8b
const-string/jumbo v0, "os_ver"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_9d
const-string/jumbo v0, "os_ver"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->i:I
:cond_9d
const-string/jumbo v0, "screen_width"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_af
const-string/jumbo v0, "screen_width"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->j:I
:cond_af
const-string/jumbo v0, "screen_height"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_c1
const-string/jumbo v0, "screen_height"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->k:I
:cond_c1
const-string/jumbo v0, "device_type"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_d3
const-string/jumbo v0, "device_type"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->l:Ljava/lang/String;
:cond_d3
const-string/jumbo v0, "device_model"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_e5
const-string/jumbo v0, "device_model"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->m:Ljava/lang/String;
:cond_e5
const-string/jumbo v0, "release_channel"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f7
const-string/jumbo v0, "release_channel"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->n:Ljava/lang/String;
:cond_f7
return-void
:cond_f8
move v0, v1
goto/16 :goto_30
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->a:Z
return-void
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->a:Z
return v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->b:Ljava/lang/String;
return-object v0
.end method
.method public b(I)V
.registers 2
iput p1, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->f:I
return-void
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->c:Ljava/lang/String;
return-object v0
.end method
.method public c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->c:Ljava/lang/String;
return-void
.end method
.method public d()Lorg/json/JSONObject;
.registers 4
invoke-super {p0}, Lcom/lenovo/anyshare/sdk/internal/n;->d()Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v1, "packet_type"
const-string/jumbo v2, "presence"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "presence"
iget-boolean v2, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->a:Z
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
iget-boolean v1, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->a:Z
if-eqz v1, :cond_40
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->e:Ljava/lang/String;
const-string/jumbo v2, "online presence must have a valid ip"
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;Ljava/lang/String;)V
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->f:I
if-lez v1, :cond_99
const/4 v1, 0x1
:goto_26
const-string/jumbo v2, "online presence must have a valid port"
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(ZLjava/lang/String;)V
const-string/jumbo v1, "ip"
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->e:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "port"
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->f:I
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_40
const-string/jumbo v1, "app_id"
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->g:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "app_ver"
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->h:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v1, "os_ver"
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->i:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v1, "screen_width"
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->j:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v1, "screen_height"
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->k:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v1, "device_type"
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->l:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "device_model"
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->m:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "release_channel"
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->n:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "identity"
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "nickname"
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "user_icon"
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->d:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
return-object v0
:cond_99
const/4 v1, 0x0
goto :goto_26
.end method
.method public d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->e:Ljava/lang/String;
return-void
.end method
.method public e()I
.registers 2
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->d:I
return v0
.end method
.method public i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->e:Ljava/lang/String;
return-object v0
.end method
.method public j()I
.registers 2
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->f:I
return v0
.end method
.method public k()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->g:Ljava/lang/String;
return-object v0
.end method
.method public l()I
.registers 2
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->h:I
return v0
.end method
.method public m()I
.registers 2
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->i:I
return v0
.end method
.method public n()I
.registers 2
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->j:I
return v0
.end method
.method public o()I
.registers 2
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->k:I
return v0
.end method
.method public p()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->l:Ljava/lang/String;
return-object v0
.end method
.method public q()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->m:Ljava/lang/String;
return-object v0
.end method
.method public r()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->n:Ljava/lang/String;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "UserPresenceMessage [isOnline = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->a:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", userId = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", userName = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/r$b;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", from = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/r$b;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method