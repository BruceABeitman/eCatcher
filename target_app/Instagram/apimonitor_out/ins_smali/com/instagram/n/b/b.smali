.class final Lcom/instagram/n/b/b;
.super Lcom/instagram/common/a/a/l;
.source "AutoUpdateHelper.java"
.field final synthetic a:I
.field final synthetic b:Lcom/instagram/n/b/a;
.method constructor <init>(Lcom/instagram/n/b/a;I)V
.registers 3
iput-object p1, p0, Lcom/instagram/n/b/b;->b:Lcom/instagram/n/b/a;
iput p2, p0, Lcom/instagram/n/b/b;->a:I
invoke-direct {p0}, Lcom/instagram/common/a/a/l;-><init>()V
return-void
.end method
.method private a(Lcom/instagram/n/b/j;)V
.registers 5
if-eqz p1, :cond_53
invoke-virtual {p1}, Lcom/instagram/n/b/j;->f_()Z
move-result v0
if-eqz v0, :cond_53
invoke-static {}, Lcom/instagram/n/b/a;->d()Ljava/lang/Class;
iget-object v0, p0, Lcom/instagram/n/b/b;->b:Lcom/instagram/n/b/a;
invoke-static {v0}, Lcom/instagram/n/b/a;->a(Lcom/instagram/n/b/a;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/o/a;->a(Landroid/content/Context;)I
move-result v1
invoke-static {}, Lcom/instagram/common/o/a;->c()Z
move-result v0
if-eqz v0, :cond_42
iget-object v0, p1, Lcom/instagram/n/b/j;->a:Lcom/instagram/n/b/k;
iget-object v0, v0, Lcom/instagram/n/b/k;->b:Lcom/instagram/n/b/f;
:goto_1f
invoke-virtual {v0}, Lcom/instagram/n/b/f;->b()Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
invoke-virtual {v0}, Lcom/instagram/n/b/f;->a()Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/instagram/n/b/a;->d()Ljava/lang/Class;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
if-ge v1, v2, :cond_47
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_47
iget-object v1, p0, Lcom/instagram/n/b/b;->b:Lcom/instagram/n/b/a;
invoke-static {v1, v0}, Lcom/instagram/n/b/a;->a(Lcom/instagram/n/b/a;Ljava/lang/String;)V
:goto_41
:cond_41
return-void
:cond_42
iget-object v0, p1, Lcom/instagram/n/b/j;->a:Lcom/instagram/n/b/k;
iget-object v0, v0, Lcom/instagram/n/b/k;->a:Lcom/instagram/n/b/f;
goto :goto_1f
:cond_47
iget v0, p0, Lcom/instagram/n/b/b;->a:I
sget v1, Lcom/instagram/n/b/e;->b:I
if-ne v0, v1, :cond_41
iget-object v0, p0, Lcom/instagram/n/b/b;->b:Lcom/instagram/n/b/a;
invoke-static {v0}, Lcom/instagram/n/b/a;->b(Lcom/instagram/n/b/a;)V
goto :goto_41
:cond_53
invoke-static {}, Lcom/instagram/n/b/a;->d()Ljava/lang/Class;
goto :goto_41
.end method
.method public final synthetic b(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/n/b/j;
invoke-direct {p0, p1}, Lcom/instagram/n/b/b;->a(Lcom/instagram/n/b/j;)V
return-void
.end method