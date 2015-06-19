.class  Lcom/glympse/android/lib/i;
.super Ljava/lang/Object;
.source "AccountManager.java"
.implements Lcom/glympse/android/lib/GAccountProvider;
.field private _handler:Lcom/glympse/android/core/GHandler;
.field private g:Lcom/glympse/android/lib/GAccountImportListener;
.field private gG:Lcom/glympse/android/core/GPrimitive;
.method public constructor <init>(Lcom/glympse/android/core/GHandler;Lcom/glympse/android/core/GPrimitive;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/i;->_handler:Lcom/glympse/android/core/GHandler;
iput-object p2, p0, Lcom/glympse/android/lib/i;->gG:Lcom/glympse/android/core/GPrimitive;
return-void
.end method
.method public cancel()V
.registers 1
return-void
.end method
.method public create(Ljava/lang/String;)Z
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/i;->g:Lcom/glympse/android/lib/GAccountImportListener;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/i;->_handler:Lcom/glympse/android/core/GHandler;
new-instance v1, Lcom/glympse/android/lib/h;
iget-object v2, p0, Lcom/glympse/android/lib/i;->g:Lcom/glympse/android/lib/GAccountImportListener;
iget-object v3, p0, Lcom/glympse/android/lib/i;->gG:Lcom/glympse/android/core/GPrimitive;
invoke-direct {v1, v2, v3}, Lcom/glympse/android/lib/h;-><init>(Lcom/glympse/android/lib/GAccountImportListener;Lcom/glympse/android/core/GPrimitive;)V
invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V
const/4 v0, 0x1
goto :goto_5
.end method
.method public setAccountListener(Lcom/glympse/android/lib/GAccountImportListener;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/i;->g:Lcom/glympse/android/lib/GAccountImportListener;
return-void
.end method