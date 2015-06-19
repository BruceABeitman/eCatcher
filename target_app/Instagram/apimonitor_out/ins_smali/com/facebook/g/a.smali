.class public final Lcom/facebook/g/a;
.super Lcom/facebook/bl;
.source "CacheableRequestBatch.java"
.field private a:Ljava/lang/String;
.field private b:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/facebook/bl;-><init>()V
return-void
.end method
.method public final i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/g/a;->a:Ljava/lang/String;
return-object v0
.end method
.method public final j()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/g/a;->b:Z
return v0
.end method