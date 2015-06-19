.class public final Lcom/facebook/Session$Builder;
.super Ljava/lang/Object;
.source "Session.java"
.field private applicationId:Ljava/lang/String;
.field private final context:Landroid/content/Context;
.field private tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/Session$Builder;->context:Landroid/content/Context;
return-void
.end method
.method public build()Lcom/facebook/Session;
.registers 5
new-instance v0, Lcom/facebook/Session;
iget-object v1, p0, Lcom/facebook/Session$Builder;->context:Landroid/content/Context;
iget-object v2, p0, Lcom/facebook/Session$Builder;->applicationId:Ljava/lang/String;
iget-object v3, p0, Lcom/facebook/Session$Builder;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;)V
return-object v0
.end method
.method public setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;
.registers 2
iput-object p1, p0, Lcom/facebook/Session$Builder;->applicationId:Ljava/lang/String;
return-object p0
.end method
.method public setTokenCachingStrategy(Lcom/facebook/TokenCachingStrategy;)Lcom/facebook/Session$Builder;
.registers 2
iput-object p1, p0, Lcom/facebook/Session$Builder;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
return-object p0
.end method