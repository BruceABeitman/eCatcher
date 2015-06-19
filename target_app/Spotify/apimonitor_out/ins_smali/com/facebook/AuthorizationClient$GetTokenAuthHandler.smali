.class  Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;
.super Lcom/facebook/AuthorizationClient$AuthHandler;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x1L
.field private transient a:Lcom/facebook/j;
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
.registers 2
iput-object p1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$AuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V
return-void
.end method
.method final a()Ljava/lang/String;
.registers 2
const-string v0, "get_token"
return-object v0
.end method
.method final a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Landroid/os/Bundle;)V
.registers 8
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->a:Lcom/facebook/j;
iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
invoke-static {v0}, Lcom/facebook/AuthorizationClient;->a(Lcom/facebook/AuthorizationClient;)V
if-eqz p2, :cond_65
const-string v0, "com.facebook.platform.extra.PERMISSIONS"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->b()Ljava/util/List;
move-result-object v0
if-eqz v1, :cond_32
if-eqz v0, :cond_1e
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z
move-result v2
if-eqz v2, :cond_32
:cond_1e
sget-object v0, Lcom/facebook/AccessTokenSource;->d:Lcom/facebook/AccessTokenSource;
invoke-static {p2, v0}, Lcom/facebook/AccessToken;->a(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
move-result-object v0
iget-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
iget-object v1, v1, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-static {v1, v0}, Lcom/facebook/AuthorizationClient$Result;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;
move-result-object v0
iget-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
invoke-virtual {v1, v0}, Lcom/facebook/AuthorizationClient;->a(Lcom/facebook/AuthorizationClient$Result;)V
:goto_31
return-void
:cond_32
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_3b
:cond_3b
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_51
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_3b
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_3b
:cond_51
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_62
const-string v0, "new_permissions"
const-string v1, ","
invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V
:cond_62
invoke-virtual {p1, v2}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->a(Ljava/util/List;)V
:cond_65
iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient;->a()V
goto :goto_31
.end method
.method final a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
.registers 5
new-instance v0, Lcom/facebook/j;
iget-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
iget-object v1, v1, Lcom/facebook/AuthorizationClient;->a:Landroid/content/Context;
invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->e()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/facebook/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V
iput-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->a:Lcom/facebook/j;
iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->a:Lcom/facebook/j;
invoke-virtual {v0}, Lcom/facebook/j;->a()Z
move-result v0
if-nez v0, :cond_19
const/4 v0, 0x0
:goto_18
return v0
:cond_19
iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
invoke-static {v0}, Lcom/facebook/AuthorizationClient;->b(Lcom/facebook/AuthorizationClient;)V
new-instance v0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;
invoke-direct {v0, p0, p1}, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;-><init>(Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
iget-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->a:Lcom/facebook/j;
invoke-virtual {v1, v0}, Lcom/facebook/j;->a(Lcom/facebook/internal/ac;)V
const/4 v0, 0x1
goto :goto_18
.end method
.method final b()Z
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->a:Lcom/facebook/j;
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method final d()V
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->a:Lcom/facebook/j;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->a:Lcom/facebook/j;
invoke-virtual {v0}, Lcom/facebook/j;->b()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->a:Lcom/facebook/j;
:cond_c
return-void
.end method