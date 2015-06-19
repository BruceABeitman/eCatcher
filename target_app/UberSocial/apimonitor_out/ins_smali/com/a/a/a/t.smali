.class final Lcom/a/a/a/t;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private synthetic a:Lcom/a/a/a/o;
.method constructor <init>(Lcom/a/a/a/o;)V
.registers 2
iput-object p1, p0, Lcom/a/a/a/t;->a:Lcom/a/a/a/o;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/a/a/a/t;->a:Lcom/a/a/a/o;
iget-object v0, v0, Lcom/a/a/a/o;->a:Lcom/a/a/a/u;
iget-object v1, p0, Lcom/a/a/a/t;->a:Lcom/a/a/a/o;
new-instance v2, Lcom/a/a/a/i;
invoke-direct {v2}, Lcom/a/a/a/i;-><init>()V
iput-object v2, v1, Lcom/a/a/a/o;->a:Lcom/a/a/a/u;
invoke-interface {v0}, Lcom/a/a/a/u;->b()V
:goto_10
:try_end_10
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
const-string v0, "Crashlytics failed to disable analytics."
invoke-static {v0}, Lcom/a/a/a/bc;->d(Ljava/lang/String;)V
goto :goto_10
.end method