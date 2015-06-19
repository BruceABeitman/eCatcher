.class public Lcom/bbm/ui/c/fk;
.super Lcom/bbm/ui/ef;
.source "ProfileUpdatesFragment.java"
.field protected final c:Landroid/content/Context;
.field final synthetic d:Lcom/bbm/ui/c/fh;
.method public constructor <init>(Lcom/bbm/ui/c/fh;Landroid/content/Context;Lcom/bbm/j/r;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/c/fk;->d:Lcom/bbm/ui/c/fh;
invoke-direct {p0, p3}, Lcom/bbm/ui/ef;-><init>(Lcom/bbm/j/r;)V
iput-object p2, p0, Lcom/bbm/ui/c/fk;->c:Landroid/content/Context;
return-void
.end method
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300e9
const/4 v2, 0x0
invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/bbm/ui/c/fl;
invoke-direct {v2, p0}, Lcom/bbm/ui/c/fl;-><init>(Lcom/bbm/ui/c/fk;)V
const v0, 0x7f0a04c7
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/c/fl;->a:Landroid/widget/TextView;
const v0, 0x7f0a04c8
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/c/fl;->b:Landroid/widget/TextView;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/bbm/d/fz;
iget-object v0, p1, Lcom/bbm/d/fz;->a:Ljava/lang/String;
return-object v0
.end method
.method protected a(Landroid/view/View;Lcom/bbm/d/fz;)V
.registers 12
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/fl;
iget-object v1, p0, Lcom/bbm/ui/c/fk;->d:Lcom/bbm/ui/c/fh;
iget-object v1, v1, Lcom/bbm/ui/c/fh;->a:Lcom/bbm/d/a;
iget-object v2, p2, Lcom/bbm/d/fz;->h:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v2
iget-object v1, v0, Lcom/bbm/ui/c/fl;->b:Landroid/widget/TextView;
iget-object v3, p0, Lcom/bbm/ui/c/fk;->c:Landroid/content/Context;
iget-wide v4, p2, Lcom/bbm/d/fz;->e:J
invoke-static {v3, v4, v5}, Lcom/bbm/util/bd;->c(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v1, 0x0
invoke-static {v2}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p2, Lcom/bbm/d/fz;->b:Ljava/lang/String;
invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iget-object v4, p2, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
sget-object v5, Lcom/bbm/d/ga;->c:Lcom/bbm/d/ga;
if-ne v4, v5, :cond_4c
iget-object v1, p0, Lcom/bbm/ui/c/fk;->c:Landroid/content/Context;
const v4, 0x7f0e0760
new-array v5, v8, [Ljava/lang/Object;
aput-object v2, v5, v6
aput-object v3, v5, v7
invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
:goto_44
:cond_44
iget-object v0, v0, Lcom/bbm/ui/c/fl;->a:Landroid/widget/TextView;
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setHtmlText(Ljava/lang/CharSequence;)V
return-void
:cond_4c
iget-object v4, p2, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
sget-object v5, Lcom/bbm/d/ga;->e:Lcom/bbm/d/ga;
if-ne v4, v5, :cond_60
iget-object v1, p0, Lcom/bbm/ui/c/fk;->c:Landroid/content/Context;
const v3, 0x7f0e0724
new-array v4, v7, [Ljava/lang/Object;
aput-object v2, v4, v6
invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_44
:cond_60
iget-object v4, p2, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
sget-object v5, Lcom/bbm/d/ga;->a:Lcom/bbm/d/ga;
if-ne v4, v5, :cond_74
iget-object v1, p0, Lcom/bbm/ui/c/fk;->c:Landroid/content/Context;
const v3, 0x7f0e075d
new-array v4, v7, [Ljava/lang/Object;
aput-object v2, v4, v6
invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_44
:cond_74
iget-object v4, p2, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
sget-object v5, Lcom/bbm/d/ga;->b:Lcom/bbm/d/ga;
if-ne v4, v5, :cond_8a
iget-object v1, p0, Lcom/bbm/ui/c/fk;->c:Landroid/content/Context;
const v4, 0x7f0e0732
new-array v5, v8, [Ljava/lang/Object;
aput-object v2, v5, v6
aput-object v3, v5, v7
invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_44
:cond_8a
iget-object v4, p2, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
sget-object v5, Lcom/bbm/d/ga;->d:Lcom/bbm/d/ga;
if-ne v4, v5, :cond_44
iget-object v1, p0, Lcom/bbm/ui/c/fk;->c:Landroid/content/Context;
const v4, 0x7f0e075f
new-array v5, v8, [Ljava/lang/Object;
aput-object v2, v5, v6
aput-object v3, v5, v7
invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_44
.end method
.method protected bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
.registers 3
check-cast p2, Lcom/bbm/d/fz;
invoke-virtual {p0, p1, p2}, Lcom/bbm/ui/c/fk;->a(Landroid/view/View;Lcom/bbm/d/fz;)V
return-void
.end method