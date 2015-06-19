.class final Lcom/mato/sdk/proxy/f;
.super Ljava/lang/Thread;
.field private final synthetic a:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mato/sdk/proxy/f;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
invoke-static {}, Landroid/os/Looper;->prepare()V
invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->f()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/mato/sdk/proxy/f;->a:Ljava/lang/String;
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
invoke-static {}, Landroid/os/Looper;->loop()V
return-void
.end method