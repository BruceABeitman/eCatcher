.class final Lcom/bbm/f/t;
.super Ljava/lang/Object;
.source "NativeServiceLayer.java"
.implements Lcom/blackberry/ids/INotificationCallback;
.field final synthetic a:Lcom/bbm/f/j;
.method constructor <init>(Lcom/bbm/f/j;)V
.registers 2
iput-object p1, p0, Lcom/bbm/f/t;->a:Lcom/bbm/f/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final call(ILjava/lang/String;I)V
.registers 6
const-string v0, "IDS reports that the auth state has changed"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/f/t;->a:Lcom/bbm/f/j;
iget-object v0, v0, Lcom/bbm/f/j;->b:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->c()V
return-void
.end method