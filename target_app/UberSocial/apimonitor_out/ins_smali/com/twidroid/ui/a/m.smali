.class public Lcom/twidroid/ui/a/m;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "FacebookNewsAdapter"
.field private b:Landroid/app/Activity;
.field private c:Lcom/twidroid/ui/themes/r;
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
.registers 4
const/4 v0, -0x1
invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
iput-object p1, p0, Lcom/twidroid/ui/a/m;->b:Landroid/app/Activity;
invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/a/m;->c:Lcom/twidroid/ui/themes/r;
return-void
.end method
.method public a(Landroid/widget/TextView;Ljava/util/Date;)V
.registers 10
const-wide/16 v5, 0x1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-virtual {p2}, Ljava/util/Date;->getTime()J
move-result-wide v2
sub-long/2addr v0, v2
const-wide/32 v2, 0x5265c00
div-long v2, v0, v2
cmp-long v4, v2, v5
if-ltz v4, :cond_42
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/ui/a/m;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0c02e6
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_41
return-void
:cond_42
const-wide/32 v2, 0x36ee80
div-long v2, v0, v2
cmp-long v4, v2, v5
if-ltz v4, :cond_79
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/ui/a/m;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0c02e7
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_41
:cond_79
const-wide/32 v2, 0xea60
div-long v2, v0, v2
cmp-long v4, v2, v5
if-ltz v4, :cond_b0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/ui/a/m;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0c02e9
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_41
:cond_b0
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
cmp-long v2, v0, v5
if-ltz v2, :cond_e6
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/ui/a/m;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0c02eb
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_41
:cond_e6
const-string v0, "Now"
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_41
.end method
.method public a(Lcom/twidroid/model/facebook/FacebookCommentModel;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/m;->add(Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/twidroid/ui/a/m;->notifyDataSetChanged()V
return-void
.end method
.method public a(Lcom/twidroid/ui/widgets/CachedImageView;Ljava/lang/String;)V
.registers 5
new-instance v0, Lcom/twidroid/net/j;
invoke-direct {v0}, Lcom/twidroid/net/j;-><init>()V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/twidroid/net/j;->a(Z)Lcom/twidroid/net/j;
move-result-object v0
new-instance v1, Lcom/twidroid/ui/a/m$1;
invoke-direct {v1, p0}, Lcom/twidroid/ui/a/m$1;-><init>(Lcom/twidroid/ui/a/m;)V
invoke-virtual {p1, p2, v0, v1}, Lcom/twidroid/ui/widgets/CachedImageView;->a(Ljava/lang/String;Lcom/twidroid/net/j;Lcom/twidroid/ui/widgets/d;)V
return-void
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 11
if-nez p2, :cond_10
iget-object v0, p0, Lcom/twidroid/ui/a/m;->b:Landroid/app/Activity;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f030057
const/4 v2, 0x0
invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
:cond_10
const v0, 0x7f09012a
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f09012b
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const v2, 0x7f09012c
invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
const v3, 0x7f090129
invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Lcom/twidroid/ui/widgets/CachedImageView;
iget-object v4, p0, Lcom/twidroid/ui/a/m;->c:Lcom/twidroid/ui/themes/r;
invoke-virtual {v4}, Lcom/twidroid/ui/themes/r;->E()I
move-result v4
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v4, p0, Lcom/twidroid/ui/a/m;->c:Lcom/twidroid/ui/themes/r;
invoke-virtual {v4}, Lcom/twidroid/ui/themes/r;->o()I
move-result v4
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v4, p0, Lcom/twidroid/ui/a/m;->c:Lcom/twidroid/ui/themes/r;
invoke-virtual {v4}, Lcom/twidroid/ui/themes/r;->D()I
move-result v4
invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V
invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/m;->getItem(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/twidroid/model/facebook/FacebookCommentModel;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "http://graph.facebook.com/"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v4}, Lcom/twidroid/model/facebook/FacebookCommentModel;->b()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "/picture?type=square"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {p0, v3, v5}, Lcom/twidroid/ui/a/m;->a(Lcom/twidroid/ui/widgets/CachedImageView;Ljava/lang/String;)V
invoke-virtual {v4}, Lcom/twidroid/model/facebook/FacebookCommentModel;->c()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v4}, Lcom/twidroid/model/facebook/FacebookCommentModel;->e()Ljava/util/Date;
move-result-object v0
invoke-virtual {p0, v1, v0}, Lcom/twidroid/ui/a/m;->a(Landroid/widget/TextView;Ljava/util/Date;)V
invoke-virtual {v4}, Lcom/twidroid/model/facebook/FacebookCommentModel;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object p2
.end method