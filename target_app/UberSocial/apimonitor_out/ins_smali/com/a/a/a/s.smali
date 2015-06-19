.class final Lcom/a/a/a/s;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private synthetic a:Lcom/a/a/a/o;
.method constructor <init>(Lcom/a/a/a/o;)V
.registers 2
iput-object p1, p0, Lcom/a/a/a/s;->a:Lcom/a/a/a/o;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
:try_start_0
iget-object v0, p0, Lcom/a/a/a/s;->a:Lcom/a/a/a/o;
iget-object v0, v0, Lcom/a/a/a/o;->a:Lcom/a/a/a/u;
invoke-interface {v0}, Lcom/a/a/a/u;->a()V
:goto_7
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
const-string v0, "Crashlytics failed to send analytics files."
invoke-static {v0}, Lcom/a/a/a/bc;->d(Ljava/lang/String;)V
goto :goto_7
.end method