.class  Lcom/lenovo/anyshare/sdk/internal/f$3;
.super Ljava/lang/Object;
.source "ShareChannel.java"
.implements Lcom/lenovo/anyshare/sdk/internal/m$b;
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/f;
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/f;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/f$3;->a:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/lenovo/anyshare/sdk/internal/n;)V
.registers 4
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/n;->f()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "user_presence"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Z)V
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/n;->f()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "content_items"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$3;->a:Lcom/lenovo/anyshare/sdk/internal/f;
check-cast p1, Lcom/lenovo/anyshare/sdk/internal/g$d;
invoke-static {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/anyshare/sdk/internal/g$d;)V
:goto_22
:cond_22
return-void
:cond_23
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/n;->f()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "contents_notify"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$3;->a:Lcom/lenovo/anyshare/sdk/internal/f;
check-cast p1, Lcom/lenovo/anyshare/sdk/internal/g$e;
invoke-static {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/anyshare/sdk/internal/g$e;)V
goto :goto_22
:cond_38
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/n;->f()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "content_item_exist"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$3;->a:Lcom/lenovo/anyshare/sdk/internal/f;
check-cast p1, Lcom/lenovo/anyshare/sdk/internal/g$c;
invoke-static {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/anyshare/sdk/internal/g$c;)V
goto :goto_22
:cond_4d
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/n;->f()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "cancel_shared_item"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_62
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$3;->a:Lcom/lenovo/anyshare/sdk/internal/f;
check-cast p1, Lcom/lenovo/anyshare/sdk/internal/g$a;
invoke-static {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/anyshare/sdk/internal/g$a;)V
goto :goto_22
:cond_62
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/n;->f()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "content_item_error"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$3;->a:Lcom/lenovo/anyshare/sdk/internal/f;
check-cast p1, Lcom/lenovo/anyshare/sdk/internal/g$b;
invoke-static {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/anyshare/sdk/internal/g$b;)V
goto :goto_22
.end method