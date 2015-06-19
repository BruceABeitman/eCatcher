.class public Lcom/instagram/android/feed/a/b/a;
.super Ljava/lang/Object;
.source "FeedMediaRowViewBinder.java"
.field private static final a:Ljava/lang/Class;
.field private final b:Landroid/content/Context;
.field private final c:Landroid/support/v4/app/an;
.field private final d:Landroid/support/v4/app/s;
.field private final e:Lcom/instagram/android/feed/a/b/f;
.field private final f:Lcom/instagram/feed/g/a;
.field private final g:Lcom/instagram/android/fragment/aa;
.field private final h:Lcom/instagram/android/feed/a/b/m;
.field private final i:Lcom/instagram/android/feed/a/b/x;
.field private final j:Z
.field private final k:Z
.field private l:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/android/feed/a/b/a;
sput-object v0, Lcom/instagram/android/feed/a/b/a;->a:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Lcom/instagram/android/fragment/a;Lcom/instagram/android/feed/a/b/f;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/instagram/android/fragment/a;->n()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;
invoke-virtual {p1}, Lcom/instagram/android/fragment/a;->y()Landroid/support/v4/app/an;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/feed/a/b/a;->c:Landroid/support/v4/app/an;
invoke-virtual {p1}, Lcom/instagram/android/fragment/a;->p()Landroid/support/v4/app/s;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/feed/a/b/a;->d:Landroid/support/v4/app/s;
iput-object p1, p0, Lcom/instagram/android/feed/a/b/a;->f:Lcom/instagram/feed/g/a;
iput-object p1, p0, Lcom/instagram/android/feed/a/b/a;->g:Lcom/instagram/android/fragment/aa;
iput-object p2, p0, Lcom/instagram/android/feed/a/b/a;->e:Lcom/instagram/android/feed/a/b/f;
new-instance v0, Lcom/instagram/android/feed/a/b/m;
iget-object v1, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;
iget-object v2, p0, Lcom/instagram/android/feed/a/b/a;->d:Landroid/support/v4/app/s;
iget-object v3, p0, Lcom/instagram/android/feed/a/b/a;->f:Lcom/instagram/feed/g/a;
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/feed/a/b/m;-><init>(Landroid/content/Context;Landroid/support/v4/app/s;Lcom/instagram/feed/g/a;)V
iput-object v0, p0, Lcom/instagram/android/feed/a/b/a;->h:Lcom/instagram/android/feed/a/b/m;
new-instance v0, Lcom/instagram/android/feed/a/b/x;
iget-object v1, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;
iget-object v2, p0, Lcom/instagram/android/feed/a/b/a;->e:Lcom/instagram/android/feed/a/b/f;
invoke-direct {v0, v1, v2}, Lcom/instagram/android/feed/a/b/x;-><init>(Landroid/content/Context;Lcom/instagram/android/feed/a/b/ab;)V
iput-object v0, p0, Lcom/instagram/android/feed/a/b/a;->i:Lcom/instagram/android/feed/a/b/x;
invoke-virtual {p1}, Lcom/instagram/android/fragment/a;->al()Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/android/feed/a/b/a;->j:Z
invoke-virtual {p1}, Lcom/instagram/android/fragment/a;->am()Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/android/feed/a/b/a;->k:Z
return-void
.end method
.method static synthetic a(Lcom/instagram/android/feed/a/b/a;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;
return-object v0
.end method
.method private static a(Landroid/view/View;)Lcom/instagram/android/feed/a/b/g;
.registers 3
new-instance v1, Lcom/instagram/android/feed/a/b/g;
invoke-direct {v1}, Lcom/instagram/android/feed/a/b/g;-><init>()V
sget v0, Lcom/facebook/av;->row_feed_textview_comments:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->c:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_feed_textview_explore_attribution:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->d:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_feed_textview_likes:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->e:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_feed_button_like:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->g:Landroid/widget/ImageView;
sget v0, Lcom/facebook/av;->row_feed_button_comment:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->h:Landroid/widget/ImageView;
sget v0, Lcom/facebook/av;->row_feed_button_options:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/ui/MediaOptionsButton;
iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->i:Lcom/instagram/android/feed/ui/MediaOptionsButton;
sget v0, Lcom/facebook/av;->row_feed_view_group_buttons:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->f:Landroid/view/View;
invoke-static {p0}, Lcom/instagram/android/feed/a/b/m;->a(Landroid/view/View;)Lcom/instagram/android/feed/a/b/r;
move-result-object v0
iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->a:Lcom/instagram/android/feed/a/b/r;
invoke-static {p0}, Lcom/instagram/android/feed/a/b/x;->a(Landroid/view/View;)Lcom/instagram/android/feed/a/b/ac;
move-result-object v0
iput-object v0, v1, Lcom/instagram/android/feed/a/b/g;->b:Lcom/instagram/android/feed/a/b/ac;
return-object v1
.end method
.method private a(Lcom/instagram/feed/d/l;)Z
.registers 4
iget-boolean v0, p0, Lcom/instagram/android/feed/a/b/a;->l:Z
if-nez v0, :cond_31
iget-boolean v0, p0, Lcom/instagram/android/feed/a/b/a;->k:Z
if-eqz v0, :cond_34
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_34
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;
move-result-object v0
sget-object v1, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;
if-ne v0, v1, :cond_34
const/4 v0, 0x1
:goto_2f
iput-boolean v0, p0, Lcom/instagram/android/feed/a/b/a;->l:Z
:cond_31
iget-boolean v0, p0, Lcom/instagram/android/feed/a/b/a;->l:Z
return v0
:cond_34
const/4 v0, 0x0
goto :goto_2f
.end method
.method static synthetic b(Lcom/instagram/android/feed/a/b/a;)Landroid/support/v4/app/an;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->c:Landroid/support/v4/app/an;
return-object v0
.end method
.method static synthetic c(Lcom/instagram/android/feed/a/b/a;)Lcom/instagram/android/fragment/aa;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->g:Lcom/instagram/android/fragment/aa;
return-object v0
.end method
.method static synthetic d(Lcom/instagram/android/feed/a/b/a;)Lcom/instagram/feed/g/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->f:Lcom/instagram/feed/g/a;
return-object v0
.end method
.method static synthetic e(Lcom/instagram/android/feed/a/b/a;)Landroid/support/v4/app/s;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->d:Landroid/support/v4/app/s;
return-object v0
.end method
.method static synthetic f(Lcom/instagram/android/feed/a/b/a;)Lcom/instagram/android/feed/a/b/f;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->e:Lcom/instagram/android/feed/a/b/f;
return-object v0
.end method
.method public final a()Landroid/view/View;
.registers 5
const-string v0, "%s#%s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
sget-object v3, Lcom/instagram/android/feed/a/b/a;->a:Ljava/lang/Class;
aput-object v3, v1, v2
const/4 v2, 0x1
const-string v3, "newView"
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/facebook/e/c/k;->a(Ljava/lang/String;[Ljava/lang/Object;)V
:try_start_12
iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->row_feed_photo:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/feed/a/b/a;->a(Landroid/view/View;)Lcom/instagram/android/feed/a/b/g;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
iget-object v2, v1, Lcom/instagram/android/feed/a/b/g;->b:Lcom/instagram/android/feed/a/b/ac;
iget-object v2, v2, Lcom/instagram/android/feed/a/b/ac;->a:Landroid/view/ViewGroup;
iget-object v1, v1, Lcom/instagram/android/feed/a/b/g;->b:Lcom/instagram/android/feed/a/b/ac;
invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V
:try_end_2f
.catchall {:try_start_12 .. :try_end_2f} :catchall_33
invoke-static {}, Lcom/facebook/e/c/k;->a()V
return-object v0
:catchall_33
move-exception v0
invoke-static {}, Lcom/facebook/e/c/k;->a()V
throw v0
.end method
.method public final a(Landroid/view/View;Lcom/instagram/feed/d/l;IZI)V
.registers 15
const/16 v8, 0x8
const/4 v7, 0x0
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
move-object v6, v0
check-cast v6, Lcom/instagram/android/feed/a/b/g;
iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->h:Lcom/instagram/android/feed/a/b/m;
iget-object v1, p0, Lcom/instagram/android/feed/a/b/a;->c:Landroid/support/v4/app/an;
iget-object v2, v6, Lcom/instagram/android/feed/a/b/g;->a:Lcom/instagram/android/feed/a/b/r;
invoke-direct {p0, p2}, Lcom/instagram/android/feed/a/b/a;->a(Lcom/instagram/feed/d/l;)Z
move-result v3
invoke-virtual {v0, v1, v2, p2, v3}, Lcom/instagram/android/feed/a/b/m;->a(Landroid/support/v4/app/an;Lcom/instagram/android/feed/a/b/r;Lcom/instagram/feed/d/l;Z)V
iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->i:Lcom/instagram/android/feed/a/b/x;
iget-object v1, v6, Lcom/instagram/android/feed/a/b/g;->b:Lcom/instagram/android/feed/a/b/ac;
move-object v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/feed/a/b/x;->a(Lcom/instagram/android/feed/a/b/ac;Lcom/instagram/feed/d/l;IZI)V
invoke-virtual {p2}, Lcom/instagram/feed/d/l;->d()I
move-result v0
if-lez v0, :cond_140
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->e:Landroid/widget/TextView;
invoke-static {}, Lcom/instagram/feed/d/t;->a()Lcom/instagram/feed/d/t;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v1, v2, p2}, Lcom/instagram/feed/d/t;->a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->e:Landroid/widget/TextView;
new-instance v1, Landroid/text/method/LinkMovementMethod;
invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->e:Landroid/widget/TextView;
invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V
:goto_4a
iget-boolean v0, p0, Lcom/instagram/android/feed/a/b/a;->j:Z
if-eqz v0, :cond_147
invoke-virtual {p2}, Lcom/instagram/feed/d/l;->u()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_147
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->d:Landroid/widget/TextView;
invoke-static {}, Lcom/instagram/feed/d/t;->a()Lcom/instagram/feed/d/t;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v1, v2, p2}, Lcom/instagram/feed/d/t;->b(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->d:Landroid/widget/TextView;
new-instance v1, Landroid/text/method/LinkMovementMethod;
invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->d:Landroid/widget/TextView;
invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V
:goto_7a
invoke-virtual {p2}, Lcom/instagram/feed/d/l;->r()Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-lez v0, :cond_14e
iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;
invoke-static {v0}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;)I
move-result v0
iget-object v1, v6, Lcom/instagram/android/feed/a/b/g;->c:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I
move-result v1
iget-object v2, v6, Lcom/instagram/android/feed/a/b/g;->c:Landroid/widget/TextView;
invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I
move-result v2
add-int/2addr v1, v2
sub-int/2addr v0, v1
iget-object v1, v6, Lcom/instagram/android/feed/a/b/g;->c:Landroid/widget/TextView;
invoke-static {}, Lcom/instagram/feed/d/t;->a()Lcom/instagram/feed/d/t;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
iget-object v4, v6, Lcom/instagram/android/feed/a/b/g;->c:Landroid/widget/TextView;
invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;
move-result-object v4
invoke-virtual {v2, v3, p2, v4, v0}, Lcom/instagram/feed/d/t;->a(Landroid/content/res/Resources;Lcom/instagram/feed/d/l;Landroid/text/TextPaint;I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->c:Landroid/widget/TextView;
new-instance v1, Landroid/text/method/LinkMovementMethod;
invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->c:Landroid/widget/TextView;
invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V
:goto_c0
iget-object v1, v6, Lcom/instagram/android/feed/a/b/g;->g:Landroid/widget/ImageView;
invoke-virtual {p2}, Lcom/instagram/feed/d/l;->q()Z
move-result v0
if-eqz v0, :cond_155
sget v0, Lcom/facebook/au;->feed_button_like_background_liked:I
:goto_ca
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->g:Landroid/widget/ImageView;
new-instance v1, Lcom/instagram/android/feed/a/b/b;
invoke-direct {v1, p0, p2, p3}, Lcom/instagram/android/feed/a/b/b;-><init>(Lcom/instagram/android/feed/a/b/a;Lcom/instagram/feed/d/l;I)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->h:Landroid/widget/ImageView;
new-instance v1, Lcom/instagram/android/feed/a/b/c;
invoke-direct {v1, p0, p2, p3}, Lcom/instagram/android/feed/a/b/c;-><init>(Lcom/instagram/android/feed/a/b/a;Lcom/instagram/feed/d/l;I)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->i:Lcom/instagram/android/feed/ui/MediaOptionsButton;
new-instance v1, Lcom/instagram/android/feed/a/b/d;
invoke-direct {v1, p0, p2, p1, p3}, Lcom/instagram/android/feed/a/b/d;-><init>(Lcom/instagram/android/feed/a/b/a;Lcom/instagram/feed/d/l;Landroid/view/View;I)V
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/ui/MediaOptionsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->i:Lcom/instagram/android/feed/ui/MediaOptionsButton;
iget-object v1, v6, Lcom/instagram/android/feed/a/b/g;->b:Lcom/instagram/android/feed/a/b/ac;
iget-object v1, v1, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;
invoke-virtual {v1}, Lcom/instagram/feed/widget/a;->a()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/ui/MediaOptionsButton;->setEnabled(Z)V
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->i:Lcom/instagram/android/feed/ui/MediaOptionsButton;
iget-object v1, v6, Lcom/instagram/android/feed/a/b/g;->b:Lcom/instagram/android/feed/a/b/ac;
iget-object v1, v1, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;
invoke-virtual {v1}, Lcom/instagram/feed/widget/a;->a()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/ui/MediaOptionsButton;->setClickable(Z)V
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->c:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I
move-result v0
if-ne v0, v8, :cond_159
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->e:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I
move-result v0
if-ne v0, v8, :cond_159
const/4 v0, 0x1
move v1, v0
:goto_117
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
if-eqz v1, :cond_131
iget-object v1, p0, Lcom/instagram/android/feed/a/b/a;->b:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
const/4 v2, 0x4
invoke-static {v1, v2}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F
move-result v1
float-to-int v7, v1
:cond_131
iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->b:Lcom/instagram/android/feed/a/b/ac;
iget-object v0, v0, Lcom/instagram/android/feed/a/b/ac;->b:Lcom/instagram/feed/widget/a;
new-instance v1, Lcom/instagram/android/feed/a/b/e;
invoke-direct {v1, p0, v6}, Lcom/instagram/android/feed/a/b/e;-><init>(Lcom/instagram/android/feed/a/b/a;Lcom/instagram/android/feed/a/b/g;)V
invoke-virtual {v0, v1}, Lcom/instagram/feed/widget/a;->a(Lcom/instagram/feed/widget/e;)V
return-void
:cond_140
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->e:Landroid/widget/TextView;
invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_4a
:cond_147
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->d:Landroid/widget/TextView;
invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_7a
:cond_14e
iget-object v0, v6, Lcom/instagram/android/feed/a/b/g;->c:Landroid/widget/TextView;
invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_c0
:cond_155
sget v0, Lcom/facebook/au;->feed_button_like_background:I
goto/16 :goto_ca
:cond_159
move v1, v7
goto :goto_117
.end method
.method public final a(Lcom/instagram/android/feed/a/b/r;Lcom/instagram/feed/d/l;)V
.registers 6
iget-object v0, p0, Lcom/instagram/android/feed/a/b/a;->h:Lcom/instagram/android/feed/a/b/m;
iget-object v1, p0, Lcom/instagram/android/feed/a/b/a;->c:Landroid/support/v4/app/an;
invoke-direct {p0, p2}, Lcom/instagram/android/feed/a/b/a;->a(Lcom/instagram/feed/d/l;)Z
move-result v2
invoke-virtual {v0, v1, p1, p2, v2}, Lcom/instagram/android/feed/a/b/m;->a(Landroid/support/v4/app/an;Lcom/instagram/android/feed/a/b/r;Lcom/instagram/feed/d/l;Z)V
return-void
.end method