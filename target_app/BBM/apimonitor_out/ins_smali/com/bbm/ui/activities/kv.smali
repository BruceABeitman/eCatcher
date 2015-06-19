.class public final Lcom/bbm/ui/activities/kv;
.super Lcom/bbm/ui/ee;
.source "GroupAdminAddActivity.java"
.field final synthetic b:Lcom/bbm/ui/activities/GroupAdminAddActivity;
.method public constructor <init>(Lcom/bbm/ui/activities/GroupAdminAddActivity;Lcom/bbm/j/j;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/kv;->b:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-direct {p0, p2}, Lcom/bbm/ui/ee;-><init>(Lcom/bbm/j/j;)V
return-void
.end method
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
iget-object v0, p0, Lcom/bbm/ui/activities/kv;->b:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300aa
const/4 v2, 0x0
invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/bbm/ui/activities/kw;
iget-object v0, p0, Lcom/bbm/ui/activities/kv;->b:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-direct {v2, v0}, Lcom/bbm/ui/activities/kw;-><init>(Lcom/bbm/ui/activities/GroupAdminAddActivity;)V
const v0, 0x7f0a0411
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, v2, Lcom/bbm/ui/activities/kw;->a:Lcom/bbm/ui/ObservingImageView;
const v0, 0x7f0a0412
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/activities/kw;->b:Landroid/widget/TextView;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
.registers 7
check-cast p2, Lcom/bbm/g/ac;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/kw;
iget-object v1, p0, Lcom/bbm/ui/activities/kv;->b:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->b(Lcom/bbm/ui/activities/GroupAdminAddActivity;)Lcom/bbm/g/am;
move-result-object v1
iget-object v2, p2, Lcom/bbm/g/ac;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v1
iget-object v2, v1, Lcom/bbm/g/o;->c:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/activities/kv;->b:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-static {v1, p2}, Lcom/bbm/d/fc;->a(Landroid/content/res/Resources;Lcom/bbm/g/ac;)Lcom/google/b/a/l;
move-result-object v1
invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z
move-result v3
if-eqz v3, :cond_5b
iget-object v3, v0, Lcom/bbm/ui/activities/kw;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/j/r;
invoke-virtual {v3, v1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
:goto_31
iget-object v1, v0, Lcom/bbm/ui/activities/kw;->b:Landroid/widget/TextView;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/ui/activities/kv;->b:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->a(Lcom/bbm/ui/activities/GroupAdminAddActivity;)Ljava/util/ArrayList;
move-result-object v1
iget-object v2, p2, Lcom/bbm/g/ac;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_64
const/4 v1, 0x1
invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V
iget-object v0, v0, Lcom/bbm/ui/activities/kw;->b:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/activities/kv;->b:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0901ae
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
:goto_5a
return-void
:cond_5b
iget-object v1, v0, Lcom/bbm/ui/activities/kw;->a:Lcom/bbm/ui/ObservingImageView;
const v3, 0x7f0200d6
invoke-virtual {v1, v3}, Lcom/bbm/ui/ObservingImageView;->setImageResource(I)V
goto :goto_31
:cond_64
const/4 v1, 0x0
invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V
iget-object v0, v0, Lcom/bbm/ui/activities/kw;->b:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/activities/kv;->b:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f09000f
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
goto :goto_5a
.end method