.class public Lcom/bbm/ui/ae;
.super Lcom/bbm/ui/cs;
.source "ChatHeaderView.java"
.field public a:Lcom/google/b/a/l;
.field private final d:Landroid/content/Context;
.field private e:Lcom/google/b/a/l;
.field private f:Lcom/google/b/a/l;
.field private g:Lcom/google/b/a/l;
.field private h:Lcom/google/b/a/l;
.field private i:Lcom/google/b/a/l;
.field private final j:Lcom/bbm/j/a;
.field private final k:Lcom/bbm/j/k;
.field private final l:Lcom/bbm/j/u;
.field private final m:Lcom/bbm/j/u;
.field private final n:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActionBar;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Lcom/bbm/ui/cs;-><init>()V
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ae;->e:Lcom/google/b/a/l;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ae;->f:Lcom/google/b/a/l;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ae;->g:Lcom/google/b/a/l;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ae;->h:Lcom/google/b/a/l;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ae;->i:Lcom/google/b/a/l;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ae;->a:Lcom/google/b/a/l;
new-instance v0, Lcom/bbm/ui/af;
invoke-direct {v0, p0}, Lcom/bbm/ui/af;-><init>(Lcom/bbm/ui/ae;)V
iput-object v0, p0, Lcom/bbm/ui/ae;->j:Lcom/bbm/j/a;
new-instance v0, Lcom/bbm/ui/ag;
invoke-direct {v0, p0}, Lcom/bbm/ui/ag;-><init>(Lcom/bbm/ui/ae;)V
iput-object v0, p0, Lcom/bbm/ui/ae;->k:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/ai;
invoke-direct {v0, p0}, Lcom/bbm/ui/ai;-><init>(Lcom/bbm/ui/ae;)V
iput-object v0, p0, Lcom/bbm/ui/ae;->l:Lcom/bbm/j/u;
new-instance v0, Lcom/bbm/ui/aj;
invoke-direct {v0, p0}, Lcom/bbm/ui/aj;-><init>(Lcom/bbm/ui/ae;)V
iput-object v0, p0, Lcom/bbm/ui/ae;->m:Lcom/bbm/j/u;
invoke-static {p2}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p2}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ae;->b:Lcom/google/b/a/l;
iput-object p1, p0, Lcom/bbm/ui/ae;->d:Landroid/content/Context;
iput-object p3, p0, Lcom/bbm/ui/ae;->n:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/ae;->b:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActionBar;
const v1, 0x7f030109
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V
iget-object v0, p0, Lcom/bbm/ui/ae;->b:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActionBar;
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
iget-object v0, p0, Lcom/bbm/ui/ae;->b:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0529
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ae;->c:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/ui/ae;->b:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0527
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ae;->e:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/ui/ae;->e:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_b9
iget-object v0, p0, Lcom/bbm/ui/ae;->e:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
new-instance v1, Lcom/bbm/ui/ak;
invoke-direct {v1, p0}, Lcom/bbm/ui/ak;-><init>(Lcom/bbm/ui/ae;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_b9
iget-object v0, p0, Lcom/bbm/ui/ae;->b:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a052d
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ae;->f:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/ui/ae;->b:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a052f
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ae;->g:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/ui/ae;->b:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a052e
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ae;->h:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/ui/ae;->b:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0530
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ae;->i:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/ui/ae;->b:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_163
iget-object v0, p0, Lcom/bbm/ui/ae;->b:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0526
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/bbm/ui/al;
invoke-direct {v1, p0}, Lcom/bbm/ui/al;-><init>(Lcom/bbm/ui/ae;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/ae;->b:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a052a
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/ae;->a:Lcom/google/b/a/l;
:cond_163
iget-object v0, p0, Lcom/bbm/ui/ae;->k:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/ae;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ae;->n:Ljava/lang/String;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/ae;)Lcom/bbm/j/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ae;->j:Lcom/bbm/j/a;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ae;->e:Lcom/google/b/a/l;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/ae;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ae;->d:Landroid/content/Context;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ae;->f:Lcom/google/b/a/l;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ae;->g:Lcom/google/b/a/l;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ae;->h:Lcom/google/b/a/l;
return-object v0
.end method
.method static synthetic h(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ae;->i:Lcom/google/b/a/l;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ae;->a:Lcom/google/b/a/l;
return-object v0
.end method
.method static synthetic j(Lcom/bbm/ui/ae;)Lcom/bbm/j/u;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ae;->l:Lcom/bbm/j/u;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/ae;)Lcom/bbm/j/u;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ae;->m:Lcom/bbm/j/u;
return-object v0
.end method
.method public final a()V
.registers 2
invoke-super {p0}, Lcom/bbm/ui/cs;->a()V
iget-object v0, p0, Lcom/bbm/ui/ae;->j:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->d()V
iget-object v0, p0, Lcom/bbm/ui/ae;->k:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
iget-object v0, p0, Lcom/bbm/ui/ae;->l:Lcom/bbm/j/u;
invoke-virtual {v0}, Lcom/bbm/j/u;->e()V
iget-object v0, p0, Lcom/bbm/ui/ae;->m:Lcom/bbm/j/u;
invoke-virtual {v0}, Lcom/bbm/j/u;->e()V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public final a(Z)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/ae;->a:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/bbm/ui/ae;->a:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
if-eqz p1, :cond_17
const/4 v1, 0x0
:goto_13
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
:cond_16
return-void
:cond_17
const/16 v1, 0x8
goto :goto_13
.end method
.method public b(Ljava/lang/String;)V
.registers 2
return-void
.end method