.class public final Lcom/bbm/ui/e/bp;
.super Ljava/lang/Object;
.source "ReinviteHolder.java"
.implements Lcom/bbm/ui/e/at;
.field final a:Lcom/bbm/d/a;
.field  b:Lcom/bbm/d/fg;
.field private final c:I
.field private d:Landroid/widget/TextView;
.field private e:Landroid/widget/TextView;
.field private f:Landroid/widget/Button;
.field private g:Landroid/widget/Button;
.field private final h:Landroid/content/Context;
.field private final i:Landroid/view/View$OnTouchListener;
.field private final j:Lcom/bbm/j/u;
.method public constructor <init>(Landroid/content/Context;Lcom/bbm/d/a;Landroid/view/View$OnTouchListener;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/bbm/ui/e/bp;->c:I
new-instance v0, Lcom/bbm/ui/e/bq;
invoke-direct {v0, p0}, Lcom/bbm/ui/e/bq;-><init>(Lcom/bbm/ui/e/bp;)V
iput-object v0, p0, Lcom/bbm/ui/e/bp;->j:Lcom/bbm/j/u;
iput-object p2, p0, Lcom/bbm/ui/e/bp;->a:Lcom/bbm/d/a;
iput-object p1, p0, Lcom/bbm/ui/e/bp;->h:Landroid/content/Context;
iput-object p3, p0, Lcom/bbm/ui/e/bp;->i:Landroid/view/View$OnTouchListener;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/e/bp;)Lcom/bbm/d/fg;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bp;->b:Lcom/bbm/d/fg;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/e/bp;)Lcom/bbm/d/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bp;->a:Lcom/bbm/d/a;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/e/bp;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bp;->h:Landroid/content/Context;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/e/bp;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bp;->f:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/e/bp;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bp;->g:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/e/bp;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bp;->e:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/e/bp;)Lcom/bbm/j/u;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/bp;->j:Lcom/bbm/j/u;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
const v0, 0x7f0300df
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a0454
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/bp;->d:Landroid/widget/TextView;
const v0, 0x7f0a0456
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/bp;->e:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/e/bp;->e:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/e/bp;->i:Landroid/view/View$OnTouchListener;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v0, 0x7f0a0497
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/e/bp;->f:Landroid/widget/Button;
const v0, 0x7f0a0498
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/e/bp;->g:Landroid/widget/Button;
iget-object v0, p0, Lcom/bbm/ui/e/bp;->f:Landroid/widget/Button;
new-instance v2, Lcom/bbm/ui/e/br;
invoke-direct {v2, p0}, Lcom/bbm/ui/e/br;-><init>(Lcom/bbm/ui/e/bp;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/e/bp;->g:Landroid/widget/Button;
new-instance v2, Lcom/bbm/ui/e/bs;
invoke-direct {v2, p0}, Lcom/bbm/ui/e/bs;-><init>(Lcom/bbm/ui/e/bp;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-object v1
.end method
.method public final a(Lcom/bbm/ui/e/i;Z)V
.registers 8
iget-object v0, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iput-object v0, p0, Lcom/bbm/ui/e/bp;->b:Lcom/bbm/d/fg;
iget-object v0, p0, Lcom/bbm/ui/e/bp;->a:Lcom/bbm/d/a;
iget-object v1, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/e/bp;->h:Landroid/content/Context;
const v2, 0x7f0e02ae
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
aput-object v0, v3, v4
invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/e/bp;->e:Landroid/widget/TextView;
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setHtmlText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/e/bp;->d:Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method