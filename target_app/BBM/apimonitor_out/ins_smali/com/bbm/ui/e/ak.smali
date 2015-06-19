.class public final Lcom/bbm/ui/e/ak;
.super Ljava/lang/Object;
.source "InviteHolder.java"
.implements Lcom/bbm/ui/e/at;
.field final a:Lcom/bbm/d/a;
.field  b:Lcom/bbm/d/fg;
.field private c:Landroid/widget/TextView;
.field private d:Landroid/widget/TextView;
.field private e:Landroid/widget/Button;
.field private f:Landroid/widget/Button;
.field private final g:Landroid/content/Context;
.field private final h:Landroid/view/View$OnTouchListener;
.method public constructor <init>(Landroid/content/Context;Lcom/bbm/d/a;Landroid/view/View$OnTouchListener;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/bbm/ui/e/ak;->a:Lcom/bbm/d/a;
iput-object p1, p0, Lcom/bbm/ui/e/ak;->g:Landroid/content/Context;
iput-object p3, p0, Lcom/bbm/ui/e/ak;->h:Landroid/view/View$OnTouchListener;
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
const v0, 0x7f0300d6
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a0454
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/ak;->c:Landroid/widget/TextView;
const v0, 0x7f0a0456
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/ak;->d:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/e/ak;->d:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/e/ak;->h:Landroid/view/View$OnTouchListener;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v0, 0x7f0a0497
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/e/ak;->e:Landroid/widget/Button;
const v0, 0x7f0a0498
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/e/ak;->f:Landroid/widget/Button;
iget-object v0, p0, Lcom/bbm/ui/e/ak;->e:Landroid/widget/Button;
new-instance v2, Lcom/bbm/ui/e/al;
invoke-direct {v2, p0}, Lcom/bbm/ui/e/al;-><init>(Lcom/bbm/ui/e/ak;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/e/ak;->f:Landroid/widget/Button;
new-instance v2, Lcom/bbm/ui/e/am;
invoke-direct {v2, p0}, Lcom/bbm/ui/e/am;-><init>(Lcom/bbm/ui/e/ak;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-object v1
.end method
.method public final a(Lcom/bbm/ui/e/i;Z)V
.registers 14
const/4 v9, 0x2
const/4 v8, 0x1
const/4 v1, 0x0
iget-object v0, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iput-object v0, p0, Lcom/bbm/ui/e/ak;->b:Lcom/bbm/d/fg;
iget-object v2, p0, Lcom/bbm/ui/e/ak;->b:Lcom/bbm/d/fg;
iget-object v0, p0, Lcom/bbm/ui/e/ak;->a:Lcom/bbm/d/a;
iget-object v3, v2, Lcom/bbm/d/fg;->d:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/bbm/d/a;->N(Ljava/lang/String;)Lcom/bbm/d/ep;
move-result-object v3
iget-object v0, p0, Lcom/bbm/ui/e/ak;->a:Lcom/bbm/d/a;
iget-object v4, v3, Lcom/bbm/d/ep;->d:Ljava/lang/String;
invoke-virtual {v0, v4}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v4, p0, Lcom/bbm/ui/e/ak;->a:Lcom/bbm/d/a;
iget-object v5, v3, Lcom/bbm/d/ep;->c:Ljava/lang/String;
invoke-virtual {v4, v5}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v4
iget-object v5, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v6, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v5, v6, :cond_2d
iget-object v5, v4, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v6, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v5, v6, :cond_2e
:goto_2d
:cond_2d
return-void
:cond_2e
invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-static {v4}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const/16 v0, 0x8
iget-object v6, v3, Lcom/bbm/d/ep;->e:Lcom/bbm/d/eq;
sget-object v7, Lcom/bbm/d/eq;->c:Lcom/bbm/d/eq;
if-ne v6, v7, :cond_74
iget-object v3, p0, Lcom/bbm/ui/e/ak;->g:Landroid/content/Context;
const v6, 0x7f0e02a0
new-array v7, v9, [Ljava/lang/Object;
aput-object v5, v7, v1
aput-object v4, v7, v8
invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
:goto_55
iget-object v3, p0, Lcom/bbm/ui/e/ak;->f:Landroid/widget/Button;
invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V
iget-object v3, p0, Lcom/bbm/ui/e/ak;->e:Landroid/widget/Button;
invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/e/ak;->d:Landroid/widget/TextView;
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setHtmlText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/e/ak;->c:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/e/ak;->g:Landroid/content/Context;
iget-wide v2, v2, Lcom/bbm/d/fg;->s:J
invoke-static {v1, v2, v3}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_2d
:cond_74
iget-object v3, v3, Lcom/bbm/d/ep;->e:Lcom/bbm/d/eq;
sget-object v6, Lcom/bbm/d/eq;->b:Lcom/bbm/d/eq;
if-ne v3, v6, :cond_88
iget-object v3, p0, Lcom/bbm/ui/e/ak;->g:Landroid/content/Context;
const v5, 0x7f0e029f
new-array v6, v8, [Ljava/lang/Object;
aput-object v4, v6, v1
invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_55
:cond_88
iget-object v0, p0, Lcom/bbm/ui/e/ak;->g:Landroid/content/Context;
const v3, 0x7f0e029e
new-array v6, v9, [Ljava/lang/Object;
aput-object v5, v6, v1
aput-object v4, v6, v8
invoke-virtual {v0, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
move v10, v1
move-object v1, v0
move v0, v10
goto :goto_55
.end method