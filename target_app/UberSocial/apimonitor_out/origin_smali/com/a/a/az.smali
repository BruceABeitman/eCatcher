.class final Lcom/a/a/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/a/a/be;

.field final synthetic b:Lcom/a/a/e;

.field private synthetic c:Landroid/app/Activity;

.field private synthetic d:Lcom/a/a/ac;

.field private synthetic e:Lcom/a/a/a/ar;


# direct methods
.method constructor <init>(Lcom/a/a/e;Landroid/app/Activity;Lcom/a/a/be;Lcom/a/a/ac;Lcom/a/a/a/ar;)V
    .registers 6

    iput-object p1, p0, Lcom/a/a/az;->b:Lcom/a/a/e;

    iput-object p2, p0, Lcom/a/a/az;->c:Landroid/app/Activity;

    iput-object p3, p0, Lcom/a/a/az;->a:Lcom/a/a/be;

    iput-object p4, p0, Lcom/a/a/az;->d:Lcom/a/a/ac;

    iput-object p5, p0, Lcom/a/a/az;->e:Lcom/a/a/a/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    const/4 v10, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/a/a/az;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/a/a/ba;

    invoke-direct {v1, p0}, Lcom/a/a/ba;-><init>(Lcom/a/a/az;)V

    iget-object v2, p0, Lcom/a/a/az;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, p0, Lcom/a/a/az;->b:Lcom/a/a/e;

    const/4 v4, 0x5

    invoke-static {v3, v2, v4}, Lcom/a/a/e;->a(Lcom/a/a/e;FI)I

    move-result v3

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/a/a/az;->c:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    iget-object v5, p0, Lcom/a/a/az;->d:Lcom/a/a/ac;

    invoke-virtual {v5}, Lcom/a/a/ac;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/a/a/az;->c:Landroid/app/Activity;

    const v6, 0x1030044

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    new-instance v3, Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/a/a/az;->c:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/a/a/az;->b:Lcom/a/a/e;

    const/16 v6, 0xe

    invoke-static {v5, v2, v6}, Lcom/a/a/e;->a(Lcom/a/a/e;FI)I

    move-result v5

    iget-object v6, p0, Lcom/a/a/az;->b:Lcom/a/a/e;

    const/4 v7, 0x2

    invoke-static {v6, v2, v7}, Lcom/a/a/e;->a(Lcom/a/a/e;FI)I

    move-result v6

    iget-object v7, p0, Lcom/a/a/az;->b:Lcom/a/a/e;

    const/16 v8, 0xa

    invoke-static {v7, v2, v8}, Lcom/a/a/e;->a(Lcom/a/a/e;FI)I

    move-result v7

    iget-object v8, p0, Lcom/a/a/az;->b:Lcom/a/a/e;

    const/16 v9, 0xc

    invoke-static {v8, v2, v9}, Lcom/a/a/e;->a(Lcom/a/a/e;FI)I

    move-result v2

    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/az;->d:Lcom/a/a/ac;

    invoke-virtual {v3}, Lcom/a/a/ac;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/az;->d:Lcom/a/a/ac;

    invoke-virtual {v3}, Lcom/a/a/ac;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/a/a/az;->e:Lcom/a/a/a/ar;

    iget-boolean v1, v1, Lcom/a/a/a/ar;->d:Z

    if-eqz v1, :cond_9e

    new-instance v1, Lcom/a/a/bb;

    invoke-direct {v1, p0}, Lcom/a/a/bb;-><init>(Lcom/a/a/az;)V

    iget-object v2, p0, Lcom/a/a/az;->d:Lcom/a/a/ac;

    invoke-virtual {v2}, Lcom/a/a/ac;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_9e
    iget-object v1, p0, Lcom/a/a/az;->e:Lcom/a/a/a/ar;

    iget-boolean v1, v1, Lcom/a/a/a/ar;->f:Z

    if-eqz v1, :cond_b2

    new-instance v1, Lcom/a/a/bc;

    invoke-direct {v1, p0}, Lcom/a/a/bc;-><init>(Lcom/a/a/az;)V

    iget-object v2, p0, Lcom/a/a/az;->d:Lcom/a/a/ac;

    invoke-virtual {v2}, Lcom/a/a/ac;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_b2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
