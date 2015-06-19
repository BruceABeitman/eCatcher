.class public Lcom/facebook/b/a;
.super Lcom/facebook/aq;
.source "SourceFile"
.field private a:Ljava/lang/String;
.field private b:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/facebook/aq;-><init>()V
return-void
.end method
.method public varargs constructor <init>([Lcom/facebook/ai;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/aq;-><init>([Lcom/facebook/ai;)V
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/facebook/b/a;->b:Z
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/b/a;->a:Ljava/lang/String;
return-void
.end method
.method public final k()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/b/a;->a:Ljava/lang/String;
return-object v0
.end method
.method public final l()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/b/a;->b:Z
return v0
.end method