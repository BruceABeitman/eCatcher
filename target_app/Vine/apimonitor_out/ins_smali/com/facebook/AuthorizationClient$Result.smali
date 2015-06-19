.class  Lcom/facebook/AuthorizationClient$Result;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field final code:Lcom/facebook/AuthorizationClient$Result$Code;
.field final errorMessage:Ljava/lang/String;
.field final token:Lcom/facebook/AccessToken;
.method private constructor <init>(Lcom/facebook/AuthorizationClient$Result$Code;Lcom/facebook/AccessToken;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;
iput-object p3, p0, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;
iput-object p1, p0, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;
return-void
.end method
.method static createCancelResult(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
.registers 4
new-instance v0, Lcom/facebook/AuthorizationClient$Result;
sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;
const/4 v2, 0x0
invoke-direct {v0, v1, v2, p0}, Lcom/facebook/AuthorizationClient$Result;-><init>(Lcom/facebook/AuthorizationClient$Result$Code;Lcom/facebook/AccessToken;Ljava/lang/String;)V
return-object v0
.end method
.method static createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
.registers 6
move-object v0, p0
if-eqz p1, :cond_1a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_1a
new-instance v1, Lcom/facebook/AuthorizationClient$Result;
sget-object v2, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;
const/4 v3, 0x0
invoke-direct {v1, v2, v3, v0}, Lcom/facebook/AuthorizationClient$Result;-><init>(Lcom/facebook/AuthorizationClient$Result$Code;Lcom/facebook/AccessToken;Ljava/lang/String;)V
return-object v1
.end method
.method static createTokenResult(Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;
.registers 4
new-instance v0, Lcom/facebook/AuthorizationClient$Result;
sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/facebook/AuthorizationClient$Result$Code;
const/4 v2, 0x0
invoke-direct {v0, v1, p0, v2}, Lcom/facebook/AuthorizationClient$Result;-><init>(Lcom/facebook/AuthorizationClient$Result$Code;Lcom/facebook/AccessToken;Ljava/lang/String;)V
return-object v0
.end method