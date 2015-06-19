.class public Lcom/instagram/l/b;
.super Ljava/lang/Object;
.source "ExperimentParameter.java"
.field private final a:Ljava/lang/String;
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/l/b;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/instagram/l/b;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/instagram/l/b;->c:Ljava/lang/String;
return-void
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/l/b;->a:Ljava/lang/String;
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/l/b;->b:Ljava/lang/String;
return-object v0
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/l/b;->c:Ljava/lang/String;
return-object v0
.end method
.method public final f()Ljava/lang/String;
.registers 2
invoke-static {}, Lcom/instagram/l/j;->a()Lcom/instagram/l/i;
move-result-object v0
invoke-interface {v0, p0}, Lcom/instagram/l/i;->a(Lcom/instagram/l/b;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final g()V
.registers 2
invoke-static {}, Lcom/instagram/l/j;->a()Lcom/instagram/l/i;
move-result-object v0
invoke-interface {v0, p0}, Lcom/instagram/l/i;->b(Lcom/instagram/l/b;)V
return-void
.end method
.method public final h()Ljava/lang/String;
.registers 2
:try_start_0
invoke-virtual {p0}, Lcom/instagram/l/b;->f()Ljava/lang/String;
:try_end_3
.catchall {:try_start_0 .. :try_end_3} :catchall_8
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/l/b;->g()V
return-object v0
:catchall_8
move-exception v0
invoke-virtual {p0}, Lcom/instagram/l/b;->g()V
throw v0
.end method