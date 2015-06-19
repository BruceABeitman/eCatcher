.class final Lcom/bbm/f/x;
.super Ljava/lang/Object;
.source "NativeServiceLayer.java"
.implements Lcom/bbm/f/a;
.field final a:Lcom/rim/bbm/BbmCoreService$MessageType;
.field final b:Lcom/bbm/f/aa;
.field final synthetic c:Lcom/bbm/f/j;
.method public constructor <init>(Lcom/bbm/f/j;Lcom/rim/bbm/BbmCoreService$MessageType;)V
.registers 4
iput-object p1, p0, Lcom/bbm/f/x;->c:Lcom/bbm/f/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/f/aa;
invoke-direct {v0}, Lcom/bbm/f/aa;-><init>()V
iput-object v0, p0, Lcom/bbm/f/x;->b:Lcom/bbm/f/aa;
iput-object p2, p0, Lcom/bbm/f/x;->a:Lcom/rim/bbm/BbmCoreService$MessageType;
return-void
.end method
.method public final a()Lcom/bbm/f/b;
.registers 2
iget-object v0, p0, Lcom/bbm/f/x;->c:Lcom/bbm/f/j;
invoke-static {v0}, Lcom/bbm/f/j;->a(Lcom/bbm/f/j;)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/f/b;
return-object v0
.end method
.method public final a(Lcom/bbm/f/ab;)V
.registers 8
const/4 v5, 0x0
invoke-virtual {p1}, Lcom/bbm/f/ab;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/bbm/f/ab;->b()Lorg/json/JSONObject;
move-result-object v1
invoke-static {v1}, Lcom/bbm/x;->a(Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v1
invoke-static {v5, v1}, Lcom/bbm/x;->a(ZLjava/lang/String;)V
:try_start_10
const-string v1, "Message to service. type: %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/bbm/f/x;->a:Lcom/rim/bbm/BbmCoreService$MessageType;
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/bbm/x;->g(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v1, p0, Lcom/bbm/f/x;->c:Lcom/bbm/f/j;
invoke-static {v1}, Lcom/bbm/f/j;->b(Lcom/bbm/f/j;)Lcom/rim/bbm/BbmCoreService;
move-result-object v1
iget-object v2, p0, Lcom/bbm/f/x;->a:Lcom/rim/bbm/BbmCoreService$MessageType;
const-string v3, "UTF-8"
invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {v1, v2, v0}, Lcom/rim/bbm/BbmCoreService;->msgToService(Lcom/rim/bbm/BbmCoreService$MessageType;[B)Z
const-string v0, "Message to service. type: %s complete"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/bbm/f/x;->a:Lcom/rim/bbm/BbmCoreService$MessageType;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/bbm/x;->g(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_3b
:try_end_3b
.catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_3b} :catch_3c
return-void
:catch_3c
move-exception v0
const-string v1, "Apparently UTF-8 isn\'t supported on this platform. This should never happen."
new-array v2, v5, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/bbm/x;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_3b
.end method
.method public final a(Lcom/bbm/f/ac;)V
.registers 3
iget-object v0, p0, Lcom/bbm/f/x;->b:Lcom/bbm/f/aa;
invoke-virtual {v0, p1}, Lcom/bbm/f/aa;->a(Lcom/bbm/f/ac;)V
return-void
.end method
.method public final b(Lcom/bbm/f/ac;)V
.registers 3
iget-object v0, p0, Lcom/bbm/f/x;->b:Lcom/bbm/f/aa;
invoke-virtual {v0, p1}, Lcom/bbm/f/aa;->b(Lcom/bbm/f/ac;)V
return-void
.end method