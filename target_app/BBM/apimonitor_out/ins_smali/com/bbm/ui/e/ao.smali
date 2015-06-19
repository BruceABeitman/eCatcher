.class final Lcom/bbm/ui/e/ao;
.super Lcom/bbm/j/u;
.source "LocationHolder.java"
.field final synthetic a:Lcom/bbm/ui/e/an;
.method constructor <init>(Lcom/bbm/ui/e/an;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 9
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v0}, Lcom/bbm/ui/e/an;->b(Lcom/bbm/ui/e/an;)Lcom/bbm/d/a;
move-result-object v0
iget-object v3, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v3}, Lcom/bbm/ui/e/an;->a(Lcom/bbm/ui/e/an;)Lcom/bbm/d/fg;
move-result-object v3
iget-object v3, v3, Lcom/bbm/d/fg;->k:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/bbm/d/a;->B(Ljava/lang/String;)Lcom/bbm/d/ff;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/ff;->m:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v3, :cond_32
iget-object v0, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v0}, Lcom/bbm/ui/e/an;->b(Lcom/bbm/ui/e/an;)Lcom/bbm/d/a;
move-result-object v0
iget-object v3, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v3}, Lcom/bbm/ui/e/an;->a(Lcom/bbm/ui/e/an;)Lcom/bbm/d/fg;
move-result-object v3
iget-object v3, v3, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v0, v3, :cond_33
:goto_32
:cond_32
return v1
:cond_33
iget-object v0, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v0}, Lcom/bbm/ui/e/an;->b(Lcom/bbm/ui/e/an;)Lcom/bbm/d/a;
move-result-object v0
iget-object v3, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v3}, Lcom/bbm/ui/e/an;->a(Lcom/bbm/ui/e/an;)Lcom/bbm/d/fg;
move-result-object v3
iget-object v3, v3, Lcom/bbm/d/fg;->k:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/bbm/d/a;->B(Ljava/lang/String;)Lcom/bbm/d/ff;
move-result-object v3
iget-object v0, v3, Lcom/bbm/d/ff;->m:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
if-ne v0, v4, :cond_4d
move v1, v2
goto :goto_32
:cond_4d
iget-object v0, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v0}, Lcom/bbm/ui/e/an;->b(Lcom/bbm/ui/e/an;)Lcom/bbm/d/a;
move-result-object v0
iget-object v4, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v4}, Lcom/bbm/ui/e/an;->a(Lcom/bbm/ui/e/an;)Lcom/bbm/d/fg;
move-result-object v4
iget-object v4, v4, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v0, v4}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v4
iget-object v0, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v0}, Lcom/bbm/ui/e/an;->c(Lcom/bbm/ui/e/an;)Landroid/widget/TextView;
move-result-object v0
invoke-static {v3}, Lcom/bbm/ui/e/aq;->a(Lcom/bbm/d/ff;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, v3, Lcom/bbm/d/ff;->d:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_11c
:try_start_74
iget-object v0, v3, Lcom/bbm/d/ff;->d:Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_79
.catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_79} :catch_111
move-result v0
:goto_7a
iget-object v5, v3, Lcom/bbm/d/ff;->d:Ljava/lang/String;
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-nez v5, :cond_11f
if-lez v0, :cond_11f
iget-object v0, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v0}, Lcom/bbm/ui/e/an;->e(Lcom/bbm/ui/e/an;)Landroid/widget/TextView;
move-result-object v0
iget-object v5, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v5}, Lcom/bbm/ui/e/an;->d(Lcom/bbm/ui/e/an;)Landroid/content/Context;
move-result-object v5
const v6, 0x7f0e02a8
invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v5
new-array v6, v2, [Ljava/lang/Object;
iget-object v7, v3, Lcom/bbm/d/ff;->d:Ljava/lang/String;
aput-object v7, v6, v1
invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v0}, Lcom/bbm/ui/e/an;->e(Lcom/bbm/ui/e/an;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
:goto_ad
iget-object v0, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v0}, Lcom/bbm/ui/e/an;->f(Lcom/bbm/ui/e/an;)Landroid/widget/TextView;
move-result-object v0
invoke-static {v4}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v0}, Lcom/bbm/ui/e/an;->g(Lcom/bbm/ui/e/an;)Landroid/widget/TextView;
move-result-object v0
iget-object v4, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v4}, Lcom/bbm/ui/e/an;->d(Lcom/bbm/ui/e/an;)Landroid/content/Context;
move-result-object v4
iget-object v5, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v5}, Lcom/bbm/ui/e/an;->a(Lcom/bbm/ui/e/an;)Lcom/bbm/d/fg;
move-result-object v5
iget-wide v5, v5, Lcom/bbm/d/fg;->s:J
invoke-static {v4, v5, v6}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v0}, Lcom/bbm/ui/e/an;->h(Lcom/bbm/ui/e/an;)Landroid/widget/ImageView;
move-result-object v0
iget-object v4, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v4}, Lcom/bbm/ui/e/an;->i(Lcom/bbm/ui/e/an;)Lcom/bbm/util/b/i;
move-result-object v4
iget-object v5, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v5}, Lcom/bbm/ui/e/an;->d(Lcom/bbm/ui/e/an;)Landroid/content/Context;
move-result-object v5
invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
if-eqz v4, :cond_12b
iget-object v6, v4, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
if-eqz v6, :cond_12b
iget-object v6, v4, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
iget-object v7, v3, Lcom/bbm/d/ff;->e:Ljava/lang/String;
invoke-virtual {v6, v7}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;)Lcom/bbm/d/fd;
move-result-object v6
if-eqz v6, :cond_12b
iget-object v1, v6, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_100
iget-object v0, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v0}, Lcom/bbm/ui/e/an;->h(Lcom/bbm/ui/e/an;)Landroid/widget/ImageView;
move-result-object v0
new-instance v1, Lcom/bbm/ui/e/ap;
invoke-direct {v1, p0, v3}, Lcom/bbm/ui/e/ap;-><init>(Lcom/bbm/ui/e/ao;Lcom/bbm/d/ff;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move v1, v2
goto/16 :goto_32
:catch_111
move-exception v0
:try_start_112
iget-object v0, v3, Lcom/bbm/d/ff;->d:Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
:try_end_117
.catch Ljava/lang/NumberFormatException; {:try_start_112 .. :try_end_117} :catch_11b
move-result-wide v5
double-to-int v0, v5
goto/16 :goto_7a
:catch_11b
move-exception v0
:cond_11c
move v0, v1
goto/16 :goto_7a
:cond_11f
iget-object v0, p0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;
invoke-static {v0}, Lcom/bbm/ui/e/an;->e(Lcom/bbm/ui/e/an;)Landroid/widget/TextView;
move-result-object v0
const/16 v5, 0x8
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_ad
:cond_12b
new-instance v6, Lcom/bbm/ui/e/ar;
invoke-direct {v6, v3, v0, v4, v5}, Lcom/bbm/ui/e/ar;-><init>(Lcom/bbm/d/ff;Landroid/widget/ImageView;Lcom/bbm/util/b/i;Landroid/content/res/Resources;)V
new-array v0, v1, [Ljava/lang/String;
invoke-virtual {v6, v0}, Lcom/bbm/ui/e/ar;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_100
.end method