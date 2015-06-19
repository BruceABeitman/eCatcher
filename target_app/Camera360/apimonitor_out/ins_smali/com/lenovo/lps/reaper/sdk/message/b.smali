.class final Lcom/lenovo/lps/reaper/sdk/message/b;
.super Ljava/lang/Object;
.field private a:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.method public constructor <init>(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->a:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;
iput-object p3, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->c:Ljava/lang/String;
iput-object p5, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->d:Ljava/lang/String;
return-void
.end method
.method public final a()V
.registers 5
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->a:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->a:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;
iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->d:Ljava/lang/String;
iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->b:Ljava/lang/String;
iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/message/b;->c:Ljava/lang/String;
invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_f
return-void
.end method