.class public Lcom/bbm/ui/am;
.super Lcom/bbm/ui/cs;
.source "ConferenceHeaderView.java"
.field private a:Lcom/bbm/d/a;
.field private final d:Landroid/content/Context;
.field private final e:Lcom/google/b/a/l;
.field private f:Lcom/google/b/a/l;
.field private g:Lcom/google/b/a/l;
.field private h:Lcom/google/b/a/l;
.field private final i:Lcom/bbm/j/k;
.field private final j:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActionBar;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Lcom/bbm/ui/cs;-><init>()V
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/am;->f:Lcom/google/b/a/l;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/am;->g:Lcom/google/b/a/l;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/am;->h:Lcom/google/b/a/l;
new-instance v0, Lcom/bbm/ui/an;
invoke-direct {v0, p0}, Lcom/bbm/ui/an;-><init>(Lcom/bbm/ui/am;)V
iput-object v0, p0, Lcom/bbm/ui/am;->i:Lcom/bbm/j/k;
invoke-static {p2}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p2}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/am;->e:Lcom/google/b/a/l;
iput-object p1, p0, Lcom/bbm/ui/am;->d:Landroid/content/Context;
iput-object p3, p0, Lcom/bbm/ui/am;->j:Ljava/lang/String;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/am;->a:Lcom/bbm/d/a;
iget-object v0, p0, Lcom/bbm/ui/am;->e:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActionBar;
const v1, 0x7f03010c
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V
iget-object v0, p0, Lcom/bbm/ui/am;->e:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActionBar;
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
iget-object v0, p0, Lcom/bbm/ui/am;->e:Lcom/google/b/a/l;
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
iput-object v0, p0, Lcom/bbm/ui/am;->c:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/ui/am;->e:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0533
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/am;->g:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/ui/am;->e:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a053e
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/am;->f:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/ui/am;->e:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0540
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/am;->h:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/ui/am;->i:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/am;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/am;->j:Ljava/lang/String;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/am;)Lcom/bbm/d/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/am;->a:Lcom/bbm/d/a;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/am;)Lcom/google/b/a/l;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/am;->f:Lcom/google/b/a/l;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/am;)Lcom/google/b/a/l;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/am;->h:Lcom/google/b/a/l;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/am;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/am;->d:Landroid/content/Context;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/am;)Lcom/google/b/a/l;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/am;->g:Lcom/google/b/a/l;
return-object v0
.end method
.method public final a()V
.registers 2
invoke-super {p0}, Lcom/bbm/ui/cs;->a()V
iget-object v0, p0, Lcom/bbm/ui/am;->i:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public b()V
.registers 1
return-void
.end method
.method public b(Ljava/lang/String;)V
.registers 2
return-void
.end method