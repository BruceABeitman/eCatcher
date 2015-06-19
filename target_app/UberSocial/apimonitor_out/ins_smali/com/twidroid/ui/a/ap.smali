.class public Lcom/twidroid/ui/a/ap;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field protected static final a:Ljava/lang/String;
.field private b:Lcom/twidroid/model/twitter/e;
.field private c:Lcom/twidroid/ui/a/aq;
.field private d:Landroid/view/LayoutInflater;
.field private e:Z
.field private f:Ljava/util/List;
.field private g:Lcom/twidroid/ui/themes/r;
.field private h:Lcom/twidroid/b/a/b;
.field private i:Landroid/app/Activity;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/twidroid/ui/a/ap;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/ui/a/ap;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/app/Activity;Lcom/twidroid/model/twitter/e;Z)V
.registers 4
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
invoke-direct {p0, p1}, Lcom/twidroid/ui/a/ap;->a(Landroid/app/Activity;)V
iput-object p2, p0, Lcom/twidroid/ui/a/ap;->b:Lcom/twidroid/model/twitter/e;
iput-boolean p3, p0, Lcom/twidroid/ui/a/ap;->e:Z
return-void
.end method
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
.registers 6
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
invoke-direct {p0, p1}, Lcom/twidroid/ui/a/ap;->a(Landroid/app/Activity;)V
new-instance v0, Lcom/twidroid/model/twitter/e;
invoke-direct {v0}, Lcom/twidroid/model/twitter/e;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/ap;->b:Lcom/twidroid/model/twitter/e;
iput-boolean p3, p0, Lcom/twidroid/ui/a/ap;->e:Z
new-instance v0, Lcom/twidroid/ui/a/ap$1;
invoke-direct {v0, p0, p2}, Lcom/twidroid/ui/a/ap$1;-><init>(Lcom/twidroid/ui/a/ap;Ljava/lang/String;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/ap$1;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method
.method public constructor <init>(Landroid/app/Activity;Z)V
.registers 4
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
invoke-direct {p0, p1}, Lcom/twidroid/ui/a/ap;->a(Landroid/app/Activity;)V
new-instance v0, Lcom/twidroid/model/twitter/e;
invoke-direct {v0}, Lcom/twidroid/model/twitter/e;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/ap;->b:Lcom/twidroid/model/twitter/e;
iput-boolean p2, p0, Lcom/twidroid/ui/a/ap;->e:Z
return-void
.end method
.method static synthetic a(Lcom/twidroid/ui/a/ap;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/ap;->h:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method private a(Landroid/app/Activity;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/ui/a/ap;->i:Landroid/app/Activity;
invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/ui/a/ap;->g:Lcom/twidroid/ui/themes/r;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/a/ap;->h:Lcom/twidroid/b/a/b;
return-void
.end method
.method private a(Landroid/widget/Button;Z)V
.registers 4
if-eqz p2, :cond_11
const v0, 0x7f0200aa
:goto_5
invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V
if-eqz p2, :cond_15
const v0, 0x7f0c0095
:goto_d
invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V
return-void
:cond_11
const v0, 0x7f020098
goto :goto_5
:cond_15
const v0, 0x7f0c0093
goto :goto_d
.end method
.method private a(Lcom/twidroid/model/twitter/d;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/ui/a/ap;->f:Ljava/util/List;
invoke-virtual {p1}, Lcom/twidroid/model/twitter/d;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
invoke-virtual {p0}, Lcom/twidroid/ui/a/ap;->notifyDataSetChanged()V
return-void
.end method
.method static synthetic a(Lcom/twidroid/ui/a/ap;Landroid/widget/Button;Z)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/twidroid/ui/a/ap;->a(Landroid/widget/Button;Z)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/ui/a/ap;Lcom/twidroid/model/twitter/d;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/ui/a/ap;->a(Lcom/twidroid/model/twitter/d;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/ui/a/ap;Ljava/lang/String;)Z
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/ui/a/ap;->a(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method private a(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/ap;->f:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method static synthetic b(Lcom/twidroid/ui/a/ap;)Lcom/twidroid/model/twitter/e;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/ap;->b:Lcom/twidroid/model/twitter/e;
return-object v0
.end method
.method static synthetic c(Lcom/twidroid/ui/a/ap;)Lcom/twidroid/ui/a/aq;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/ap;->c:Lcom/twidroid/ui/a/aq;
return-object v0
.end method
.method static synthetic d(Lcom/twidroid/ui/a/ap;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/ap;->f:Ljava/util/List;
return-object v0
.end method
.method static synthetic e(Lcom/twidroid/ui/a/ap;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/ap;->i:Landroid/app/Activity;
return-object v0
.end method
.method public a(I)Lcom/twidroid/model/twitter/d;
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/ap;->b:Lcom/twidroid/model/twitter/e;
invoke-virtual {v0, p1}, Lcom/twidroid/model/twitter/e;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/d;
return-object v0
.end method
.method public a(Lcom/twidroid/model/twitter/e;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/a/ap;->b:Lcom/twidroid/model/twitter/e;
invoke-virtual {p0}, Lcom/twidroid/ui/a/ap;->notifyDataSetChanged()V
return-void
.end method
.method public a(Lcom/twidroid/ui/a/aq;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/a/ap;->c:Lcom/twidroid/ui/a/aq;
return-void
.end method
.method public a(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/a/ap;->f:Ljava/util/List;
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/ap;->b:Lcom/twidroid/model/twitter/e;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/e;->size()I
move-result v0
return v0
.end method
.method public synthetic getItem(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/ap;->a(I)Lcom/twidroid/model/twitter/d;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getItemViewType(I)I
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/ap;->b:Lcom/twidroid/model/twitter/e;
invoke-virtual {v0, p1}, Lcom/twidroid/model/twitter/e;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/d;
iget-boolean v0, v0, Lcom/twidroid/model/twitter/d;->g:Z
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 11
const/4 v6, 0x0
const/4 v5, 0x0
iget-object v0, p0, Lcom/twidroid/ui/a/ap;->d:Landroid/view/LayoutInflater;
if-nez v0, :cond_10
invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/a/ap;->d:Landroid/view/LayoutInflater;
:cond_10
iget-object v0, p0, Lcom/twidroid/ui/a/ap;->b:Lcom/twidroid/model/twitter/e;
invoke-virtual {v0, p1}, Lcom/twidroid/model/twitter/e;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/d;
if-nez p2, :cond_a3
new-instance v3, Lcom/twidroid/ui/a/ar;
invoke-direct {v3, v5}, Lcom/twidroid/ui/a/ar;-><init>(Lcom/twidroid/ui/a/ap$1;)V
iget-boolean v1, v0, Lcom/twidroid/model/twitter/d;->g:Z
if-eqz v1, :cond_85
iget-object v1, p0, Lcom/twidroid/ui/a/ap;->d:Landroid/view/LayoutInflater;
const v2, 0x7f03005e
invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
move-object v2, v1
:goto_2d
const v1, 0x7f0900f4
invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, v3, Lcom/twidroid/ui/a/ar;->a:Landroid/widget/TextView;
iget-boolean v1, p0, Lcom/twidroid/ui/a/ap;->e:Z
if-eqz v1, :cond_9a
iget-object v1, v3, Lcom/twidroid/ui/a/ar;->a:Landroid/widget/TextView;
iget-object v4, p0, Lcom/twidroid/ui/a/ap;->g:Lcom/twidroid/ui/themes/r;
invoke-virtual {v4}, Lcom/twidroid/ui/themes/r;->p()I
move-result v4
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V
iget-object v1, v3, Lcom/twidroid/ui/a/ar;->a:Landroid/widget/TextView;
iget-object v4, p0, Lcom/twidroid/ui/a/ap;->g:Lcom/twidroid/ui/themes/r;
invoke-virtual {v4}, Lcom/twidroid/ui/themes/r;->q()I
move-result v4
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V
:goto_52
invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object v1, v3
:goto_56
iget-object v3, v1, Lcom/twidroid/ui/a/ar;->a:Landroid/widget/TextView;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->d()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-boolean v3, v0, Lcom/twidroid/model/twitter/d;->g:Z
if-eqz v3, :cond_ab
const v0, 0x7f090142
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v3, p0, Lcom/twidroid/ui/a/ap;->g:Lcom/twidroid/ui/themes/r;
invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->S()I
move-result v3
invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V
iget-object v0, v1, Lcom/twidroid/ui/a/ar;->a:Landroid/widget/TextView;
const/4 v3, 0x1
invoke-virtual {v0, v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v0, v1, Lcom/twidroid/ui/a/ar;->a:Landroid/widget/TextView;
iget-object v1, p0, Lcom/twidroid/ui/a/ap;->g:Lcom/twidroid/ui/themes/r;
invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->S()I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
:goto_84
return-object v2
:cond_85
iget-object v1, p0, Lcom/twidroid/ui/a/ap;->d:Landroid/view/LayoutInflater;
const v2, 0x7f03005f
invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
const v1, 0x7f090143
invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
iput-object v1, v3, Lcom/twidroid/ui/a/ar;->b:Landroid/widget/Button;
goto :goto_2d
:cond_9a
iget-object v1, v3, Lcom/twidroid/ui/a/ar;->a:Landroid/widget/TextView;
const v4, 0x7f08002c
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V
goto :goto_52
:cond_a3
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/ui/a/ar;
move-object v2, p2
goto :goto_56
:cond_ab
iget-object v3, v1, Lcom/twidroid/ui/a/ar;->b:Landroid/widget/Button;
new-instance v4, Lcom/twidroid/ui/a/ap$2;
invoke-direct {v4, p0, v0}, Lcom/twidroid/ui/a/ap$2;-><init>(Lcom/twidroid/ui/a/ap;Lcom/twidroid/model/twitter/d;)V
invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v3, v1, Lcom/twidroid/ui/a/ar;->b:Landroid/widget/Button;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->a()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/a/ap;->a(Ljava/lang/String;)Z
move-result v0
invoke-direct {p0, v3, v0}, Lcom/twidroid/ui/a/ap;->a(Landroid/widget/Button;Z)V
iget-object v0, p0, Lcom/twidroid/ui/a/ap;->g:Lcom/twidroid/ui/themes/r;
instance-of v0, v0, Lcom/twidroid/ui/themes/a;
if-nez v0, :cond_d1
iget-object v0, p0, Lcom/twidroid/ui/a/ap;->g:Lcom/twidroid/ui/themes/r;
invoke-virtual {v0}, Lcom/twidroid/ui/themes/r;->s()I
move-result v0
invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V
:cond_d1
iget-object v0, v1, Lcom/twidroid/ui/a/ar;->a:Landroid/widget/TextView;
invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v0, v1, Lcom/twidroid/ui/a/ar;->b:Landroid/widget/Button;
invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V
goto :goto_84
.end method
.method public getViewTypeCount()I
.registers 2
const/4 v0, 0x2
return v0
.end method