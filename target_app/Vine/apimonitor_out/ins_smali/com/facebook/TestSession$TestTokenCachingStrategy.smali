.class final Lcom/facebook/TestSession$TestTokenCachingStrategy;
.super Lcom/facebook/TokenCachingStrategy;
.source "TestSession.java"
.field private bundle:Landroid/os/Bundle;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/facebook/TokenCachingStrategy;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/TestSession$1;)V
.registers 2
invoke-direct {p0}, Lcom/facebook/TestSession$TestTokenCachingStrategy;-><init>()V
return-void
.end method
.method public clear()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/TestSession$TestTokenCachingStrategy;->bundle:Landroid/os/Bundle;
return-void
.end method
.method public load()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/facebook/TestSession$TestTokenCachingStrategy;->bundle:Landroid/os/Bundle;
return-object v0
.end method
.method public save(Landroid/os/Bundle;)V
.registers 2
iput-object p1, p0, Lcom/facebook/TestSession$TestTokenCachingStrategy;->bundle:Landroid/os/Bundle;
return-void
.end method