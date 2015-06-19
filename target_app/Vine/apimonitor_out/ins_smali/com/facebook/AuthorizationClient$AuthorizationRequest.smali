.class  Lcom/facebook/AuthorizationClient$AuthorizationRequest;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field private applicationId:Ljava/lang/String;
.field private defaultAudience:Lcom/facebook/SessionDefaultAudience;
.field private isLegacy:Z
.field private loginBehavior:Lcom/facebook/SessionLoginBehavior;
.field private permissions:Ljava/util/List;
.field private previousAccessToken:Ljava/lang/String;
.field private requestCode:I
.field private final transient startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;
.method constructor <init>(Lcom/facebook/SessionLoginBehavior;IZLjava/util/List;Lcom/facebook/SessionDefaultAudience;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AuthorizationClient$StartActivityDelegate;)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy:Z
iput-object p1, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;
iput p2, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->requestCode:I
iput-boolean p3, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy:Z
iput-object p4, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->permissions:Ljava/util/List;
iput-object p5, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;
iput-object p6, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->applicationId:Ljava/lang/String;
iput-object p7, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->previousAccessToken:Ljava/lang/String;
iput-object p8, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;
return-void
.end method
.method  getApplicationId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->applicationId:Ljava/lang/String;
return-object v0
.end method
.method  getDefaultAudience()Lcom/facebook/SessionDefaultAudience;
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;
return-object v0
.end method
.method  getLoginBehavior()Lcom/facebook/SessionLoginBehavior;
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;
return-object v0
.end method
.method  getPermissions()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->permissions:Ljava/util/List;
return-object v0
.end method
.method  getPreviousAccessToken()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->previousAccessToken:Ljava/lang/String;
return-object v0
.end method
.method  getRequestCode()I
.registers 2
iget v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->requestCode:I
return v0
.end method
.method  getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;
return-object v0
.end method
.method  isLegacy()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy:Z
return v0
.end method
.method  needsNewTokenValidation()Z
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->previousAccessToken:Ljava/lang/String;
if-eqz v0, :cond_a
iget-boolean v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy:Z
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method  setIsLegacy(Z)V
.registers 2
iput-boolean p1, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy:Z
return-void
.end method
.method  setPermissions(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->permissions:Ljava/util/List;
return-void
.end method