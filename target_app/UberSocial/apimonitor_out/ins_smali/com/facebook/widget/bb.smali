.class public Lcom/facebook/widget/bb;
.super Lcom/facebook/widget/az;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "feed"
.field private static final c:Ljava/lang/String; = "from"
.field private static final d:Ljava/lang/String; = "to"
.field private static final e:Ljava/lang/String; = "link"
.field private static final f:Ljava/lang/String; = "picture"
.field private static final g:Ljava/lang/String; = "source"
.field private static final h:Ljava/lang/String; = "name"
.field private static final i:Ljava/lang/String; = "caption"
.field private static final j:Ljava/lang/String; = "description"
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/aw;)V
.registers 5
const-string v0, "feed"
const/4 v1, 0x0
invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/widget/az;-><init>(Landroid/content/Context;Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/aw;Landroid/os/Bundle;)V
.registers 5
const-string v0, "feed"
invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/widget/az;-><init>(Landroid/content/Context;Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public bridge synthetic a()Lcom/facebook/widget/ax;
.registers 2
invoke-super {p0}, Lcom/facebook/widget/az;->a()Lcom/facebook/widget/ax;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;)Lcom/facebook/widget/bb;
.registers 4
invoke-virtual {p0}, Lcom/facebook/widget/bb;->e()Landroid/os/Bundle;
move-result-object v0
const-string v1, "from"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method
.method public b(Ljava/lang/String;)Lcom/facebook/widget/bb;
.registers 4
invoke-virtual {p0}, Lcom/facebook/widget/bb;->e()Landroid/os/Bundle;
move-result-object v0
const-string v1, "to"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method
.method public c(Ljava/lang/String;)Lcom/facebook/widget/bb;
.registers 4
invoke-virtual {p0}, Lcom/facebook/widget/bb;->e()Landroid/os/Bundle;
move-result-object v0
const-string v1, "link"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method
.method public d(Ljava/lang/String;)Lcom/facebook/widget/bb;
.registers 4
invoke-virtual {p0}, Lcom/facebook/widget/bb;->e()Landroid/os/Bundle;
move-result-object v0
const-string v1, "picture"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method
.method public e(Ljava/lang/String;)Lcom/facebook/widget/bb;
.registers 4
invoke-virtual {p0}, Lcom/facebook/widget/bb;->e()Landroid/os/Bundle;
move-result-object v0
const-string v1, "source"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method
.method public f(Ljava/lang/String;)Lcom/facebook/widget/bb;
.registers 4
invoke-virtual {p0}, Lcom/facebook/widget/bb;->e()Landroid/os/Bundle;
move-result-object v0
const-string v1, "name"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method
.method public g(Ljava/lang/String;)Lcom/facebook/widget/bb;
.registers 4
invoke-virtual {p0}, Lcom/facebook/widget/bb;->e()Landroid/os/Bundle;
move-result-object v0
const-string v1, "caption"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method
.method public h(Ljava/lang/String;)Lcom/facebook/widget/bb;
.registers 4
invoke-virtual {p0}, Lcom/facebook/widget/bb;->e()Landroid/os/Bundle;
move-result-object v0
const-string v1, "description"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method