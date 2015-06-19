.class public final Lcom/bbm/ui/e/c;
.super Ljava/lang/Object;
.source "CallEventHolder.java"

# interfaces
.implements Lcom/bbm/ui/e/at;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private final d:Landroid/view/View$OnTouchListener;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/bbm/d/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnTouchListener;Lcom/bbm/d/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bbm/ui/e/c;->d:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/bbm/ui/e/c;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/bbm/ui/e/c;->f:Lcom/bbm/d/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    const v0, 0x7f0300d2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0454

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/e/c;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0456

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, p0, Lcom/bbm/ui/e/c;->b:Landroid/widget/TextView;

    const v0, 0x7f0a048b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/e/c;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbm/ui/e/c;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbm/ui/e/c;->d:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v1
.end method

.method public final a(Lcom/bbm/ui/e/i;Z)V
    .registers 9

    const v0, 0x7f02009f

    iget-object v1, p0, Lcom/bbm/ui/e/c;->a:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/e/c;->b:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/e/c;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;

    iget-object v2, p0, Lcom/bbm/ui/e/c;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bbm/ui/e/c;->f:Lcom/bbm/d/a;

    iget-object v4, v1, Lcom/bbm/d/fg;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bbm/d/a;->X(Ljava/lang/String;)Lcom/bbm/d/dx;

    move-result-object v3

    iget-object v4, v3, Lcom/bbm/d/dx;->c:Lcom/bbm/d/dz;

    sget-object v5, Lcom/bbm/d/dz;->a:Lcom/bbm/d/dz;

    if-eq v4, v5, :cond_2c

    sget-object v5, Lcom/bbm/d/dz;->b:Lcom/bbm/d/dz;

    if-ne v4, v5, :cond_5d

    :cond_2c
    iget-boolean v0, v3, Lcom/bbm/d/dx;->e:Z

    if-eqz v0, :cond_59

    const v0, 0x7f0200a0

    :cond_33
    :goto_33
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-wide v2, v1, Lcom/bbm/d/fg;->s:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4b

    iget-object v0, p0, Lcom/bbm/ui/e/c;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbm/ui/e/c;->e:Landroid/content/Context;

    iget-wide v3, v1, Lcom/bbm/d/fg;->s:J

    invoke-static {v2, v3, v4}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4b
    iget-object v0, p0, Lcom/bbm/ui/e/c;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbm/ui/e/c;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/bbm/ui/e/c;->f:Lcom/bbm/d/a;

    invoke-static {v2, v3, v1}, Lcom/bbm/d/b/a;->b(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_59
    const v0, 0x7f0200a2

    goto :goto_33

    :cond_5d
    sget-object v3, Lcom/bbm/d/dz;->c:Lcom/bbm/d/dz;

    if-ne v4, v3, :cond_33

    const v0, 0x7f0200a1

    goto :goto_33
.end method
