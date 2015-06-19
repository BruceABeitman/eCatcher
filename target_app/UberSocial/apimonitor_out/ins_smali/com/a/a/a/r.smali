.class final Lcom/a/a/a/r;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private synthetic a:Lcom/a/a/a/al;
.field private synthetic b:Ljava/lang/String;
.field private synthetic c:Lcom/a/a/a/o;
.method constructor <init>(Lcom/a/a/a/o;Lcom/a/a/a/al;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/a/a/a/r;->c:Lcom/a/a/a/o;
iput-object p2, p0, Lcom/a/a/a/r;->a:Lcom/a/a/a/al;
iput-object p3, p0, Lcom/a/a/a/r;->b:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/a/a/a/r;->c:Lcom/a/a/a/o;
iget-object v0, v0, Lcom/a/a/a/o;->a:Lcom/a/a/a/u;
iget-object v1, p0, Lcom/a/a/a/r;->a:Lcom/a/a/a/al;
iget-object v2, p0, Lcom/a/a/a/r;->b:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Lcom/a/a/a/u;->a(Lcom/a/a/a/al;Ljava/lang/String;)V
:goto_b
:try_end_b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
const-string v0, "Crashlytics failed to set analytics settings data."
invoke-static {v0}, Lcom/a/a/a/bc;->d(Ljava/lang/String;)V
goto :goto_b
.end method