.class abstract Lcom/facebook/AuthorizationClient$AuthHandler;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field  methodLoggingExtras:Ljava/util/Map;
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
.registers 2
iput-object p1, p0, Lcom/facebook/AuthorizationClient$AuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method abstract a()Ljava/lang/String;
.end method
.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthHandler;->methodLoggingExtras:Ljava/util/Map;
if-nez v0, :cond_b
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/facebook/AuthorizationClient$AuthHandler;->methodLoggingExtras:Ljava/util/Map;
:cond_b
iget-object v1, p0, Lcom/facebook/AuthorizationClient$AuthHandler;->methodLoggingExtras:Ljava/util/Map;
if-nez p2, :cond_14
const/4 v0, 0x0
:goto_10
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
:cond_14
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_10
.end method
.method  a(ILandroid/content/Intent;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method abstract a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
.end method
.method  b()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method  c()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method  d()V
.registers 1
return-void
.end method