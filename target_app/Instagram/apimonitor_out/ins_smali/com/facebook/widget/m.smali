.class  Lcom/facebook/widget/m;
.super Ljava/lang/Object;
.source "WebDialog.java"
.field private a:Landroid/content/Context;
.field private b:Lcom/facebook/bo;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:I
.field private f:Lcom/facebook/widget/o;
.field private g:Landroid/os/Bundle;
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const v0, 0x1030010
iput v0, p0, Lcom/facebook/widget/m;->e:I
const-string v0, "applicationId"
invoke-static {p2, v0}, Lcom/facebook/g/u;->a(Ljava/lang/String;Ljava/lang/String;)V
iput-object p2, p0, Lcom/facebook/widget/m;->c:Ljava/lang/String;
invoke-direct {p0, p1, p3, p4}, Lcom/facebook/widget/m;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 5
iput-object p1, p0, Lcom/facebook/widget/m;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/facebook/widget/m;->d:Ljava/lang/String;
if-eqz p3, :cond_9
iput-object p3, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;
:goto_8
return-void
:cond_9
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;
goto :goto_8
.end method
.method public a()Lcom/facebook/widget/h;
.registers 7
iget-object v0, p0, Lcom/facebook/widget/m;->b:Lcom/facebook/bo;
if-eqz v0, :cond_49
iget-object v0, p0, Lcom/facebook/widget/m;->b:Lcom/facebook/bo;
invoke-virtual {v0}, Lcom/facebook/bo;->a()Z
move-result v0
if-eqz v0, :cond_49
iget-object v0, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;
const-string v1, "app_id"
iget-object v2, p0, Lcom/facebook/widget/m;->b:Lcom/facebook/bo;
invoke-virtual {v2}, Lcom/facebook/bo;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;
const-string v1, "access_token"
iget-object v2, p0, Lcom/facebook/widget/m;->b:Lcom/facebook/bo;
invoke-virtual {v2}, Lcom/facebook/bo;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_26
iget-object v0, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;
const-string v1, "redirect_uri"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_39
iget-object v0, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;
const-string v1, "redirect_uri"
const-string v2, "fbconnect://success"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_39
new-instance v0, Lcom/facebook/widget/h;
iget-object v1, p0, Lcom/facebook/widget/m;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/facebook/widget/m;->d:Ljava/lang/String;
iget-object v3, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;
iget v4, p0, Lcom/facebook/widget/m;->e:I
iget-object v5, p0, Lcom/facebook/widget/m;->f:Lcom/facebook/widget/o;
invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/h;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/o;)V
return-object v0
:cond_49
iget-object v0, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;
const-string v1, "app_id"
iget-object v2, p0, Lcom/facebook/widget/m;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_26
.end method
.method public final a(Lcom/facebook/widget/o;)Lcom/facebook/widget/m;
.registers 2
iput-object p1, p0, Lcom/facebook/widget/m;->f:Lcom/facebook/widget/o;
return-object p0
.end method
.method protected final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/m;->c:Ljava/lang/String;
return-object v0
.end method
.method protected final c()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/m;->a:Landroid/content/Context;
return-object v0
.end method
.method protected final d()I
.registers 2
iget v0, p0, Lcom/facebook/widget/m;->e:I
return v0
.end method
.method protected final e()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;
return-object v0
.end method
.method protected final f()Lcom/facebook/widget/o;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/m;->f:Lcom/facebook/widget/o;
return-object v0
.end method