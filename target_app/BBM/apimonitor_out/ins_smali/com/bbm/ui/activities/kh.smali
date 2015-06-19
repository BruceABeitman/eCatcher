.class final Lcom/bbm/ui/activities/kh;
.super Lcom/bbm/ui/activities/jz;
.source "FileSearchActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/FileSearchActivity;
.method public constructor <init>(Lcom/bbm/ui/activities/FileSearchActivity;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/kh;->a:Lcom/bbm/ui/activities/FileSearchActivity;
invoke-direct {p0, p2}, Lcom/bbm/ui/activities/jz;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
invoke-virtual {p0, p1}, Lcom/bbm/ui/activities/kh;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/File;
if-nez p2, :cond_61
iget-object v1, p0, Lcom/bbm/ui/activities/kh;->b:Landroid/content/Context;
invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
const v2, 0x7f0300c3
const/4 v3, 0x0
invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
new-instance v2, Lcom/bbm/ui/activities/ki;
invoke-direct {v2, p0}, Lcom/bbm/ui/activities/ki;-><init>(Lcom/bbm/ui/activities/kh;)V
const v1, 0x7f0a045b
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, v2, Lcom/bbm/ui/activities/ki;->a:Landroid/widget/ImageView;
const v1, 0x7f0a0462
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, v2, Lcom/bbm/ui/activities/ki;->b:Landroid/widget/TextView;
const v1, 0x7f0a0175
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, v2, Lcom/bbm/ui/activities/ki;->c:Landroid/widget/TextView;
invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object v1, v2
:goto_40
iget-object v3, v1, Lcom/bbm/ui/activities/ki;->a:Landroid/widget/ImageView;
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v2
if-eqz v2, :cond_68
const v2, 0x7f020110
:goto_4b
invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v2, v1, Lcom/bbm/ui/activities/ki;->b:Landroid/widget/TextView;
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v1, Lcom/bbm/ui/activities/ki;->c:Landroid/widget/TextView;
invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object p2
:cond_61
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/ui/activities/ki;
goto :goto_40
:cond_68
invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/bbm/util/bj;->a(Ljava/lang/String;)I
move-result v2
goto :goto_4b
.end method