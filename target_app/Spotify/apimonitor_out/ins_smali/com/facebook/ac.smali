.class public final Lcom/facebook/ac;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/content/Context;
.field private b:Ljava/lang/String;
.field private c:Lcom/facebook/aj;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/ac;->a:Landroid/content/Context;
return-void
.end method
.method public final a()Lcom/facebook/Session;
.registers 5
new-instance v0, Lcom/facebook/Session;
iget-object v1, p0, Lcom/facebook/ac;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/facebook/ac;->b:Ljava/lang/String;
iget-object v3, p0, Lcom/facebook/ac;->c:Lcom/facebook/aj;
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/aj;)V
return-object v0
.end method
.method public final a(Ljava/lang/String;)Lcom/facebook/ac;
.registers 2
iput-object p1, p0, Lcom/facebook/ac;->b:Ljava/lang/String;
return-object p0
.end method