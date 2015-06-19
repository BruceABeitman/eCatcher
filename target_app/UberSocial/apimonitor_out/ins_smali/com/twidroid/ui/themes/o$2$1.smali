.class  Lcom/twidroid/ui/themes/o$2$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Ljava/lang/String;
.field final synthetic d:Lcom/twidroid/ui/themes/q;
.field final synthetic e:Lcom/twidroid/ui/themes/o$2;
.method constructor <init>(Lcom/twidroid/ui/themes/o$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/ui/themes/q;)V
.registers 6
iput-object p1, p0, Lcom/twidroid/ui/themes/o$2$1;->e:Lcom/twidroid/ui/themes/o$2;
iput-object p2, p0, Lcom/twidroid/ui/themes/o$2$1;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/twidroid/ui/themes/o$2$1;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/twidroid/ui/themes/o$2$1;->c:Ljava/lang/String;
iput-object p5, p0, Lcom/twidroid/ui/themes/o$2$1;->d:Lcom/twidroid/ui/themes/q;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 14
const/16 v12, 0x8
const/4 v11, 0x2
const/4 v10, -0x2
const/4 v9, 0x0
const/4 v8, 0x1
new-instance v0, Landroid/widget/RelativeLayout;
iget-object v1, p0, Lcom/twidroid/ui/themes/o$2$1;->e:Lcom/twidroid/ui/themes/o$2;
iget-object v1, v1, Lcom/twidroid/ui/themes/o$2;->h:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/widget/TextView;
iget-object v2, p0, Lcom/twidroid/ui/themes/o$2$1;->e:Lcom/twidroid/ui/themes/o$2;
iget-object v2, v2, Lcom/twidroid/ui/themes/o$2;->h:Landroid/content/Context;
invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
new-instance v2, Landroid/widget/TextView;
iget-object v3, p0, Lcom/twidroid/ui/themes/o$2$1;->e:Lcom/twidroid/ui/themes/o$2;
iget-object v3, v3, Lcom/twidroid/ui/themes/o$2;->h:Landroid/content/Context;
invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
new-instance v3, Landroid/widget/ImageView;
iget-object v4, p0, Lcom/twidroid/ui/themes/o$2$1;->e:Lcom/twidroid/ui/themes/o$2;
iget-object v4, v4, Lcom/twidroid/ui/themes/o$2;->h:Landroid/content/Context;
invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
const/high16 v4, 0x4234
iget-object v5, p0, Lcom/twidroid/ui/themes/o$2$1;->e:Lcom/twidroid/ui/themes/o$2;
iget-object v5, v5, Lcom/twidroid/ui/themes/o$2;->h:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v5
iget v5, v5, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v4, v5
const/high16 v5, 0x3f00
add-float/2addr v4, v5
float-to-int v4, v4
const/16 v5, 0x14
const/16 v6, 0x14
const/16 v7, 0xa
invoke-virtual {v0, v5, v9, v6, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V
new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v5, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {v5, v9, v12, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V
const/4 v4, -0x1
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V
invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
const/16 v4, 0x761
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V
const/16 v4, 0x763
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setId(I)V
const/16 v4, 0x762
invoke-virtual {v2, v4}, Landroid/widget/TextView;->setId(I)V
invoke-virtual {v2, v11}, Landroid/widget/TextView;->setMaxLines(I)V
const/high16 v4, 0x4140
invoke-virtual {v2, v11, v4}, Landroid/widget/TextView;->setTextSize(IF)V
const/high16 v4, 0x4160
invoke-virtual {v1, v11, v4}, Landroid/widget/TextView;->setTextSize(IF)V
const/4 v4, -0x1
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V
sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
invoke-static {v4, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
move-result-object v4
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I
move-result v5
invoke-virtual {v4, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
invoke-virtual {v4, v9, v9, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I
move-result v5
invoke-virtual {v4, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
const/4 v5, 0x3
invoke-virtual {v1}, Landroid/widget/TextView;->getId()I
move-result v6
invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setBackgroundColor(I)V
iget-object v4, p0, Lcom/twidroid/ui/themes/o$2$1;->a:Ljava/lang/String;
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/twidroid/ui/themes/o$2$1;->b:Ljava/lang/String;
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/twidroid/ui/themes/o$2$1;->c:Ljava/lang/String;
if-eqz v1, :cond_120
const/4 v1, 0x0
invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
iget-object v1, p0, Lcom/twidroid/ui/themes/o$2$1;->c:Ljava/lang/String;
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
:goto_cf
iget-object v1, p0, Lcom/twidroid/ui/themes/o$2$1;->e:Lcom/twidroid/ui/themes/o$2;
iget-object v1, v1, Lcom/twidroid/ui/themes/o$2;->b:Landroid/app/ProgressDialog;
invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V
new-instance v1, Landroid/app/AlertDialog$Builder;
iget-object v2, p0, Lcom/twidroid/ui/themes/o$2$1;->e:Lcom/twidroid/ui/themes/o$2;
iget-object v2, v2, Lcom/twidroid/ui/themes/o$2;->h:Landroid/content/Context;
invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v2, 0x7f020067
invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c02e3
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/ui/themes/o$2$1;->e:Lcom/twidroid/ui/themes/o$2;
iget-object v1, v1, Lcom/twidroid/ui/themes/o$2;->h:Landroid/content/Context;
const v2, 0x7f0c02e2
invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c002c
new-instance v2, Lcom/twidroid/ui/themes/o$2$1$2;
invoke-direct {v2, p0}, Lcom/twidroid/ui/themes/o$2$1$2;-><init>(Lcom/twidroid/ui/themes/o$2$1;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c0029
new-instance v2, Lcom/twidroid/ui/themes/o$2$1$1;
invoke-direct {v2, p0}, Lcom/twidroid/ui/themes/o$2$1$1;-><init>(Lcom/twidroid/ui/themes/o$2$1;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
:try_start_11c
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
:goto_11f
:try_end_11f
.catch Ljava/lang/Exception; {:try_start_11c .. :try_end_11f} :catch_124
return-void
:cond_120
invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_cf
:catch_124
move-exception v0
goto :goto_11f
.end method