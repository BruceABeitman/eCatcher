.class public Lcom/spotify/android/paste/widget/DialogLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private a:Landroid/widget/Button;
.field private b:Landroid/widget/Button;
.field private c:Landroid/widget/Button;
.field private d:Landroid/widget/Button;
.field private e:Landroid/widget/Button;
.field private f:Landroid/widget/Button;
.field private g:Landroid/widget/LinearLayout;
.field private h:Landroid/widget/TextView;
.field private i:Landroid/widget/TextView;
.field private j:Landroid/view/ViewGroup;
.field private k:Landroid/widget/ImageView;
.field private l:Landroid/view/View;
.field private m:Landroid/view/View;
.field private n:Ljava/lang/CharSequence;
.field private o:Ljava/lang/CharSequence;
.field private p:Landroid/view/View$OnClickListener;
.field private q:Landroid/view/View$OnClickListener;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const-class v0, Lcom/spotify/android/paste/widget/DialogLayout;
invoke-static {v0, p0}, Lcom/spotify/android/paste/widget/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V
sget v0, Lcom/spotify/android/paste/d;->a:I
invoke-static {p1, v0, p0}, Lcom/spotify/android/paste/widget/DialogLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
sget v0, Lcom/spotify/android/paste/c;->h:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->c:Landroid/widget/Button;
sget v0, Lcom/spotify/android/paste/c;->n:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->e:Landroid/widget/Button;
sget v0, Lcom/spotify/android/paste/c;->m:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->f:Landroid/widget/Button;
sget v0, Lcom/spotify/android/paste/c;->l:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->d:Landroid/widget/Button;
sget v0, Lcom/spotify/android/paste/c;->c:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->g:Landroid/widget/LinearLayout;
sget v0, Lcom/spotify/android/paste/c;->r:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->h:Landroid/widget/TextView;
sget v0, Lcom/spotify/android/paste/c;->b:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->i:Landroid/widget/TextView;
sget v0, Lcom/spotify/android/paste/c;->d:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->j:Landroid/view/ViewGroup;
sget v0, Lcom/spotify/android/paste/c;->f:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->k:Landroid/widget/ImageView;
sget v0, Lcom/spotify/android/paste/c;->s:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->m:Landroid/view/View;
return-void
.end method
.method private c()V
.registers 6
const/4 v4, 0x0
const/4 v3, 0x0
const/16 v2, 0x8
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->n:Ljava/lang/CharSequence;
if-nez v0, :cond_16
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->o:Ljava/lang/CharSequence;
if-nez v0, :cond_16
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->g:Landroid/widget/LinearLayout;
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
iput-object v4, p0, Lcom/spotify/android/paste/widget/DialogLayout;->b:Landroid/widget/Button;
iput-object v4, p0, Lcom/spotify/android/paste/widget/DialogLayout;->a:Landroid/widget/Button;
:goto_15
:cond_15
return-void
:cond_16
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->g:Landroid/widget/LinearLayout;
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->n:Ljava/lang/CharSequence;
if-eqz v0, :cond_5c
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->o:Ljava/lang/CharSequence;
if-eqz v0, :cond_5c
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->d:Landroid/widget/Button;
invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->c:Landroid/widget/Button;
invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->e:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->f:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->c:Landroid/widget/Button;
iget-object v1, p0, Lcom/spotify/android/paste/widget/DialogLayout;->o:Ljava/lang/CharSequence;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->c:Landroid/widget/Button;
iget-object v1, p0, Lcom/spotify/android/paste/widget/DialogLayout;->q:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->d:Landroid/widget/Button;
iget-object v1, p0, Lcom/spotify/android/paste/widget/DialogLayout;->n:Ljava/lang/CharSequence;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->d:Landroid/widget/Button;
iget-object v1, p0, Lcom/spotify/android/paste/widget/DialogLayout;->p:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->d:Landroid/widget/Button;
iput-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->a:Landroid/widget/Button;
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->c:Landroid/widget/Button;
iput-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->b:Landroid/widget/Button;
goto :goto_15
:cond_5c
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->d:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->c:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->n:Ljava/lang/CharSequence;
if-eqz v0, :cond_88
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->e:Landroid/widget/Button;
invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->f:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->e:Landroid/widget/Button;
iget-object v1, p0, Lcom/spotify/android/paste/widget/DialogLayout;->n:Ljava/lang/CharSequence;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->e:Landroid/widget/Button;
iget-object v1, p0, Lcom/spotify/android/paste/widget/DialogLayout;->p:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->e:Landroid/widget/Button;
iput-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->a:Landroid/widget/Button;
iput-object v4, p0, Lcom/spotify/android/paste/widget/DialogLayout;->b:Landroid/widget/Button;
:cond_88
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->o:Ljava/lang/CharSequence;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->f:Landroid/widget/Button;
invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->e:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->f:Landroid/widget/Button;
iget-object v1, p0, Lcom/spotify/android/paste/widget/DialogLayout;->o:Ljava/lang/CharSequence;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->f:Landroid/widget/Button;
iget-object v1, p0, Lcom/spotify/android/paste/widget/DialogLayout;->q:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->f:Landroid/widget/Button;
iput-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->b:Landroid/widget/Button;
iput-object v4, p0, Lcom/spotify/android/paste/widget/DialogLayout;->a:Landroid/widget/Button;
goto/16 :goto_15
.end method
.method public final a()Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->b:Landroid/widget/Button;
return-object v0
.end method
.method public final a(I)V
.registers 3
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/DialogLayout;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final a(ILandroid/view/View$OnClickListener;)V
.registers 4
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/DialogLayout;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
return-void
.end method
.method public final a(Landroid/view/View;)V
.registers 5
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->l:Landroid/view/View;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->j:Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/spotify/android/paste/widget/DialogLayout;->l:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_b
if-nez p1, :cond_15
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->j:Landroid/view/ViewGroup;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
:goto_14
return-void
:cond_15
iput-object p1, p0, Lcom/spotify/android/paste/widget/DialogLayout;->l:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->j:Landroid/view/ViewGroup;
const/4 v1, -0x1
const/4 v2, -0x2
invoke-virtual {v0, p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->j:Landroid/view/ViewGroup;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
goto :goto_14
.end method
.method public final a(Ljava/lang/CharSequence;)V
.registers 4
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->h:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->m:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method public final a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
.registers 3
iput-object p1, p0, Lcom/spotify/android/paste/widget/DialogLayout;->n:Ljava/lang/CharSequence;
iput-object p2, p0, Lcom/spotify/android/paste/widget/DialogLayout;->p:Landroid/view/View$OnClickListener;
invoke-direct {p0}, Lcom/spotify/android/paste/widget/DialogLayout;->c()V
return-void
.end method
.method public final b()Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->a:Landroid/widget/Button;
return-object v0
.end method
.method public final b(I)V
.registers 4
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->k:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->k:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
return-void
.end method
.method public final b(ILandroid/view/View$OnClickListener;)V
.registers 4
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/DialogLayout;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lcom/spotify/android/paste/widget/DialogLayout;->b(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
return-void
.end method
.method public final b(Ljava/lang/CharSequence;)V
.registers 4
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->i:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/DialogLayout;->i:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
return-void
.end method
.method public final b(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
.registers 3
iput-object p1, p0, Lcom/spotify/android/paste/widget/DialogLayout;->o:Ljava/lang/CharSequence;
iput-object p2, p0, Lcom/spotify/android/paste/widget/DialogLayout;->q:Landroid/view/View$OnClickListener;
invoke-direct {p0}, Lcom/spotify/android/paste/widget/DialogLayout;->c()V
return-void
.end method
.method public final c(I)V
.registers 3
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/DialogLayout;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->b(Ljava/lang/CharSequence;)V
return-void
.end method