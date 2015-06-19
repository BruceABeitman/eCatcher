.class public final Lcom/bbm/ui/e/bl;
.super Ljava/lang/Object;
.source "OtherMessageHolder.java"
.implements Lcom/bbm/ui/e/at;
.field private a:Landroid/widget/TextView;
.field private b:Landroid/widget/TextView;
.field private final c:Landroid/view/View$OnTouchListener;
.field private final d:Landroid/content/Context;
.field private final e:Lcom/bbm/d/a;
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnTouchListener;Lcom/bbm/d/a;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/bbm/ui/e/bl;->c:Landroid/view/View$OnTouchListener;
iput-object p1, p0, Lcom/bbm/ui/e/bl;->d:Landroid/content/Context;
iput-object p3, p0, Lcom/bbm/ui/e/bl;->e:Lcom/bbm/d/a;
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
const v0, 0x7f0300db
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a0454
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/bl;->a:Landroid/widget/TextView;
const v0, 0x7f0a0456
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/bl;->b:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/e/bl;->b:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/e/bl;->c:Landroid/view/View$OnTouchListener;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return-object v1
.end method
.method public final a(Lcom/bbm/ui/e/i;Z)V
.registers 8
iget-object v0, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iget-wide v1, v0, Lcom/bbm/d/fg;->s:J
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-lez v1, :cond_17
iget-object v1, p0, Lcom/bbm/ui/e/bl;->a:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/e/bl;->d:Landroid/content/Context;
iget-wide v3, v0, Lcom/bbm/d/fg;->s:J
invoke-static {v2, v3, v4}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_17
iget-object v1, p0, Lcom/bbm/ui/e/bl;->b:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/e/bl;->d:Landroid/content/Context;
iget-object v3, p0, Lcom/bbm/ui/e/bl;->e:Lcom/bbm/d/a;
invoke-static {v2, v3, v0}, Lcom/bbm/d/b/a;->b(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;)Landroid/text/Spanned;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method