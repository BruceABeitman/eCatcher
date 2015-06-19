.class final Lcom/a/a/a/e;
.super Lcom/a/a/a/bb;
.source "SourceFile"
.field private synthetic a:Lcom/a/a/a/d;
.method constructor <init>(Lcom/a/a/a/d;)V
.registers 2
iput-object p1, p0, Lcom/a/a/a/e;->a:Lcom/a/a/a/d;
invoke-direct {p0}, Lcom/a/a/a/bb;-><init>()V
return-void
.end method
.method public final a()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/a/a/a/e;->a:Lcom/a/a/a/d;
invoke-static {v0}, Lcom/a/a/a/d;->a(Lcom/a/a/a/d;)V
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Problem encountered during Crashlytics initialization."
invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
.end method