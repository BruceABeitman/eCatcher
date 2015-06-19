.class  Lcom/twidroid/UberSocialProfile$18$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/UberSocialProfile$18;
.method constructor <init>(Lcom/twidroid/UberSocialProfile$18;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$18$1;->a:Lcom/twidroid/UberSocialProfile$18;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
const v5, 0x7f020195
const/4 v4, 0x5
const v3, 0x7f090186
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$18$1;->a:Lcom/twidroid/UberSocialProfile$18;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$18;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0, v3}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$18$1;->a:Lcom/twidroid/UberSocialProfile$18;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$18;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0, v3}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "bigger_"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/UberSocialProfile$18$1;->a:Lcom/twidroid/UberSocialProfile$18;
iget-object v2, v2, Lcom/twidroid/UberSocialProfile$18;->a:Lcom/twidroid/UberSocialProfile;
iget-object v2, v2, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/User;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$18$1;->a:Lcom/twidroid/UberSocialProfile$18;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$18;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0, v3}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_84
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$18$1;->a:Lcom/twidroid/UberSocialProfile$18;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$18;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0, v3}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$18$1;->a:Lcom/twidroid/UberSocialProfile$18;
iget-object v1, v1, Lcom/twidroid/UberSocialProfile$18;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v1}, Lcom/twidroid/UberSocialProfile;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
:goto_73
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$18$1;->a:Lcom/twidroid/UberSocialProfile$18;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$18;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0, v3}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/twidroid/UberSocialProfile$18$1$1;
invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$18$1$1;-><init>(Lcom/twidroid/UberSocialProfile$18$1;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
:cond_84
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$18$1;->a:Lcom/twidroid/UberSocialProfile$18;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$18;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0, v3}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$18$1;->a:Lcom/twidroid/UberSocialProfile$18;
iget-object v1, v1, Lcom/twidroid/UberSocialProfile$18;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v1}, Lcom/twidroid/UberSocialProfile;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_73
.end method