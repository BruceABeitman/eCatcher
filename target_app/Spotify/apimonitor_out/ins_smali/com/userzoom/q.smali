.class final Lcom/userzoom/q;
.super Landroid/os/AsyncTask;
.field private synthetic a:Lcom/userzoom/n;
.method constructor <init>(Lcom/userzoom/n;)V
.registers 2
iput-object p1, p0, Lcom/userzoom/q;->a:Lcom/userzoom/n;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/userzoom/q;->a:Lcom/userzoom/n;
invoke-static {v0}, Lcom/userzoom/n;->g(Lcom/userzoom/n;)Lcom/userzoom/v;
move-result-object v0
iget-object v1, p0, Lcom/userzoom/q;->a:Lcom/userzoom/n;
invoke-static {v1}, Lcom/userzoom/n;->f(Lcom/userzoom/n;)Landroid/content/Context;
iget-object v1, p0, Lcom/userzoom/q;->a:Lcom/userzoom/n;
invoke-static {v1}, Lcom/userzoom/n;->c(Lcom/userzoom/n;)Ljava/util/ArrayList;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/userzoom/v;->a(Ljava/util/List;Z)V
const/4 v0, 0x0
return-object v0
.end method