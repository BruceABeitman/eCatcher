.class final Lcom/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/concurrent/Callable;
.field private synthetic a:Lcom/a/a/bf;
.method constructor <init>(Lcom/a/a/bf;)V
.registers 2
iput-object p1, p0, Lcom/a/a/b;->a:Lcom/a/a/bf;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a()Ljava/lang/Boolean;
.registers 6
:try_start_0
iget-object v0, p0, Lcom/a/a/b;->a:Lcom/a/a/bf;
invoke-static {v0}, Lcom/a/a/bf;->f(Lcom/a/a/bf;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Initialization marker file removed: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
:try_end_29
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2b
move-result-object v0
:goto_2a
return-object v0
:catch_2b
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Problem encountered deleting Crashlytics initialization marker."
invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_2a
.end method
.method public final synthetic call()Ljava/lang/Object;
.registers 2
invoke-direct {p0}, Lcom/a/a/b;->a()Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method