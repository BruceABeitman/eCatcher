.class final Lcom/mato/sdk/proxy/e;
.super Ljava/lang/Object;
.implements Lcom/mato/sdk/b/d;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
if-eqz p1, :cond_40
const-string/jumbo v0, "null"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_40
const-string/jumbo v0, "MAA"
const-string/jumbo v1, "the application has expired"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {p1}, Lcom/mato/sdk/proxy/Proxy;->a(Ljava/lang/String;)V
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;
move-result-object v0
if-eqz v0, :cond_3f
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;
move-result-object v0
invoke-virtual {v0}, Lcom/mato/sdk/proxy/i;->isAlive()Z
move-result v0
if-eqz v0, :cond_3f
const-string/jumbo v0, "MAA"
const-string/jumbo v1, "response success,yet the expire exists  set bypass"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/mato/sdk/a/b$e;->a()Z
move-result v0
if-eqz v0, :cond_3f
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;
move-result-object v0
invoke-virtual {v0, v5}, Lcom/mato/sdk/proxy/i;->a(Z)V
:goto_3f
:cond_3f
return-void
:cond_40
invoke-static {}, Lcom/mato/sdk/utils/g;->p()Z
move-result v0
if-eqz v0, :cond_106
const-string/jumbo v0, "\u62c9\u53d6\u914d\u7f6e\u6210\u529f"
invoke-static {v0}, Lcom/mato/sdk/proxy/Proxy;->a(Ljava/lang/String;)V
:goto_4c
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->f()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/mato/sdk/utils/g;->c(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_11f
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;
move-result-object v0
if-eqz v0, :cond_10e
invoke-static {}, Lcom/mato/sdk/a/b;->p()Z
move-result v0
if-nez v0, :cond_10e
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->stop()V
:cond_65
:goto_65
invoke-static {}, Lcom/mato/sdk/a/b$a;->a()I
move-result v0
if-ne v0, v5, :cond_b8
invoke-static {}, Lcom/mato/sdk/a/b;->a()Lcom/mato/sdk/a/b$g;
move-result-object v0
invoke-virtual {v0}, Lcom/mato/sdk/a/b$g;->a()Z
move-result v0
const-string/jumbo v1, "MAA"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "is AlwaysBackSource="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "MAA"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "the isviaproxy is"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/mato/sdk/a/b$e;->a()Z
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v0, :cond_141
const-string/jumbo v0, "MAA"
const-string/jumbo v1, "setbypass true"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;
move-result-object v0
invoke-virtual {v0, v5}, Lcom/mato/sdk/proxy/i;->a(Z)V
invoke-static {v4}, Lcom/mato/sdk/a/b$e;->a(Z)V
:cond_b8
:goto_b8
const-string/jumbo v0, ""
const-string/jumbo v1, ""
invoke-static {}, Lcom/mato/sdk/a/b;->r()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_c8
invoke-static {}, Lcom/mato/sdk/a/b;->r()Ljava/lang/String;
move-result-object v0
:cond_c8
invoke-static {}, Lcom/mato/sdk/a/b;->o()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_d2
invoke-static {}, Lcom/mato/sdk/a/b;->o()Ljava/lang/String;
move-result-object v1
:cond_d2
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;
move-result-object v2
invoke-virtual {v2, v0, v1}, Lcom/mato/sdk/proxy/i;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->i()Z
move-result v0
const-string/jumbo v1, "MAA"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "the viaproxy is:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v0, :cond_15d
invoke-static {}, Lcom/mato/sdk/utils/g;->p()Z
move-result v0
if-eqz v0, :cond_156
const-string/jumbo v0, "\u5f53\u524d\u4f7f\u7528\u52a0\u901f\u670d\u52a1"
invoke-static {v0}, Lcom/mato/sdk/proxy/Proxy;->a(Ljava/lang/String;)V
:goto_101
invoke-static {v4}, Lcom/mato/sdk/a/b;->b(Z)V
goto/16 :goto_3f
:cond_106
const-string/jumbo v0, "Pull configuration successfully"
invoke-static {v0}, Lcom/mato/sdk/proxy/Proxy;->a(Ljava/lang/String;)V
goto/16 :goto_4c
:cond_10e
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;
move-result-object v0
if-nez v0, :cond_65
invoke-static {}, Lcom/mato/sdk/a/b;->p()Z
move-result v0
if-eqz v0, :cond_65
invoke-static {v4}, Lcom/mato/sdk/proxy/Proxy;->a(Z)I
goto/16 :goto_65
:cond_11f
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;
move-result-object v0
if-eqz v0, :cond_130
invoke-static {}, Lcom/mato/sdk/a/b;->q()Z
move-result v0
if-nez v0, :cond_130
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->stop()V
goto/16 :goto_65
:cond_130
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;
move-result-object v0
if-nez v0, :cond_65
invoke-static {}, Lcom/mato/sdk/a/b;->q()Z
move-result v0
if-eqz v0, :cond_65
invoke-static {v4}, Lcom/mato/sdk/proxy/Proxy;->a(Z)I
goto/16 :goto_65
:cond_141
const-string/jumbo v0, "MAA"
const-string/jumbo v1, "setbypass false"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/mato/sdk/proxy/i;->a(Z)V
invoke-static {v5}, Lcom/mato/sdk/a/b$e;->a(Z)V
goto/16 :goto_b8
:cond_156
const-string/jumbo v0, "The use of Accelerated Service"
invoke-static {v0}, Lcom/mato/sdk/proxy/Proxy;->a(Ljava/lang/String;)V
goto :goto_101
:cond_15d
invoke-static {}, Lcom/mato/sdk/utils/g;->p()Z
move-result v0
if-eqz v0, :cond_16a
const-string/jumbo v0, "\u5f53\u524d\u76f4\u63a5\u56de\u6e90"
invoke-static {v0}, Lcom/mato/sdk/proxy/Proxy;->a(Ljava/lang/String;)V
goto :goto_101
:cond_16a
const-string/jumbo v0, "The current directly back to the source"
invoke-static {v0}, Lcom/mato/sdk/proxy/Proxy;->a(Ljava/lang/String;)V
goto :goto_101
.end method
.method public final b(Ljava/lang/String;)V
.registers 4
const-string/jumbo v0, "MAA"
const-string/jumbo v1, "authentication failure"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;
move-result-object v0
if-eqz v0, :cond_42
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;
move-result-object v0
invoke-virtual {v0}, Lcom/mato/sdk/proxy/i;->isAlive()Z
move-result v0
if-eqz v0, :cond_42
const-string/jumbo v0, "MAA"
const-string/jumbo v1, "response failed set bypass"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/mato/sdk/a/b$b;->c()Z
move-result v0
if-eqz v0, :cond_4a
invoke-static {}, Lcom/mato/sdk/a/b$e;->a()Z
move-result v0
if-eqz v0, :cond_4a
invoke-static {}, Lcom/mato/sdk/utils/g;->p()Z
move-result v0
if-eqz v0, :cond_43
const-string/jumbo v0, "\u9274\u6743\u5931\u8d25\uff0c\u76f4\u63a5\u56de\u6e90"
invoke-static {v0}, Lcom/mato/sdk/proxy/Proxy;->a(Ljava/lang/String;)V
:goto_3a
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->d()Lcom/mato/sdk/proxy/i;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/mato/sdk/proxy/i;->a(Z)V
:cond_42
:goto_42
return-void
:cond_43
const-string/jumbo v0, "Authentication failure, directly back to the source"
invoke-static {v0}, Lcom/mato/sdk/proxy/Proxy;->a(Ljava/lang/String;)V
goto :goto_3a
:cond_4a
invoke-static {p1}, Lcom/mato/sdk/proxy/Proxy;->a(Ljava/lang/String;)V
goto :goto_42
.end method