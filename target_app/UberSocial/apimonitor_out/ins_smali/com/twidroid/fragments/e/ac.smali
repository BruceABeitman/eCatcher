.class  Lcom/twidroid/fragments/e/ac;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/e/ab;
.field private b:Landroid/support/v4/app/FragmentActivity;
.field private c:Ljava/lang/String;
.field private d:Lcom/twidroid/b/a/b;
.method public constructor <init>(Lcom/twidroid/fragments/e/ab;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/twidroid/b/a/b;)V
.registers 5
iput-object p1, p0, Lcom/twidroid/fragments/e/ac;->a:Lcom/twidroid/fragments/e/ab;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
iput-object p2, p0, Lcom/twidroid/fragments/e/ac;->b:Landroid/support/v4/app/FragmentActivity;
iput-object p3, p0, Lcom/twidroid/fragments/e/ac;->c:Ljava/lang/String;
iput-object p4, p0, Lcom/twidroid/fragments/e/ac;->d:Lcom/twidroid/b/a/b;
return-void
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
.registers 7
new-instance v0, Lcom/twidroid/model/twitter/b;
iget-object v1, p0, Lcom/twidroid/fragments/e/ac;->a:Lcom/twidroid/fragments/e/ab;
invoke-static {v1}, Lcom/twidroid/fragments/e/ab;->p(Lcom/twidroid/fragments/e/ab;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/ac;->c:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Lcom/twidroid/model/twitter/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/fragments/e/ac;->d:Lcom/twidroid/b/a/b;
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/ac;->d:Lcom/twidroid/b/a/b;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/b;->a()I
move-result v3
invoke-virtual {v2, v3}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;
move-result-object v2
if-eqz v2, :cond_28
iget-object v3, p0, Lcom/twidroid/fragments/e/ac;->d:Lcom/twidroid/b/a/b;
invoke-virtual {v3}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v3
invoke-virtual {v3, v2}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
:cond_28
iget-object v3, p0, Lcom/twidroid/fragments/e/ac;->a:Lcom/twidroid/fragments/e/ab;
invoke-static {v3}, Lcom/twidroid/fragments/e/ab;->q(Lcom/twidroid/fragments/e/ab;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/fragments/e/ac;->d:Lcom/twidroid/b/a/b;
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lcom/twidroid/model/twitter/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/twidroid/net/a/c/c;)Z
move-result v0
if-eqz v2, :cond_43
iget-object v2, p0, Lcom/twidroid/fragments/e/ac;->d:Lcom/twidroid/b/a/b;
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v2
invoke-virtual {v2, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
:cond_43
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/ac;->a([Ljava/lang/Void;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected a(Ljava/lang/Boolean;)V
.registers 7
const/4 v4, 0x1
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_52
iget-object v0, p0, Lcom/twidroid/fragments/e/ac;->b:Landroid/support/v4/app/FragmentActivity;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/ac;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/ac;->b:Landroid/support/v4/app/FragmentActivity;
const v3, 0x7f0c0168
invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/twidroid/fragments/e/ac;->a:Lcom/twidroid/fragments/e/ab;
invoke-static {v0}, Lcom/twidroid/fragments/e/ab;->r(Lcom/twidroid/fragments/e/ab;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_4c
iget-object v0, p0, Lcom/twidroid/fragments/e/ac;->a:Lcom/twidroid/fragments/e/ab;
invoke-static {v0}, Lcom/twidroid/fragments/e/ab;->s(Lcom/twidroid/fragments/e/ab;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->clear()V
:cond_4c
iget-object v0, p0, Lcom/twidroid/fragments/e/ac;->a:Lcom/twidroid/fragments/e/ab;
invoke-static {v0, v4}, Lcom/twidroid/fragments/e/ab;->a(Lcom/twidroid/fragments/e/ab;Z)V
:goto_51
return-void
:cond_52
iget-object v0, p0, Lcom/twidroid/fragments/e/ac;->b:Landroid/support/v4/app/FragmentActivity;
iget-object v1, p0, Lcom/twidroid/fragments/e/ac;->b:Landroid/support/v4/app/FragmentActivity;
const v2, 0x7f0c02cb
invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_51
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Boolean;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/ac;->a(Ljava/lang/Boolean;)V
return-void
.end method