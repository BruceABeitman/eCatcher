.class public Lcom/tencent/open/a$b;
.super Ljava/lang/Object;
.source "ProGuard"
.field  a:Ljava/lang/ref/WeakReference;
.field  b:J
.field  c:Ljava/lang/String;
.method public constructor <init>(Landroid/webkit/WebView;JLjava/lang/String;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/tencent/open/a$b;->a:Ljava/lang/ref/WeakReference;
iput-wide p2, p0, Lcom/tencent/open/a$b;->b:J
iput-object p4, p0, Lcom/tencent/open/a$b;->c:Ljava/lang/String;
return-void
.end method
.method public a()V
.registers 5
iget-object v0, p0, Lcom/tencent/open/a$b;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "javascript:window.JsBridge&&JsBridge.callback("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p0, Lcom/tencent/open/a$b;->b:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ",{\'r\':1,\'result\':\'no such method\'})"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
goto :goto_a
.end method
.method public a(Ljava/lang/Object;)V
.registers 7
iget-object v0, p0, Lcom/tencent/open/a$b;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
const-string/jumbo v1, "\'undefined\'"
instance-of v2, p1, Ljava/lang/String;
if-eqz v2, :cond_6f
check-cast p1, Ljava/lang/String;
const-string/jumbo v1, "\\"
const-string/jumbo v2, "\\\\"
invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "\'"
const-string/jumbo v3, "\\\'"
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "\'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:goto_43
:cond_43
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "javascript:window.JsBridge&&JsBridge.callback("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-wide v3, p0, Lcom/tencent/open/a$b;->b:J
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ",{\'r\':0,\'result\':"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "});"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
goto :goto_a
:cond_6f
instance-of v2, p1, Ljava/lang/Number;
if-nez v2, :cond_83
instance-of v2, p1, Ljava/lang/Long;
if-nez v2, :cond_83
instance-of v2, p1, Ljava/lang/Integer;
if-nez v2, :cond_83
instance-of v2, p1, Ljava/lang/Double;
if-nez v2, :cond_83
instance-of v2, p1, Ljava/lang/Float;
if-eqz v2, :cond_88
:cond_83
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_43
:cond_88
instance-of v2, p1, Ljava/lang/Boolean;
if-eqz v2, :cond_43
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_43
.end method
.method public a(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/tencent/open/a$b;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
if-eqz v0, :cond_21
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "javascript:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
:cond_21
return-void
.end method