.class final Lcom/facebook/ab;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field final synthetic a:Lcom/facebook/Session;
.field private final b:Ljava/lang/String;
.field private final c:Landroid/content/Context;
.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/content/Context;)V
.registers 5
iput-object p1, p0, Lcom/facebook/ab;->a:Lcom/facebook/Session;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-object p2, p0, Lcom/facebook/ab;->b:Ljava/lang/String;
invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/facebook/ab;->c:Landroid/content/Context;
return-void
.end method
.method private varargs a()Ljava/lang/Void;
.registers 4
:try_start_0
iget-object v0, p0, Lcom/facebook/ab;->c:Landroid/content/Context;
iget-object v1, p0, Lcom/facebook/ab;->b:Ljava/lang/String;
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Lcom/facebook/ah;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/aa;
:try_end_8
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a
:goto_8
const/4 v0, 0x0
return-object v0
:catch_a
move-exception v0
invoke-static {}, Lcom/facebook/internal/ai;->a()V
goto :goto_8
.end method
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/facebook/ab;->a()Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
.registers 4
iget-object v1, p0, Lcom/facebook/ab;->a:Lcom/facebook/Session;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/ab;->a:Lcom/facebook/Session;
invoke-static {v0}, Lcom/facebook/Session;->f(Lcom/facebook/Session;)Lcom/facebook/ab;
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_a
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method