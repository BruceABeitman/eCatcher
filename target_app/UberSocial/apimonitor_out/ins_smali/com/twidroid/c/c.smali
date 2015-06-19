.class public abstract Lcom/twidroid/c/c;
.super Landroid/app/Dialog;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "AccountDialog"
.field  c:Landroid/app/Activity;
.field  d:Landroid/widget/LinearLayout;
.method public constructor <init>(Landroid/app/Activity;)V
.registers 3
const v0, 0x7f0d0045
invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
iput-object p1, p0, Lcom/twidroid/c/c;->c:Landroid/app/Activity;
return-void
.end method
.method public abstract a()V
.end method
.method public abstract a(I)V
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03002c
invoke-virtual {p0, v0}, Lcom/twidroid/c/c;->setContentView(I)V
iget-object v0, p0, Lcom/twidroid/c/c;->c:Landroid/app/Activity;
const v1, 0x7f0c00d8
invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/c/c;->setTitle(Ljava/lang/CharSequence;)V
const v0, 0x7f090073
invoke-virtual {p0, v0}, Lcom/twidroid/c/c;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/twidroid/c/c;->d:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/twidroid/c/c;->c:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_34
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_85
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
new-instance v2, Landroid/widget/Button;
iget-object v3, p0, Lcom/twidroid/c/c;->c:Landroid/app/Activity;
invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
new-instance v3, Ljava/lang/Integer;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v4
invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
new-instance v3, Lcom/twidroid/c/c$2;
invoke-direct {v3, p0}, Lcom/twidroid/c/c$2;-><init>(Lcom/twidroid/c/c;)V
invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v3, "AccountDialog"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "AccountDialog::onCreate >> "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/twidroid/c/c;->d:Landroid/widget/LinearLayout;
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V
goto :goto_34
:cond_85
return-void
.end method
.method public onStart()V
.registers 3
const v0, 0x7f090074
invoke-virtual {p0, v0}, Lcom/twidroid/c/c;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/twidroid/c/c$1;
invoke-direct {v1, p0}, Lcom/twidroid/c/c$1;-><init>(Lcom/twidroid/c/c;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method