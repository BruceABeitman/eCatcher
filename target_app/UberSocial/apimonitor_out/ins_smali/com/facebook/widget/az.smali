.class  Lcom/facebook/widget/az;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "app_id"
.field public static final b:Ljava/lang/String; = "access_token"
.field private c:Landroid/content/Context;
.field private d:Lcom/facebook/aw;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:I
.field private h:Lcom/facebook/widget/bc;
.field private i:Landroid/os/Bundle;
.method protected constructor <init>(Landroid/content/Context;Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const v0, 0x1030010
iput v0, p0, Lcom/facebook/widget/az;->g:I
const-string v0, "session"
invoke-static {p2, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
invoke-virtual {p2}, Lcom/facebook/aw;->b()Z
move-result v0
if-nez v0, :cond_1b
new-instance v0, Lcom/facebook/t;
const-string v1, "Attempted to use a Session that was not open."
invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
iput-object p2, p0, Lcom/facebook/widget/az;->d:Lcom/facebook/aw;
invoke-direct {p0, p1, p3, p4}, Lcom/facebook/widget/az;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const v0, 0x1030010
iput v0, p0, Lcom/facebook/widget/az;->g:I
const-string v0, "applicationId"
invoke-static {p2, v0}, Lcom/facebook/b/q;->a(Ljava/lang/String;Ljava/lang/String;)V
iput-object p2, p0, Lcom/facebook/widget/az;->e:Ljava/lang/String;
invoke-direct {p0, p1, p3, p4}, Lcom/facebook/widget/az;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 5
iput-object p1, p0, Lcom/facebook/widget/az;->c:Landroid/content/Context;
iput-object p2, p0, Lcom/facebook/widget/az;->f:Ljava/lang/String;
if-eqz p3, :cond_9
iput-object p3, p0, Lcom/facebook/widget/az;->i:Landroid/os/Bundle;
:goto_8
return-void
:cond_9
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/facebook/widget/az;->i:Landroid/os/Bundle;
goto :goto_8
.end method
.method public a()Lcom/facebook/widget/ax;
.registers 7
iget-object v0, p0, Lcom/facebook/widget/az;->d:Lcom/facebook/aw;
if-eqz v0, :cond_49
iget-object v0, p0, Lcom/facebook/widget/az;->d:Lcom/facebook/aw;
invoke-virtual {v0}, Lcom/facebook/aw;->b()Z
move-result v0
if-eqz v0, :cond_49
iget-object v0, p0, Lcom/facebook/widget/az;->i:Landroid/os/Bundle;
const-string v1, "app_id"
iget-object v2, p0, Lcom/facebook/widget/az;->d:Lcom/facebook/aw;
invoke-virtual {v2}, Lcom/facebook/aw;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/widget/az;->i:Landroid/os/Bundle;
const-string v1, "access_token"
iget-object v2, p0, Lcom/facebook/widget/az;->d:Lcom/facebook/aw;
invoke-virtual {v2}, Lcom/facebook/aw;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_26
iget-object v0, p0, Lcom/facebook/widget/az;->i:Landroid/os/Bundle;
const-string v1, "redirect_uri"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_39
iget-object v0, p0, Lcom/facebook/widget/az;->i:Landroid/os/Bundle;
const-string v1, "redirect_uri"
const-string v2, "fbconnect://success"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_39
new-instance v0, Lcom/facebook/widget/ax;
iget-object v1, p0, Lcom/facebook/widget/az;->c:Landroid/content/Context;
iget-object v2, p0, Lcom/facebook/widget/az;->f:Ljava/lang/String;
iget-object v3, p0, Lcom/facebook/widget/az;->i:Landroid/os/Bundle;
iget v4, p0, Lcom/facebook/widget/az;->g:I
iget-object v5, p0, Lcom/facebook/widget/az;->h:Lcom/facebook/widget/bc;
invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/bc;)V
return-object v0
:cond_49
iget-object v0, p0, Lcom/facebook/widget/az;->i:Landroid/os/Bundle;
const-string v1, "app_id"
iget-object v2, p0, Lcom/facebook/widget/az;->e:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_26
.end method
.method public a(I)Lcom/facebook/widget/az;
.registers 2
iput p1, p0, Lcom/facebook/widget/az;->g:I
return-object p0
.end method
.method public a(Lcom/facebook/widget/bc;)Lcom/facebook/widget/az;
.registers 2
iput-object p1, p0, Lcom/facebook/widget/az;->h:Lcom/facebook/widget/bc;
return-object p0
.end method
.method protected b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/az;->e:Ljava/lang/String;
return-object v0
.end method
.method protected c()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/az;->c:Landroid/content/Context;
return-object v0
.end method
.method protected d()I
.registers 2
iget v0, p0, Lcom/facebook/widget/az;->g:I
return v0
.end method
.method protected e()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/az;->i:Landroid/os/Bundle;
return-object v0
.end method
.method protected f()Lcom/facebook/widget/bc;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/az;->h:Lcom/facebook/widget/bc;
return-object v0
.end method