.class final Lcom/a/a/at;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field private synthetic a:J
.field private synthetic b:Lcom/a/a/d;
.method constructor <init>(Lcom/a/a/d;J)V
.registers 4
iput-object p1, p0, Lcom/a/a/at;->b:Lcom/a/a/d;
iput-wide p2, p0, Lcom/a/a/at;->a:J
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method private varargs a()Ljava/lang/Void;
.registers 3
:try_start_0
iget-wide v0, p0, Lcom/a/a/at;->a:J
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:try_end_5
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_e
:goto_5
iget-object v0, p0, Lcom/a/a/at;->b:Lcom/a/a/d;
const-string v1, "Background thread crash"
invoke-virtual {v0, v1}, Lcom/a/a/d;->a(Ljava/lang/String;)V
const/4 v0, 0x0
return-object v0
:catch_e
move-exception v0
goto :goto_5
.end method
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/a/a/at;->a()Ljava/lang/Void;
move-result-object v0
return-object v0
.end method