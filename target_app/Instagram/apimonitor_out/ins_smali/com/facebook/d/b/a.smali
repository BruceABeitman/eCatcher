.class public abstract Lcom/facebook/d/b/a;
.super Ljava/lang/Object;
.source "AbstractFbErrorReporter.java"
.implements Lcom/facebook/d/b/c;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-static {p1, p2}, Lcom/facebook/d/b/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/d/b/g;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/facebook/d/b/a;->a(Lcom/facebook/d/b/g;)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 5
invoke-static {p1, p2}, Lcom/facebook/d/b/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/d/b/h;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/facebook/d/b/h;->a(Ljava/lang/Throwable;)Lcom/facebook/d/b/h;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/d/b/h;->h()Lcom/facebook/d/b/g;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/facebook/d/b/a;->a(Lcom/facebook/d/b/g;)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 4
invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/d/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
return-void
.end method
.method public final b(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-static {p1, p2}, Lcom/facebook/d/b/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/d/b/h;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/d/b/h;->e()Lcom/facebook/d/b/h;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/d/b/h;->h()Lcom/facebook/d/b/g;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/facebook/d/b/a;->a(Lcom/facebook/d/b/g;)V
return-void
.end method
.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 5
invoke-static {p1, p2}, Lcom/facebook/d/b/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/d/b/h;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/d/b/h;->e()Lcom/facebook/d/b/h;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/facebook/d/b/h;->a(Ljava/lang/Throwable;)Lcom/facebook/d/b/h;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/d/b/h;->h()Lcom/facebook/d/b/g;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/facebook/d/b/a;->a(Lcom/facebook/d/b/g;)V
return-void
.end method
.method public final b(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 4
invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/d/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
return-void
.end method