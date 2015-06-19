.class public final Lcom/instagram/ui/dialog/b;
.super Ljava/lang/Object;
.source "IgDialogBuilder.java"
.field private final a:Landroid/content/Context;
.field private final b:Landroid/app/Dialog;
.field private final c:Landroid/widget/ListView;
.field private final d:Landroid/view/View;
.field private final e:Landroid/view/View;
.field private final f:Landroid/widget/TextView;
.field private final g:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
.field private final h:Landroid/widget/TextView;
.field private final i:Landroid/widget/TextView;
.field private final j:Landroid/view/View;
.field private final k:Landroid/widget/TextView;
.field private final l:Landroid/widget/TextView;
.field private final m:Landroid/widget/TextView;
.field private final n:Landroid/view/View;
.field private final o:Landroid/view/ViewGroup;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
sget v0, Lcom/facebook/aw;->alert_dialog:I
sget v1, Lcom/facebook/ba;->IgDialog:I
invoke-direct {p0, p1, v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;II)V
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;II)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/ui/dialog/b;->a:Landroid/content/Context;
new-instance v0, Landroid/app/Dialog;
invoke-direct {v0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
invoke-virtual {v0, p2}, Landroid/app/Dialog;->setContentView(I)V
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
const v1, 0x102000a
invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
sget v1, Lcom/facebook/av;->scrollView:I
invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/ui/dialog/b;->d:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
sget v1, Lcom/facebook/av;->alertTitleContainer:I
invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/ui/dialog/b;->e:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
sget v1, Lcom/facebook/av;->alertTitle:I
invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/ui/dialog/b;->f:Landroid/widget/TextView;
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
sget v1, Lcom/facebook/av;->message_avatar:I
invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;
iput-object v0, p0, Lcom/instagram/ui/dialog/b;->g:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
sget v1, Lcom/facebook/av;->message:I
invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/ui/dialog/b;->h:Landroid/widget/TextView;
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
sget v1, Lcom/facebook/av;->link:I
invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/ui/dialog/b;->i:Landroid/widget/TextView;
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
sget v1, Lcom/facebook/av;->button_group:I
invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/ui/dialog/b;->j:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
sget v1, Lcom/facebook/av;->button_positive:I
invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/ui/dialog/b;->k:Landroid/widget/TextView;
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
sget v1, Lcom/facebook/av;->button_negative:I
invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/ui/dialog/b;->l:Landroid/widget/TextView;
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
sget v1, Lcom/facebook/av;->button_divider:I
invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/ui/dialog/b;->n:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
sget v1, Lcom/facebook/av;->button_blue:I
invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/ui/dialog/b;->m:Landroid/widget/TextView;
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
sget v1, Lcom/facebook/av;->customViewHolder:I
invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lcom/instagram/ui/dialog/b;->o:Landroid/view/ViewGroup;
return-void
.end method
.method static synthetic a(Lcom/instagram/ui/dialog/b;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->a:Landroid/content/Context;
return-object v0
.end method
.method private a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/TextView;I)V
.registers 6
invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
new-instance v0, Lcom/instagram/ui/dialog/d;
invoke-direct {v0, p0, p2, p4}, Lcom/instagram/ui/dialog/d;-><init>(Lcom/instagram/ui/dialog/b;Landroid/content/DialogInterface$OnClickListener;I)V
invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method static synthetic b(Lcom/instagram/ui/dialog/b;)Landroid/app/Dialog;
.registers 2
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
return-object v0
.end method
.method private c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
.registers 5
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->m:Landroid/widget/TextView;
const/4 v1, -0x1
invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/TextView;I)V
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->m:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
return-object p0
.end method
.method public final a(I)Lcom/instagram/ui/dialog/b;
.registers 4
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->f:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->e:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-object p0
.end method
.method public final a(IILjava/lang/String;)Lcom/instagram/ui/dialog/b;
.registers 8
const/4 v3, 0x0
new-instance v0, Landroid/text/SpannableString;
iget-object v1, p0, Lcom/instagram/ui/dialog/b;->a:Landroid/content/Context;
invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
new-instance v1, Landroid/text/style/UnderlineSpan;
invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V
invoke-virtual {v0}, Landroid/text/SpannableString;->length()I
move-result v2
invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
iget-object v1, p0, Lcom/instagram/ui/dialog/b;->i:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->i:Landroid/widget/TextView;
new-instance v1, Lcom/instagram/ui/dialog/c;
invoke-direct {v1, p0, p3, p2}, Lcom/instagram/ui/dialog/c;-><init>(Lcom/instagram/ui/dialog/b;Ljava/lang/String;I)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->i:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
return-object p0
.end method
.method public final a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
.registers 4
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->a:Landroid/content/Context;
invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0, p2}, Lcom/instagram/ui/dialog/b;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/instagram/ui/dialog/b;
.registers 3
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
return-object p0
.end method
.method public final a(Landroid/view/View;)Lcom/instagram/ui/dialog/b;
.registers 4
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->o:Landroid/view/ViewGroup;
invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->o:Landroid/view/ViewGroup;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
return-object p0
.end method
.method public final a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;
.registers 4
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->h:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->d:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-object p0
.end method
.method public final a(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;
.registers 4
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->g:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
invoke-virtual {v0, p1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->g:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setVisibility(I)V
return-object p0
.end method
.method public final a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
.registers 5
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->k:Landroid/widget/TextView;
const/4 v1, -0x1
invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/TextView;I)V
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->j:Landroid/view/View;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->j:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_10
return-object p0
.end method
.method public final a(Z)Lcom/instagram/ui/dialog/b;
.registers 3
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V
return-object p0
.end method
.method public final a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
.registers 6
new-instance v0, Lcom/instagram/ui/menu/r;
iget-object v1, p0, Lcom/instagram/ui/dialog/b;->a:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/instagram/ui/menu/r;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;
new-instance v2, Lcom/instagram/ui/dialog/e;
invoke-direct {v2, p0, p2}, Lcom/instagram/ui/dialog/e;-><init>(Lcom/instagram/ui/dialog/b;Landroid/content/DialogInterface$OnClickListener;)V
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
invoke-virtual {v0, p1}, Lcom/instagram/ui/menu/r;->a([Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
return-object p0
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
return-void
.end method
.method public final b()Lcom/instagram/ui/dialog/b;
.registers 3
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->h:Landroid/widget/TextView;
const/16 v1, 0x11
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V
return-object p0
.end method
.method public final b(I)Lcom/instagram/ui/dialog/b;
.registers 3
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->a:Landroid/content/Context;
invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;
move-result-object v0
return-object v0
.end method
.method public final b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
.registers 4
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->a:Landroid/content/Context;
invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
return-object v0
.end method
.method public final b(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;
.registers 4
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->f:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->e:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-object p0
.end method
.method public final b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
.registers 6
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->l:Landroid/widget/TextView;
const/4 v1, -0x2
invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/TextView;I)V
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->l:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->n:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->k:Landroid/widget/TextView;
sget v1, Lcom/facebook/au;->dialog_bottom_right_button:I
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V
return-object p0
.end method
.method public final c()Landroid/app/Dialog;
.registers 6
const/4 v2, 0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->f:Landroid/widget/TextView;
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->h:Landroid/widget/TextView;
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->e:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
const/16 v1, 0x8
if-ne v0, v1, :cond_31
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->h:Landroid/widget/TextView;
iget-object v1, p0, Lcom/instagram/ui/dialog/b;->h:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
const/16 v4, 0x4c
invoke-static {v1, v4}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F
move-result v1
float-to-int v1, v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->h:Landroid/widget/TextView;
const/16 v1, 0x11
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V
:cond_31
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->e:Landroid/view/View;
if-eqz v0, :cond_7c
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->d:Landroid/view/View;
if-eqz v0, :cond_7c
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->j:Landroid/view/View;
if-eqz v0, :cond_7c
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->m:Landroid/widget/TextView;
if-eqz v0, :cond_7c
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;
if-eqz v0, :cond_7c
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I
move-result v0
if-nez v0, :cond_7c
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/instagram/ui/menu/r;
iget-object v1, p0, Lcom/instagram/ui/dialog/b;->e:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v1
if-eqz v1, :cond_7f
iget-object v1, p0, Lcom/instagram/ui/dialog/b;->d:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v1
if-eqz v1, :cond_7f
move v1, v2
:goto_66
invoke-virtual {v0, v1}, Lcom/instagram/ui/menu/r;->a(Z)V
iget-object v1, p0, Lcom/instagram/ui/dialog/b;->j:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v1
if-eqz v1, :cond_81
iget-object v1, p0, Lcom/instagram/ui/dialog/b;->m:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I
move-result v1
if-eqz v1, :cond_81
:goto_79
invoke-virtual {v0, v2}, Lcom/instagram/ui/menu/r;->b(Z)V
:cond_7c
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
return-object v0
:cond_7f
move v1, v3
goto :goto_66
:cond_81
move v2, v3
goto :goto_79
.end method
.method public final c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
.registers 4
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->a:Landroid/content/Context;
invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lcom/instagram/ui/dialog/b;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
return-object v0
.end method
.method public final d()Lcom/instagram/ui/dialog/b;
.registers 3
iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V
return-object p0
.end method