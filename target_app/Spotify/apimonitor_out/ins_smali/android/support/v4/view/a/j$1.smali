.class final Landroid/support/v4/view/a/j$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/view/a/n;
.field final synthetic a:Landroid/support/v4/view/a/h;
.field final synthetic b:Landroid/support/v4/view/a/j;
.method constructor <init>(Landroid/support/v4/view/a/j;Landroid/support/v4/view/a/h;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/view/a/j$1;->b:Landroid/support/v4/view/a/j;
iput-object p2, p0, Landroid/support/v4/view/a/j$1;->a:Landroid/support/v4/view/a/h;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/view/a/j$1;->a:Landroid/support/v4/view/a/h;
invoke-static {}, Landroid/support/v4/view/a/h;->c()Z
move-result v0
return v0
.end method
.method public final b()Ljava/util/List;
.registers 6
const/4 v4, 0x0
iget-object v0, p0, Landroid/support/v4/view/a/j$1;->a:Landroid/support/v4/view/a/h;
invoke-static {}, Landroid/support/v4/view/a/h;->d()Ljava/util/List;
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v3
const/4 v0, 0x0
move v1, v0
:goto_11
if-ge v1, v3, :cond_24
invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/a/a;
invoke-virtual {v0}, Landroid/support/v4/view/a/a;->a()Ljava/lang/Object;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_11
:cond_24
return-object v2
.end method
.method public final c()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v4/view/a/j$1;->a:Landroid/support/v4/view/a/h;
invoke-static {}, Landroid/support/v4/view/a/h;->b()Landroid/support/v4/view/a/a;
const/4 v0, 0x0
return-object v0
.end method