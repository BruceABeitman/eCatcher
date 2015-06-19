.class public Lcom/twidroid/fragments/f;
.super Lcom/twidroid/fragments/base/a;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.field private static final X:I = 0xc8
.field private static final Y:I = 0xce
.field private static final Z:I = 0xcf
.field static final a:Ljava/lang/String; = "SingleTweetFragment"
.field public static final d:Ljava/lang/String; = "EXTRA_USER"
.field private G:Landroid/widget/TextView;
.field private H:Landroid/widget/TextView;
.field private I:Landroid/widget/TextView;
.field private J:Landroid/widget/TextView;
.field private K:Landroid/widget/ImageView;
.field private L:Landroid/widget/RelativeLayout;
.field private M:Landroid/widget/LinearLayout;
.field private N:Landroid/widget/RelativeLayout;
.field private O:Ljava/util/ArrayList;
.field private P:Landroid/widget/FrameLayout;
.field private Q:Landroid/os/Handler;
.field private R:Lcom/twidroid/model/twitter/Tweet;
.field private S:Lcom/twidroid/model/twitter/User;
.field private T:Z
.field private U:I
.field private V:Lcom/twidroid/d/n;
.field private W:Lcom/twidroid/e/b;
.field private aa:Lcom/twidroid/fragments/m;
.field private ab:Lcom/twidroid/fragments/j;
.field private ac:Lcom/twidroid/fragments/k;
.field private ad:I
.field private ae:Z
.field protected b:Landroid/widget/ProgressBar;
.field  c:Z
.field public e:Z
.field private f:Landroid/view/View;
.field private g:Landroid/webkit/WebView;
.field private h:Landroid/widget/RelativeLayout;
.field private i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
.field private j:Landroid/view/View;
.field private k:Landroid/widget/Button;
.field private l:Landroid/view/View;
.field private m:Landroid/widget/TextView;
.field private n:Landroid/widget/TextView;
.field private o:Landroid/widget/TextView;
.field private p:Landroid/widget/TextView;
.field private q:Landroid/widget/TextView;
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Lcom/twidroid/fragments/base/a;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/twidroid/fragments/f;->Q:Landroid/os/Handler;
iput-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iput-boolean v1, p0, Lcom/twidroid/fragments/f;->c:Z
iput-boolean v1, p0, Lcom/twidroid/fragments/f;->T:Z
iput v1, p0, Lcom/twidroid/fragments/f;->U:I
iput-object v2, p0, Lcom/twidroid/fragments/f;->V:Lcom/twidroid/d/n;
invoke-static {}, Lcom/twidroid/e/b;->a()Lcom/twidroid/e/b;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/f;->W:Lcom/twidroid/e/b;
iput-boolean v1, p0, Lcom/twidroid/fragments/f;->e:Z
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/f;->setHasOptionsMenu(Z)V
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/f;->setRetainInstance(Z)V
return-void
.end method
.method static synthetic A(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method private A()V
.registers 5
const/16 v1, 0x8
const/4 v2, 0x0
const-string v0, "SingleTweetFragment"
const-string v3, "Filling basic user info"
invoke-static {v0, v3}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-nez v0, :cond_f
:cond_e
:goto_e
return-void
:cond_f
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v3, 0x7f0901bc
invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v3, v3, Lcom/twidroid/model/twitter/Tweet;->z:Ljava/lang/String;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v3, 0x7f090139
invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-boolean v0, v0, Lcom/twidroid/model/twitter/Tweet;->au:Z
if-eqz v0, :cond_79
move v0, v1
:goto_31
invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v3, 0x7f09013a
invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v3, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-boolean v3, v3, Lcom/twidroid/model/twitter/Tweet;->aA:Z
if-eqz v3, :cond_7b
:goto_43
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v1, 0x7f09008e
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "@"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v2, v2, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->d()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-direct {p0, v0}, Lcom/twidroid/fragments/f;->f(Lcom/twidroid/model/twitter/Tweet;)V
goto :goto_e
:cond_79
move v0, v2
goto :goto_31
:cond_7b
move v2, v1
goto :goto_43
.end method
.method static synthetic B(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method private B()V
.registers 6
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
instance-of v0, v0, Lcom/twidroid/SingleTweetActivity;
if-eqz v0, :cond_e5
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
iget-object v3, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->s()I
move-result v3
invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V
:goto_15
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v3, 0x7f0901bc
invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->E()I
move-result v3
invoke-direct {p0, v0, v3, v2}, Lcom/twidroid/fragments/f;->a(Landroid/widget/TextView;II)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v3, 0x7f09008e
invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->E()I
move-result v3
invoke-direct {p0, v0, v3, v1}, Lcom/twidroid/fragments/f;->a(Landroid/widget/TextView;II)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v3, 0x7f09013d
invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->o()I
move-result v3
invoke-direct {p0, v0, v3, v1}, Lcom/twidroid/fragments/f;->a(Landroid/widget/TextView;II)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v3, 0x7f090141
invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->o()I
move-result v3
invoke-direct {p0, v0, v3, v1}, Lcom/twidroid/fragments/f;->a(Landroid/widget/TextView;II)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->G:Landroid/widget/TextView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->E()I
move-result v3
invoke-direct {p0, v0, v3, v2}, Lcom/twidroid/fragments/f;->a(Landroid/widget/TextView;II)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->H:Landroid/widget/TextView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->E()I
move-result v3
invoke-direct {p0, v0, v3, v2}, Lcom/twidroid/fragments/f;->a(Landroid/widget/TextView;II)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->I:Landroid/widget/TextView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->E()I
move-result v3
invoke-direct {p0, v0, v3, v2}, Lcom/twidroid/fragments/f;->a(Landroid/widget/TextView;II)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->aB()Z
move-result v0
if-eqz v0, :cond_f0
const/4 v0, 0x2
:goto_8f
iget-object v3, p0, Lcom/twidroid/fragments/f;->w:Lcom/twidroid/d/v;
invoke-virtual {v3}, Lcom/twidroid/d/v;->aC()Z
move-result v3
if-eqz v3, :cond_98
move v1, v2
:cond_98
add-int/2addr v1, v0
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v3, 0x7f0901be
invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->D()I
move-result v3
iget-object v4, p0, Lcom/twidroid/fragments/f;->w:Lcom/twidroid/d/v;
invoke-virtual {v4}, Lcom/twidroid/d/v;->aA()I
move-result v4
invoke-direct {p0, v0, v3, v1, v4}, Lcom/twidroid/fragments/f;->a(Landroid/widget/TextView;III)V
iget-object v1, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->p()I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getListView()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->s()I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V
iget-object v1, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->s()I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V
new-instance v1, Lcom/twidroid/ui/b/f;
iget-object v3, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
iget-object v3, v3, Lcom/twidroid/ui/themes/r;->T:[I
invoke-direct {v1, v3}, Lcom/twidroid/ui/b/f;-><init>([I)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V
return-void
:cond_e5
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
iget-object v3, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
iget v3, v3, Lcom/twidroid/ui/themes/r;->ar:I
invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V
goto/16 :goto_15
:cond_f0
move v0, v1
goto :goto_8f
.end method
.method static synthetic C(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method private C()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-boolean v0, v0, Lcom/twidroid/model/twitter/Tweet;->aj:Z
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/twidroid/fragments/f;->o:Landroid/widget/TextView;
const v1, 0x7f0c00ff
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->o:Landroid/widget/TextView;
const v1, 0x7f0201cf
invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
:cond_1b
:goto_1b
return-void
:cond_1c
iget-object v0, p0, Lcom/twidroid/fragments/f;->o:Landroid/widget/TextView;
const v1, 0x7f0c00e1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->o:Landroid/widget/TextView;
const v1, 0x7f0201d0
invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
goto :goto_1b
.end method
.method private D()V
.registers 4
const/16 v2, 0x8
iget-object v0, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v1, 0x7f090192
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
invoke-virtual {v0, v2}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->h:Landroid/widget/RelativeLayout;
invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->P:Landroid/widget/FrameLayout;
invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V
return-void
.end method
.method private E()V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/f;->M:Landroid/widget/LinearLayout;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
return-void
.end method
.method private H()V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/f;->M:Landroid/widget/LinearLayout;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/f;)Lcom/twidroid/model/twitter/Tweet;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/fragments/f;Lcom/twidroid/model/twitter/User;)Lcom/twidroid/model/twitter/User;
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/f;->S:Lcom/twidroid/model/twitter/User;
return-object p1
.end method
.method private a(Lcom/twidroid/ui/StringUrlSpan;)Ljava/lang/String;
.registers 8
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/twidroid/ui/StringUrlSpan;->b()[Landroid/text/style/URLSpan;
move-result-object v3
array-length v4, v3
const/4 v0, 0x0
move v2, v0
:goto_8
if-ge v2, v4, :cond_45
aget-object v0, v3, v2
instance-of v5, v0, Lcom/ubermedia/ui/StringSpanInfo;
if-eqz v5, :cond_41
check-cast v0, Lcom/ubermedia/ui/StringSpanInfo;
iget-object v0, v0, Lcom/ubermedia/ui/StringSpanInfo;->b:Ljava/lang/String;
:goto_14
if-nez v0, :cond_40
sget-object v1, Lcom/ubermedia/ui/b;->o:Ljava/util/regex/Pattern;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Lcom/twidroid/ui/StringUrlSpan;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
move-result v2
if-eqz v2, :cond_40
invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v0
:cond_40
return-object v0
:cond_41
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_8
:cond_45
move-object v0, v1
goto :goto_14
.end method
.method private a(Landroid/view/View;)V
.registers 6
const/4 v3, 0x0
if-eqz p1, :cond_31
iget-object v0, p0, Lcom/twidroid/fragments/f;->O:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_47
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
move-object v1, p1
check-cast v1, Landroid/widget/TextView;
invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2d
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f080024
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V
goto :goto_9
:cond_2d
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V
goto :goto_9
:cond_31
iget-object v0, p0, Lcom/twidroid/fragments/f;->O:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_37
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_47
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V
goto :goto_37
:cond_47
return-void
.end method
.method private a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.registers 7
const/16 v1, 0x8
const/4 v0, 0x0
invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method private a(Landroid/widget/TextView;II)V
.registers 5
invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V
const/4 v0, 0x0
invoke-virtual {p1, v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
return-void
.end method
.method private a(Landroid/widget/TextView;III)V
.registers 6
int-to-float v0, p4
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V
invoke-direct {p0, p1, p2, p3}, Lcom/twidroid/fragments/f;->a(Landroid/widget/TextView;II)V
return-void
.end method
.method private a(Landroid/widget/TextView;Ljava/lang/String;)V
.registers 6
const/4 v1, 0x0
if-eqz p1, :cond_22
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_b
const-string p2, ""
:cond_b
invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
if-eqz v2, :cond_23
const/16 v0, 0x8
:goto_12
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V
if-nez v2, :cond_18
const/4 v1, 0x1
:cond_18
invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V
if-eqz v2, :cond_22
iget-object v0, p0, Lcom/twidroid/fragments/f;->O:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_22
return-void
:cond_23
move v0, v1
goto :goto_12
.end method
.method static synthetic a(Lcom/twidroid/fragments/f;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/fragments/f;->d(I)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/f;Landroid/view/View;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/fragments/f;->a(Landroid/view/View;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/f;Lcom/ubermedia/ui/StringSpanInfo;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/fragments/f;->a(Lcom/ubermedia/ui/StringSpanInfo;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/f;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/fragments/f;->d(Ljava/lang/String;)V
return-void
.end method
.method private a(Lcom/ubermedia/a/a;)V
.registers 4
if-eqz p1, :cond_e
invoke-virtual {p1}, Lcom/ubermedia/a/a;->g()Lcom/ubermedia/a/e;
move-result-object v0
sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;
if-eq v0, v1, :cond_e
const/4 v0, 0x1
invoke-virtual {p1, v0}, Lcom/ubermedia/a/a;->b(Z)Z
:cond_e
return-void
.end method
.method private a(Lcom/ubermedia/ui/StringSpanInfo;)V
.registers 9
const/4 v0, 0x0
const/4 v1, 0x0
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-nez v2, :cond_7
:goto_6
return-void
:cond_7
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;
move-result-object v2
invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;
move-result-object v2
invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v2
invoke-virtual {v2}, Landroid/view/Display;->getWidth()I
move-result v3
if-eqz p1, :cond_37
invoke-virtual {p1}, Lcom/ubermedia/ui/StringSpanInfo;->getURL()Ljava/lang/String;
move-result-object v0
invoke-static {v0, v3}, Lcom/twidroid/d/m;->a(Ljava/lang/String;I)Lcom/twidroid/d/n;
move-result-object v0
sget-object v1, Lcom/twidroid/d/m;->z:Lcom/twidroid/d/n;
if-eq v0, v1, :cond_31
invoke-virtual {p1}, Lcom/ubermedia/ui/StringSpanInfo;->getURL()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/fragments/f;->c(Ljava/lang/String;)V
goto :goto_6
:cond_31
iget-object v0, p1, Lcom/ubermedia/ui/StringSpanInfo;->b:Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/twidroid/fragments/f;->c(Ljava/lang/String;)V
goto :goto_6
:cond_37
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/Tweet;->o()Lcom/twidroid/ui/StringUrlSpan;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/ui/StringUrlSpan;->b()[Landroid/text/style/URLSpan;
move-result-object v4
if-eqz v4, :cond_7c
invoke-virtual {v2}, Lcom/twidroid/ui/StringUrlSpan;->b()[Landroid/text/style/URLSpan;
move-result-object v4
array-length v4, v4
if-lez v4, :cond_7c
invoke-virtual {v2}, Lcom/twidroid/ui/StringUrlSpan;->b()[Landroid/text/style/URLSpan;
move-result-object v4
array-length v5, v4
move v2, v1
:goto_50
if-ge v2, v5, :cond_6f
aget-object v1, v4, v2
instance-of v6, v1, Lcom/ubermedia/ui/StringSpanInfo;
if-eqz v6, :cond_78
move-object v0, v1
check-cast v0, Lcom/ubermedia/ui/StringSpanInfo;
invoke-virtual {v0}, Lcom/ubermedia/ui/StringSpanInfo;->getURL()Ljava/lang/String;
move-result-object v0
invoke-static {v0, v3}, Lcom/twidroid/d/m;->a(Ljava/lang/String;I)Lcom/twidroid/d/n;
move-result-object v0
sget-object v2, Lcom/twidroid/d/m;->z:Lcom/twidroid/d/n;
if-eq v0, v2, :cond_73
iput-object v0, p0, Lcom/twidroid/fragments/f;->V:Lcom/twidroid/d/n;
check-cast v1, Lcom/ubermedia/ui/StringSpanInfo;
invoke-virtual {v1}, Lcom/ubermedia/ui/StringSpanInfo;->getURL()Ljava/lang/String;
move-result-object v0
:goto_6f
:cond_6f
invoke-direct {p0, v0}, Lcom/twidroid/fragments/f;->c(Ljava/lang/String;)V
goto :goto_6
:cond_73
check-cast v1, Lcom/ubermedia/ui/StringSpanInfo;
iget-object v0, v1, Lcom/ubermedia/ui/StringSpanInfo;->b:Ljava/lang/String;
goto :goto_6f
:cond_78
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_50
:cond_7c
sget-object v2, Lcom/ubermedia/ui/b;->p:Ljava/util/regex/Pattern;
iget-object v4, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v4}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v2
invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z
move-result v4
if-eqz v4, :cond_e2
invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v4
invoke-static {v4, v3}, Lcom/twidroid/d/m;->a(Ljava/lang/String;I)Lcom/twidroid/d/n;
move-result-object v3
sget-object v4, Lcom/twidroid/d/m;->z:Lcom/twidroid/d/n;
if-eq v3, v4, :cond_c8
invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/twidroid/d/m;->c(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_c8
iput-object v3, p0, Lcom/twidroid/fragments/f;->V:Lcom/twidroid/d/n;
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->f()V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->N()V
invoke-virtual {v3}, Lcom/twidroid/d/n;->b()Ljava/lang/String;
move-result-object v2
new-instance v4, Lcom/twidroid/fragments/f$4;
invoke-direct {v4, p0, v3}, Lcom/twidroid/fragments/f$4;-><init>(Lcom/twidroid/fragments/f;Lcom/twidroid/d/n;)V
invoke-static {v2, v0, v4}, Lcom/twidroid/net/k;->a(Ljava/lang/String;Lcom/twidroid/net/j;Lcom/twidroid/net/l;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget-object v2, p0, Lcom/twidroid/fragments/f;->h:Landroid/widget/RelativeLayout;
iget-object v3, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
iget-object v4, p0, Lcom/twidroid/fragments/f;->P:Landroid/widget/FrameLayout;
invoke-direct {p0, v0, v2, v3, v4}, Lcom/twidroid/fragments/f;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/f;->a(Z)V
goto/16 :goto_6
:cond_c8
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->M()V
invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/fragments/f;->b(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
iget-object v2, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->h:Landroid/widget/RelativeLayout;
iget-object v4, p0, Lcom/twidroid/fragments/f;->P:Landroid/widget/FrameLayout;
invoke-direct {p0, v0, v2, v3, v4}, Lcom/twidroid/fragments/f;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/f;->a(Z)V
goto/16 :goto_6
:cond_e2
invoke-direct {p0}, Lcom/twidroid/fragments/f;->E()V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->M()V
goto/16 :goto_6
.end method
.method static synthetic a(Lcom/twidroid/fragments/f;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/f;->T:Z
return p1
.end method
.method static synthetic b(Lcom/twidroid/fragments/f;I)I
.registers 2
iput p1, p0, Lcom/twidroid/fragments/f;->U:I
return p1
.end method
.method static synthetic b(Lcom/twidroid/fragments/f;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/fragments/f;->C()V
return-void
.end method
.method private b(Ljava/lang/String;)V
.registers 7
const/4 v4, 0x1
iget-object v0, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V
invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V
invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V
invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V
sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;
invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
iget-object v1, p0, Lcom/twidroid/fragments/f;->h:Landroid/widget/RelativeLayout;
iget-object v2, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->P:Landroid/widget/FrameLayout;
invoke-direct {p0, v0, v1, v2, v3}, Lcom/twidroid/fragments/f;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->e()V
iget-object v0, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
new-instance v1, Lcom/twidroid/fragments/f$2;
invoke-direct {v1, p0}, Lcom/twidroid/fragments/f$2;-><init>(Lcom/twidroid/fragments/f;)V
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
new-instance v1, Lcom/twidroid/fragments/f$3;
invoke-direct {v1, p0}, Lcom/twidroid/fragments/f$3;-><init>(Lcom/twidroid/fragments/f;)V
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/f;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
const/high16 v1, 0x200
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V
return-void
.end method
.method static synthetic c(Lcom/twidroid/fragments/f;)Lcom/twidroid/net/c/a/f;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->u:Lcom/twidroid/net/c/a/f;
return-object v0
.end method
.method private c(Ljava/lang/String;)V
.registers 8
const/4 v5, 0x0
if-nez p1, :cond_a
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->M()V
invoke-direct {p0}, Lcom/twidroid/fragments/f;->E()V
:goto_9
return-void
:cond_a
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;
move-result-object v0
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Display;->getWidth()I
move-result v0
const-string v1, "SingleTweetFragment"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Redirecting to "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1, v0}, Lcom/twidroid/d/m;->a(Ljava/lang/String;I)Lcom/twidroid/d/n;
move-result-object v0
sget-object v1, Lcom/twidroid/d/m;->z:Lcom/twidroid/d/n;
if-eq v0, v1, :cond_a9
invoke-static {p1}, Lcom/twidroid/d/m;->b(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_7c
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->f()V
iget-object v1, p0, Lcom/twidroid/fragments/f;->P:Landroid/widget/FrameLayout;
iget-object v2, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->h:Landroid/widget/RelativeLayout;
iget-object v4, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
invoke-direct {p0, v1, v2, v3, v4}, Lcom/twidroid/fragments/f;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->M()V
invoke-static {}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->newInstance()Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;
move-result-object v1
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v2
const v3, 0x7f090193
invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I
const-string v2, "AIzaSyA7bdZQxsXBEl25nWIJXFEAwxknyLHeRP0"
new-instance v3, Lcom/twidroid/fragments/f$5;
invoke-direct {v3, p0, v0, p1}, Lcom/twidroid/fragments/f$5;-><init>(Lcom/twidroid/fragments/f;Lcom/twidroid/d/n;Ljava/lang/String;)V
invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V
invoke-virtual {p0, v5}, Lcom/twidroid/fragments/f;->a(Z)V
goto :goto_9
:cond_7c
invoke-static {p1}, Lcom/twidroid/d/m;->c(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_86
invoke-direct {p0, p1}, Lcom/twidroid/fragments/f;->d(Ljava/lang/String;)V
goto :goto_9
:cond_86
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->f()V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->N()V
invoke-virtual {v0}, Lcom/twidroid/d/n;->b()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
new-instance v3, Lcom/twidroid/fragments/f$6;
invoke-direct {v3, p0, v0, p1}, Lcom/twidroid/fragments/f$6;-><init>(Lcom/twidroid/fragments/f;Lcom/twidroid/d/n;Ljava/lang/String;)V
invoke-static {v1, v2, v3}, Lcom/twidroid/net/k;->a(Ljava/lang/String;Lcom/twidroid/net/j;Lcom/twidroid/net/l;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget-object v1, p0, Lcom/twidroid/fragments/f;->h:Landroid/widget/RelativeLayout;
iget-object v2, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->P:Landroid/widget/FrameLayout;
invoke-direct {p0, v0, v1, v2, v3}, Lcom/twidroid/fragments/f;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
invoke-virtual {p0, v5}, Lcom/twidroid/fragments/f;->a(Z)V
goto/16 :goto_9
:cond_a9
invoke-direct {p0, p1}, Lcom/twidroid/fragments/f;->d(Ljava/lang/String;)V
goto/16 :goto_9
.end method
.method static synthetic d(Lcom/twidroid/fragments/f;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
return-object v0
.end method
.method private d(I)V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/f;->b:Landroid/widget/ProgressBar;
invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
return-void
.end method
.method private d(Ljava/lang/String;)V
.registers 6
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->M()V
invoke-direct {p0, p1}, Lcom/twidroid/fragments/f;->b(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
iget-object v1, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget-object v2, p0, Lcom/twidroid/fragments/f;->h:Landroid/widget/RelativeLayout;
iget-object v3, p0, Lcom/twidroid/fragments/f;->P:Landroid/widget/FrameLayout;
invoke-direct {p0, v0, v1, v2, v3}, Lcom/twidroid/fragments/f;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/f;->a(Z)V
return-void
.end method
.method static synthetic d(Lcom/twidroid/model/twitter/Tweet;)Z
.registers 2
invoke-static {p0}, Lcom/twidroid/fragments/f;->g(Lcom/twidroid/model/twitter/Tweet;)Z
move-result v0
return v0
.end method
.method static synthetic e(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic e(Lcom/twidroid/model/twitter/Tweet;)V
.registers 1
invoke-static {p0}, Lcom/twidroid/fragments/f;->h(Lcom/twidroid/model/twitter/Tweet;)V
return-void
.end method
.method static synthetic f(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method private f(Lcom/twidroid/model/twitter/Tweet;)V
.registers 13
const/16 v4, 0x48
const/4 v5, 0x0
const/4 v0, 0x0
const/4 v6, 0x1
iget-object v1, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f090040
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/twidroid/fragments/f;->K:Landroid/widget/ImageView;
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->u()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->u()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_97
invoke-virtual {v1}, Ljava/io/File;->length()J
move-result-wide v7
const-wide/16 v9, 0x0
cmp-long v3, v7, v9
if-lez v3, :cond_97
:try_start_59
iget-object v0, p0, Lcom/twidroid/fragments/f;->K:Landroid/widget/ImageView;
const/4 v3, 0x0
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->K:Landroid/widget/ImageView;
invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->K:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->K:Landroid/widget/ImageView;
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v1}, Ljava/io/File;->lastModified()J
move-result-wide v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
const-wide/32 v5, 0x9ba3c0
sub-long/2addr v3, v5
cmp-long v0, v0, v3
if-gez v0, :cond_91
const/4 v0, 0x0
iget-object v1, p0, Lcom/twidroid/fragments/f;->K:Landroid/widget/ImageView;
invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->d()Ljava/lang/String;
move-result-object v3
const/16 v4, 0x48
const/4 v5, 0x0
const/4 v6, 0x1
const/4 v7, 0x1
invoke-static/range {v0 .. v7}, Lcom/twidroid/ui/a;->a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZZ)Z
:try_end_91
.catch Ljava/lang/Exception; {:try_start_59 .. :try_end_91} :catch_92
:cond_91
:goto_91
return-void
:catch_92
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_91
:cond_97
iget-object v1, p0, Lcom/twidroid/fragments/f;->K:Landroid/widget/ImageView;
invoke-virtual {p1}, Lcom/twidroid/model/twitter/Tweet;->d()Ljava/lang/String;
move-result-object v3
move v7, v6
invoke-static/range {v0 .. v7}, Lcom/twidroid/ui/a;->a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZZ)Z
move-result v1
if-nez v1, :cond_91
iget-object v1, p0, Lcom/twidroid/fragments/f;->K:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_91
.end method
.method static synthetic g(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method private static g(Lcom/twidroid/model/twitter/Tweet;)Z
.registers 4
const/4 v0, 0x1
if-eqz p0, :cond_24
:try_start_3
sget-object v1, Lcom/twidroid/net/c/r;->a:Ljava/util/regex/Pattern;
invoke-virtual {p0}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
move-result v1
if-eqz v1, :cond_14
:cond_13
:goto_13
return v0
:cond_14
sget-object v1, Lcom/twidroid/net/c/m;->a:Ljava/util/regex/Pattern;
invoke-virtual {p0}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
:try_end_21
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_26
move-result v1
if-nez v1, :cond_13
:goto_24
:cond_24
const/4 v0, 0x0
goto :goto_13
:catch_26
move-exception v0
invoke-static {v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V
goto :goto_24
.end method
.method static synthetic h(Lcom/twidroid/fragments/f;)Lcom/twidroid/ui/themes/r;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
return-object v0
.end method
.method private static h(Lcom/twidroid/model/twitter/Tweet;)V
.registers 3
if-eqz p0, :cond_42
:try_start_2
sget-object v0, Lcom/twidroid/net/c/r;->a:Ljava/util/regex/Pattern;
invoke-virtual {p0}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v0
if-eqz v0, :cond_22
new-instance v0, Lcom/twidroid/net/c/r;
invoke-direct {v0}, Lcom/twidroid/net/c/r;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/model/twitter/Tweet;->o()Lcom/twidroid/ui/StringUrlSpan;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/c/r;->a(Lcom/twidroid/ui/StringUrlSpan;)Lcom/twidroid/ui/StringUrlSpan;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/model/twitter/Tweet;->a(Lcom/twidroid/ui/StringUrlSpan;)V
:cond_22
sget-object v0, Lcom/twidroid/net/c/m;->a:Ljava/util/regex/Pattern;
invoke-virtual {p0}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v0
if-eqz v0, :cond_42
new-instance v0, Lcom/twidroid/net/c/m;
invoke-direct {v0}, Lcom/twidroid/net/c/m;-><init>()V
invoke-virtual {p0}, Lcom/twidroid/model/twitter/Tweet;->o()Lcom/twidroid/ui/StringUrlSpan;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/c/m;->a(Lcom/twidroid/ui/StringUrlSpan;)Lcom/twidroid/ui/StringUrlSpan;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/model/twitter/Tweet;->a(Lcom/twidroid/ui/StringUrlSpan;)V
:try_end_42
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_42} :catch_43
:goto_42
:cond_42
return-void
:catch_43
move-exception v0
invoke-static {v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V
goto :goto_42
.end method
.method static synthetic i(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic j(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic k(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic l(Lcom/twidroid/fragments/f;)Lcom/twidroid/ui/themes/r;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
return-object v0
.end method
.method static synthetic m(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic n(Lcom/twidroid/fragments/f;)Lcom/twidroid/ui/themes/r;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
return-object v0
.end method
.method static synthetic o(Lcom/twidroid/fragments/f;)Lcom/twidroid/ui/themes/r;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
return-object v0
.end method
.method static synthetic p(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic q(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic r(Lcom/twidroid/fragments/f;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/fragments/f;->A()V
return-void
.end method
.method static synthetic s(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic t(Lcom/twidroid/fragments/f;)I
.registers 3
iget v0, p0, Lcom/twidroid/fragments/f;->ad:I
add-int/lit8 v1, v0, 0x1
iput v1, p0, Lcom/twidroid/fragments/f;->ad:I
return v0
.end method
.method private t()V
.registers 5
iget-object v0, p0, Lcom/twidroid/fragments/f;->aa:Lcom/twidroid/fragments/m;
sget-object v1, Lcom/twidroid/fragments/m;->b:Lcom/twidroid/fragments/m;
if-ne v0, v1, :cond_12
iget-object v0, p0, Lcom/twidroid/fragments/f;->h:Landroid/widget/RelativeLayout;
iget-object v1, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget-object v2, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->P:Landroid/widget/FrameLayout;
invoke-direct {p0, v0, v1, v2, v3}, Lcom/twidroid/fragments/f;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
:goto_11
:cond_11
return-void
:cond_12
iget-object v0, p0, Lcom/twidroid/fragments/f;->aa:Lcom/twidroid/fragments/m;
sget-object v1, Lcom/twidroid/fragments/m;->a:Lcom/twidroid/fragments/m;
if-ne v0, v1, :cond_11
iget-object v0, p0, Lcom/twidroid/fragments/f;->h:Landroid/widget/RelativeLayout;
iget-object v1, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget-object v2, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->P:Landroid/widget/FrameLayout;
invoke-direct {p0, v0, v1, v2, v3}, Lcom/twidroid/fragments/f;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
goto :goto_11
.end method
.method static synthetic u(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method private u()V
.registers 6
:try_start_0
const-class v0, Landroid/webkit/WebSettings;
const-string v1, "setDomStorageEnabled"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v1
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
const/4 v4, 0x1
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_24
:try_end_24
.catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_24} :catch_2d
.catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_24} :catch_2b
.catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_24} :catch_29
.catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_24} :catch_27
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_24} :catch_25
return-void
:catch_25
move-exception v0
goto :goto_24
:catch_27
move-exception v0
goto :goto_24
:catch_29
move-exception v0
goto :goto_24
:catch_2b
move-exception v0
goto :goto_24
:catch_2d
move-exception v0
goto :goto_24
.end method
.method private v()V
.registers 5
const/high16 v0, 0x4240
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v0, v1
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
div-int/lit8 v1, v0, 0x8
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f09002f
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
iput-object v0, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f090193
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, p0, Lcom/twidroid/fragments/f;->P:Landroid/widget/FrameLayout;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f090191
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/twidroid/fragments/f;->h:Landroid/widget/RelativeLayout;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f090192
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iput-object v0, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f0900c2
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/fragments/f;->J:Landroid/widget/TextView;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f090185
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/twidroid/fragments/f;->k:Landroid/widget/Button;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f0901bd
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/f;->l:Landroid/view/View;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f0901c0
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/fragments/f;->m:Landroid/widget/TextView;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f0901c1
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/fragments/f;->n:Landroid/widget/TextView;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f0901c2
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/fragments/f;->o:Landroid/widget/TextView;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f0901c3
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/fragments/f;->p:Landroid/widget/TextView;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f0901c4
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/fragments/f;->q:Landroid/widget/TextView;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f09018a
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/twidroid/fragments/f;->M:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f09018e
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/fragments/f;->G:Landroid/widget/TextView;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f09018f
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/fragments/f;->H:Landroid/widget/TextView;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f090190
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/fragments/f;->I:Landroid/widget/TextView;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f09018c
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/twidroid/fragments/f;->N:Landroid/widget/RelativeLayout;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f090040
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/twidroid/fragments/f;->K:Landroid/widget/ImageView;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/fragments/f;->O:Ljava/util/ArrayList;
iget-object v0, p0, Lcom/twidroid/fragments/f;->O:Ljava/util/ArrayList;
iget-object v2, p0, Lcom/twidroid/fragments/f;->G:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/fragments/f;->O:Ljava/util/ArrayList;
iget-object v2, p0, Lcom/twidroid/fragments/f;->H:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/fragments/f;->O:Ljava/util/ArrayList;
iget-object v2, p0, Lcom/twidroid/fragments/f;->I:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f090137
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v2, Lcom/twidroid/ui/b/c;
iget-object v3, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
iget v3, v3, Lcom/twidroid/ui/themes/r;->B:I
invoke-direct {v2, v3, v1}, Lcom/twidroid/ui/b/c;-><init>(II)V
invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setPullDownEnabled(Z)V
invoke-direct {p0}, Lcom/twidroid/fragments/f;->w()V
return-void
.end method
.method static synthetic v(Lcom/twidroid/fragments/f;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/fragments/f;->D()V
return-void
.end method
.method static synthetic w(Lcom/twidroid/fragments/f;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method private w()V
.registers 5
const v3, -0x333334
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v1, 0x7f0901bb
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/f;->j:Landroid/view/View;
iget-object v0, p0, Lcom/twidroid/fragments/f;->j:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->K:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->K:Landroid/widget/ImageView;
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->k:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->m:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->n:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->o:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->p:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->q:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->M:Landroid/widget/LinearLayout;
invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->G:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->H:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->I:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->k:Landroid/widget/Button;
const v1, 0x7f0c0132
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->m:Landroid/widget/TextView;
const v1, 0x7f0c00f0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->n:Landroid/widget/TextView;
const v1, 0x7f0c00f3
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->p:Landroid/widget/TextView;
const v1, 0x7f0c00f6
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->q:Landroid/widget/TextView;
const v1, 0x7f0c00ec
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_a8
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-boolean v0, v0, Lcom/twidroid/model/twitter/Tweet;->au:Z
if-nez v0, :cond_a8
iget-object v0, p0, Lcom/twidroid/fragments/f;->p:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->p:Landroid/widget/TextView;
const v1, 0x7f0201d6
invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->p:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->n:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->n:Landroid/widget/TextView;
const v1, 0x7f0201d4
invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->n:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V
:cond_a8
invoke-direct {p0}, Lcom/twidroid/fragments/f;->C()V
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v1, 0x7f09013d
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_be
new-instance v1, Lcom/twidroid/fragments/f$1;
invoke-direct {v1, p0}, Lcom/twidroid/fragments/f$1;-><init>(Lcom/twidroid/fragments/f;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_be
return-void
.end method
.method static synthetic x(Lcom/twidroid/fragments/f;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method private x()V
.registers 6
const/4 v4, 0x1
invoke-virtual {p0, v4}, Lcom/twidroid/fragments/f;->a(Z)V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->f()V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->N()V
new-instance v0, Lcom/twidroid/ui/a/k;
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-direct {v0, v1, v2, v4}, Lcom/twidroid/ui/a/k;-><init>(Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Z)V
invoke-virtual {v0, v4}, Lcom/twidroid/ui/a/k;->a(Z)V
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/f;->setListAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getListView()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/f;->J:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->h:Landroid/widget/RelativeLayout;
iget-object v1, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget-object v2, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->P:Landroid/widget/FrameLayout;
invoke-direct {p0, v0, v1, v2, v3}, Lcom/twidroid/fragments/f;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
sget-object v0, Lcom/twidroid/fragments/m;->b:Lcom/twidroid/fragments/m;
iput-object v0, p0, Lcom/twidroid/fragments/f;->aa:Lcom/twidroid/fragments/m;
invoke-virtual {p0, v4}, Lcom/twidroid/fragments/f;->b(Z)V
return-void
.end method
.method private y()V
.registers 13
const-wide/16 v10, 0x0
const v9, 0x7f09018c
const-wide/16 v7, 0x0
const/4 v4, 0x0
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_c
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->isDetached()Z
move-result v0
if-nez v0, :cond_c
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v1, 0x7f0901be
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v1, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f090141
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iget-object v2, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v3, 0x7f09013d
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v3}, Lcom/twidroid/model/twitter/Tweet;->o()Lcom/twidroid/ui/StringUrlSpan;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "\u2022 "
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v3, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v3, v3, Lcom/twidroid/model/twitter/Tweet;->ak:Ljava/lang/String;
if-eqz v3, :cond_60
iget-object v3, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v3, v3, Lcom/twidroid/model/twitter/Tweet;->ak:Ljava/lang/String;
const-string v6, "null"
invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_133
:cond_60
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const/high16 v6, 0x7f0c
invoke-virtual {p0, v6}, Lcom/twidroid/fragments/f;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v6, " "
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v6, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v6, v6, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
:goto_81
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-wide v5, v1, Lcom/twidroid/model/twitter/Tweet;->w:J
invoke-static {v5, v6}, Lcom/ubermedia/b/a/k;->c(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lcom/twidroid/fragments/f;->H:Landroid/widget/TextView;
iget-object v1, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-wide v5, v1, Lcom/twidroid/model/twitter/Tweet;->ah:J
cmp-long v1, v5, v10
if-lez v1, :cond_157
const v1, 0x7f0c032a
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/f;->getString(I)Ljava/lang/String;
move-result-object v1
:goto_a8
invoke-direct {p0, v2, v1}, Lcom/twidroid/fragments/f;->a(Landroid/widget/TextView;Ljava/lang/String;)V
iget-object v2, p0, Lcom/twidroid/fragments/f;->I:Landroid/widget/TextView;
iget-object v1, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-wide v5, v1, Lcom/twidroid/model/twitter/Tweet;->al:D
cmpl-double v1, v5, v7
if-nez v1, :cond_15b
iget-object v1, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-wide v5, v1, Lcom/twidroid/model/twitter/Tweet;->al:D
cmpl-double v1, v5, v7
if-nez v1, :cond_15b
const-string v1, ""
:goto_bf
invoke-direct {p0, v2, v1}, Lcom/twidroid/fragments/f;->a(Landroid/widget/TextView;Ljava/lang/String;)V
iget-object v2, p0, Lcom/twidroid/fragments/f;->G:Landroid/widget/TextView;
iget-object v1, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-wide v5, v1, Lcom/twidroid/model/twitter/Tweet;->ar:J
cmp-long v1, v5, v10
if-nez v1, :cond_164
const-string v1, ""
:goto_ce
invoke-direct {p0, v2, v1}, Lcom/twidroid/fragments/f;->a(Landroid/widget/TextView;Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/fragments/f;->O:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
move-result v1
if-eqz v1, :cond_171
iget-object v1, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
:goto_e6
iget-boolean v1, p0, Lcom/twidroid/fragments/f;->e:Z
if-eqz v1, :cond_ef
iget-object v1, p0, Lcom/twidroid/fragments/f;->M:Landroid/widget/LinearLayout;
invoke-virtual {v1}, Landroid/widget/LinearLayout;->performClick()Z
:cond_ef
iget-object v1, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/Tweet;->o()Lcom/twidroid/ui/StringUrlSpan;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/ui/StringUrlSpan;->b()[Landroid/text/style/URLSpan;
move-result-object v3
invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
array-length v5, v3
move v2, v4
:goto_102
if-ge v2, v5, :cond_196
aget-object v1, v3, v2
instance-of v0, v1, Lcom/ubermedia/ui/MyURLSpan;
if-eqz v0, :cond_121
move-object v0, v1
check-cast v0, Lcom/ubermedia/ui/MyURLSpan;
invoke-virtual {v0}, Lcom/ubermedia/ui/MyURLSpan;->getURL()Ljava/lang/String;
move-result-object v4
const-string v6, "@"
invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_181
new-instance v4, Lcom/twidroid/fragments/f$12;
invoke-direct {v4, p0}, Lcom/twidroid/fragments/f$12;-><init>(Lcom/twidroid/fragments/f;)V
invoke-virtual {v0, v4}, Lcom/ubermedia/ui/MyURLSpan;->a(Lcom/ubermedia/ui/c;)V
:goto_121
:cond_121
instance-of v0, v1, Lcom/ubermedia/ui/StringSpanInfo;
if-eqz v0, :cond_12f
check-cast v1, Lcom/ubermedia/ui/StringSpanInfo;
new-instance v0, Lcom/twidroid/fragments/f$15;
invoke-direct {v0, p0, v1}, Lcom/twidroid/fragments/f$15;-><init>(Lcom/twidroid/fragments/f;Lcom/ubermedia/ui/StringSpanInfo;)V
invoke-virtual {v1, v0}, Lcom/ubermedia/ui/StringSpanInfo;->a(Lcom/ubermedia/ui/d;)V
:cond_12f
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_102
:cond_133
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const v6, 0x7f0c02fb
invoke-virtual {p0, v6}, Lcom/twidroid/fragments/f;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v6, " "
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v6, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v6, v6, Lcom/twidroid/model/twitter/Tweet;->ak:Ljava/lang/String;
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
goto/16 :goto_81
:cond_157
const-string v1, ""
goto/16 :goto_a8
:cond_15b
const v1, 0x7f0c02d6
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/f;->getString(I)Ljava/lang/String;
move-result-object v1
goto/16 :goto_bf
:cond_164
const v1, 0x7f0c01a1
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/f;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
goto/16 :goto_ce
:cond_171
invoke-virtual {p0, v4}, Lcom/twidroid/fragments/f;->a(Z)V
iget-object v1, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout;
invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V
goto/16 :goto_e6
:cond_181
invoke-virtual {v0}, Lcom/ubermedia/ui/MyURLSpan;->getURL()Ljava/lang/String;
move-result-object v4
const-string v6, "#"
invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_121
new-instance v4, Lcom/twidroid/fragments/f$14;
invoke-direct {v4, p0}, Lcom/twidroid/fragments/f$14;-><init>(Lcom/twidroid/fragments/f;)V
invoke-virtual {v0, v4}, Lcom/ubermedia/ui/MyURLSpan;->a(Lcom/ubermedia/ui/c;)V
goto :goto_121
:cond_196
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/twidroid/fragments/f;->a(Lcom/ubermedia/ui/StringSpanInfo;)V
invoke-direct {p0}, Lcom/twidroid/fragments/f;->z()V
goto/16 :goto_c
.end method
.method static synthetic y(Lcom/twidroid/fragments/f;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/fragments/f;->y()V
return-void
.end method
.method static synthetic z(Lcom/twidroid/fragments/f;)Lcom/twidroid/e/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/f;->W:Lcom/twidroid/e/b;
return-object v0
.end method
.method private z()V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I
move-result v0
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->getVisibility()I
move-result v0
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/twidroid/fragments/f;->P:Landroid/widget/FrameLayout;
invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I
move-result v0
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/twidroid/fragments/f;->O:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/twidroid/fragments/f;->H:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/twidroid/fragments/f;->H:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z
:goto_27
:cond_27
return-void
:cond_28
iget-object v0, p0, Lcom/twidroid/fragments/f;->O:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/twidroid/fragments/f;->G:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/twidroid/fragments/f;->G:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z
goto :goto_27
:cond_38
iget-object v0, p0, Lcom/twidroid/fragments/f;->O:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/twidroid/fragments/f;->I:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/twidroid/fragments/f;->I:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z
goto :goto_27
.end method
.method public a(Ljava/lang/String;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/twidroid/fragments/f;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->au()Z
move-result v0
if-eqz v0, :cond_27
const-string v0, "http://www.google.com/gwt/n?u="
invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_27
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://www.google.com/gwt/n?u="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p1
:cond_27
return-object p1
.end method
.method protected a(I)V
.registers 4
const/4 v1, 0x0
new-instance v0, Lcom/twidroid/fragments/f$11;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/f$11;-><init>(Lcom/twidroid/fragments/f;)V
packed-switch p1, :pswitch_data_12
:goto_9
return-void
:pswitch_a
invoke-interface {v0, v1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z
:pswitch_d
invoke-interface {v0, v1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z
goto :goto_9
nop
:pswitch_data_12
.packed-switch 0x3002
:pswitch_a
:pswitch_d
.end packed-switch
.end method
.method public a(Lcom/twidroid/model/twitter/Tweet;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->isAdded()Z
move-result v0
if-eqz v0, :cond_b
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->d()V
:cond_b
return-void
.end method
.method public a(Ljava/lang/String;J)V
.registers 8
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_19
new-instance v0, Lcom/twidroid/fragments/h;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/h;-><init>(Lcom/twidroid/fragments/f;)V
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
aput-object p1, v1, v2
const/4 v2, 0x1
invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/h;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
:cond_19
return-void
.end method
.method public a(Ljava/lang/String;Z)V
.registers 7
const/4 v3, 0x0
if-eqz p2, :cond_f
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/twidroid/activity/UberSocialBaseActivity;
const-string v1, "tweet details"
invoke-virtual {v0, p1, v1, v3}, Lcom/twidroid/activity/UberSocialBaseActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/activity/aa;)V
:goto_e
return-void
:cond_f
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, p0, Lcom/twidroid/fragments/f;->x:Lcom/twidroid/b/a/b;
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
const-string v2, "tweet details"
invoke-virtual {v0, p1, v1, v2, v3}, Lcom/twidroid/activity/UberSocialBaseActivity;->a(Ljava/lang/String;ILjava/lang/String;Lcom/twidroid/activity/aa;)V
goto :goto_e
.end method
.method public a(Z)V
.registers 6
const/4 v3, 0x0
const/16 v1, 0x8
iget-object v0, p0, Lcom/twidroid/fragments/f;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->cc()Z
move-result v0
if-nez v0, :cond_f
iget-boolean v0, p0, Lcom/twidroid/fragments/f;->ae:Z
if-eqz v0, :cond_2b
:cond_f
iget-object v0, p0, Lcom/twidroid/fragments/f;->L:Landroid/widget/RelativeLayout;
invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I
move-result v0
if-eq v0, v1, :cond_1c
iget-object v0, p0, Lcom/twidroid/fragments/f;->M:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->performClick()Z
:cond_1c
iget-object v0, p0, Lcom/twidroid/fragments/f;->L:Landroid/widget/RelativeLayout;
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
if-eqz p1, :cond_49
invoke-direct {p0}, Lcom/twidroid/fragments/f;->E()V
iget-object v0, p0, Lcom/twidroid/fragments/f;->N:Landroid/widget/RelativeLayout;
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
:goto_2b
:cond_2b
const-string v1, "tweet_detail_view"
const/4 v0, 0x2
new-array v2, v0, [Ljava/lang/Object;
const-string v0, "auto-collapse"
aput-object v0, v2, v3
const/4 v3, 0x1
iget-object v0, p0, Lcom/twidroid/fragments/f;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->cc()Z
move-result v0
if-eqz v0, :cond_5a
const-string v0, "Yes"
:goto_3f
aput-object v0, v2, v3
invoke-static {v2}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
invoke-static {v1, v0}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
return-void
:cond_49
invoke-direct {p0}, Lcom/twidroid/fragments/f;->H()V
iget-object v0, p0, Lcom/twidroid/fragments/f;->O:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_2b
iget-object v0, p0, Lcom/twidroid/fragments/f;->N:Landroid/widget/RelativeLayout;
invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V
goto :goto_2b
:cond_5a
const-string v0, "No"
goto :goto_3f
.end method
.method protected b()V
.registers 3
const-string v0, "SingleTweetFragment"
const-string v1, "showTweet"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/twidroid/fragments/f;->B()V
iget-boolean v0, p0, Lcom/twidroid/fragments/f;->ae:Z
if-eqz v0, :cond_12
invoke-direct {p0}, Lcom/twidroid/fragments/f;->x()V
:goto_11
return-void
:cond_12
invoke-direct {p0}, Lcom/twidroid/fragments/f;->y()V
invoke-direct {p0}, Lcom/twidroid/fragments/f;->A()V
invoke-direct {p0}, Lcom/twidroid/fragments/f;->t()V
goto :goto_11
.end method
.method protected b(Lcom/twidroid/model/twitter/Tweet;)V
.registers 5
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
instance-of v0, v0, Lcom/twidroid/ui/a/am;
if-eqz v0, :cond_6
new-instance v1, Lcom/twidroid/c/w;
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v2, p0, Lcom/twidroid/fragments/f;->u:Lcom/twidroid/net/c/a/f;
invoke-direct {v1, v0, p1, v2}, Lcom/twidroid/c/w;-><init>(Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/am;
invoke-virtual {v1, v0}, Lcom/twidroid/c/w;->a(Lcom/twidroid/ui/a/am;)V
invoke-virtual {v1, p0}, Lcom/twidroid/c/w;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
invoke-virtual {v1}, Lcom/twidroid/c/w;->show()V
goto :goto_6
.end method
.method public b(Ljava/lang/String;J)V
.registers 8
new-instance v0, Lcom/twidroid/fragments/n;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/n;-><init>(Lcom/twidroid/fragments/f;)V
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
aput-object p1, v1, v2
const/4 v2, 0x1
invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/n;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method
.method public b(Z)V
.registers 10
const/4 v7, 0x1
const/4 v6, 0x0
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/a;->b(Z)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-nez v0, :cond_a
:goto_9
:cond_9
return-void
:cond_a
if-eqz p1, :cond_9
sget-object v0, Lcom/twidroid/fragments/f$13;->a:[I
iget-object v1, p0, Lcom/twidroid/fragments/f;->aa:Lcom/twidroid/fragments/m;
invoke-virtual {v1}, Lcom/twidroid/fragments/m;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_78
goto :goto_9
:pswitch_1a
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/aa;
invoke-virtual {v0}, Lcom/twidroid/ui/a/aa;->a()Z
move-result v0
if-eqz v0, :cond_9
new-instance v2, Lcom/twidroid/fragments/l;
iget v3, p0, Lcom/twidroid/fragments/f;->ad:I
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-wide v0, v0, Lcom/twidroid/model/twitter/Tweet;->ao:J
const-wide/16 v4, 0x0
cmp-long v0, v0, v4
if-lez v0, :cond_4c
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-wide v0, v0, Lcom/twidroid/model/twitter/Tweet;->ao:J
:goto_38
invoke-direct {v2, v3, v0, v1}, Lcom/twidroid/fragments/l;-><init>(IJ)V
new-instance v0, Lcom/twidroid/fragments/k;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/k;-><init>(Lcom/twidroid/fragments/f;)V
iput-object v0, p0, Lcom/twidroid/fragments/f;->ac:Lcom/twidroid/fragments/k;
iget-object v0, p0, Lcom/twidroid/fragments/f;->ac:Lcom/twidroid/fragments/k;
new-array v1, v7, [Lcom/twidroid/fragments/l;
aput-object v2, v1, v6
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/k;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_9
:cond_4c
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->m()J
move-result-wide v0
goto :goto_38
:pswitch_53
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/k;
invoke-virtual {v0}, Lcom/twidroid/ui/a/k;->a()Z
move-result v0
if-eqz v0, :cond_9
new-instance v0, Lcom/twidroid/fragments/j;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/j;-><init>(Lcom/twidroid/fragments/f;)V
iput-object v0, p0, Lcom/twidroid/fragments/f;->ab:Lcom/twidroid/fragments/j;
iget-object v0, p0, Lcom/twidroid/fragments/f;->ab:Lcom/twidroid/fragments/j;
new-array v1, v7, [Ljava/lang/Long;
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-wide v2, v2, Lcom/twidroid/model/twitter/Tweet;->ah:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v1, v6
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/j;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_9
:pswitch_data_78
.packed-switch 0x1
:pswitch_1a
:pswitch_53
.end packed-switch
.end method
.method public c()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/fragments/f;->ae:Z
return-void
.end method
.method protected c(Lcom/twidroid/model/twitter/Tweet;)V
.registers 6
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_8
if-nez p1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-class v2, Lcom/twidroid/SingleTweetActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "EXTRA_STATUS_ID"
iget-wide v2, p1, Lcom/twidroid/model/twitter/Tweet;->x:J
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v1, "EXTRA_TWEET"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_8
.end method
.method public c(Ljava/lang/String;J)V
.registers 8
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0c01c6
invoke-static {p0, v1}, Lcom/twidroid/d/h;->b(Lcom/twidroid/fragments/base/o;I)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/twidroid/fragments/f$19;
invoke-direct {v2, p0, p1, p2, p3}, Lcom/twidroid/fragments/f$19;-><init>(Lcom/twidroid/fragments/f;Ljava/lang/String;J)V
const/4 v3, 0x0
invoke-static {v0, v1, v2, v3}, Lcom/twidroid/c/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
return-void
.end method
.method public d()V
.registers 5
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_18
iget-boolean v0, p0, Lcom/twidroid/fragments/f;->ae:Z
if-nez v0, :cond_18
new-instance v0, Lcom/twidroid/fragments/p;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/p;-><init>(Lcom/twidroid/fragments/f;)V
const/4 v1, 0x1
new-array v1, v1, [Lcom/twidroid/model/twitter/Tweet;
const/4 v2, 0x0
iget-object v3, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/p;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
:cond_18
return-void
.end method
.method public d(Ljava/lang/String;J)V
.registers 8
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0c01cc
invoke-static {p0, v1}, Lcom/twidroid/d/h;->b(Lcom/twidroid/fragments/base/o;I)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/twidroid/fragments/f$20;
invoke-direct {v2, p0, p1, p2, p3}, Lcom/twidroid/fragments/f$20;-><init>(Lcom/twidroid/fragments/f;Ljava/lang/String;J)V
const/4 v3, 0x0
invoke-static {v0, v1, v2, v3}, Lcom/twidroid/c/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
return-void
.end method
.method public e()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/twidroid/fragments/f;->b:Landroid/widget/ProgressBar;
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->b:Landroid/widget/ProgressBar;
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->b:Landroid/widget/ProgressBar;
iget-object v1, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->C()Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public f()V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/f;->b:Landroid/widget/ProgressBar;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
return-void
.end method
.method protected g()V
.registers 10
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
const-string v0, "tweet"
const-string v1, "reply_all"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "[^a-z0-9]{0,1}@([a-z0-9_]{1,20})"
const/4 v1, 0x2
invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-wide v2, v2, Lcom/twidroid/model/twitter/Tweet;->ao:J
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-lez v2, :cond_65
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "@"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v3, v3, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_46
:cond_46
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v2
if-eqz v2, :cond_80
const/4 v2, 0x0
invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v2
const-string v3, "@"
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_46
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_46
:cond_65
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "@"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v3, v3, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_46
:cond_80
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_89
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_9e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v0, 0x20
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_89
:cond_9e
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-wide v2, v2, Lcom/twidroid/model/twitter/Tweet;->x:J
iget-object v4, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget v4, v4, Lcom/twidroid/model/twitter/Tweet;->aB:I
const/4 v5, -0x1
const/4 v6, 0x0
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "@"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v8, v8, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, ": "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v8}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static/range {v0 .. v7}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;Ljava/lang/String;)V
goto/16 :goto_4
.end method
.method protected h()V
.registers 10
const/4 v6, 0x0
const/4 v5, -0x1
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
const-string v0, "tweet"
const-string v1, "reply"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-wide v0, v0, Lcom/twidroid/model/twitter/Tweet;->ao:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_66
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "@"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v2, v2, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-wide v2, v2, Lcom/twidroid/model/twitter/Tweet;->x:J
iget-object v4, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget v4, v4, Lcom/twidroid/model/twitter/Tweet;->aB:I
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "@"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v8, v8, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, ": "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v8}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static/range {v0 .. v7}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;Ljava/lang/String;)V
goto :goto_6
:cond_66
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "@"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v2, v2, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-wide v2, v2, Lcom/twidroid/model/twitter/Tweet;->x:J
iget-object v4, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget v4, v4, Lcom/twidroid/model/twitter/Tweet;->aB:I
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "@"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v8, v8, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, ": "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v8}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static/range {v0 .. v7}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;Ljava/lang/String;)V
goto/16 :goto_6
.end method
.method protected i()Z
.registers 8
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
const-string v1, "tweet"
const-string v2, "favorite"
invoke-static {v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const v1, 0x7f0c014c
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/f;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v3, p0, Lcom/twidroid/fragments/f;->u:Lcom/twidroid/net/c/a/f;
const/4 v4, 0x0
new-instance v5, Lcom/twidroid/fragments/f$16;
invoke-direct {v5, p0, v6}, Lcom/twidroid/fragments/f$16;-><init>(Lcom/twidroid/fragments/f;Ljava/lang/String;)V
invoke-static/range {v0 .. v5}, Lcom/twidroid/net/c/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;Lcom/twidroid/net/c/u;)V
const/4 v0, 0x1
goto :goto_5
.end method
.method protected j()Z
.registers 8
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
const-string v1, "tweet"
const-string v2, "unfavorite"
invoke-static {v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const v1, 0x7f0c0169
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/f;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v3, p0, Lcom/twidroid/fragments/f;->u:Lcom/twidroid/net/c/a/f;
const/4 v4, 0x0
new-instance v5, Lcom/twidroid/fragments/f$17;
invoke-direct {v5, p0, v6}, Lcom/twidroid/fragments/f$17;-><init>(Lcom/twidroid/fragments/f;Ljava/lang/String;)V
invoke-static/range {v0 .. v5}, Lcom/twidroid/net/c/t;->b(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;Lcom/twidroid/net/c/u;)V
const/4 v0, 0x1
goto :goto_5
.end method
.method protected k()V
.registers 5
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
const/4 v2, 0x1
if-le v1, v2, :cond_32
new-instance v1, Lcom/twidroid/fragments/f$18;
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v1, p0, v2, v0}, Lcom/twidroid/fragments/f$18;-><init>(Lcom/twidroid/fragments/f;Landroid/app/Activity;Lcom/twidroid/UberSocialApplication;)V
invoke-virtual {v1}, Lcom/twidroid/fragments/f$18;->show()V
:goto_2a
const-string v0, "tweet"
const-string v1, "retweet"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4
:cond_32
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v0
iget-object v3, p0, Lcom/twidroid/fragments/f;->u:Lcom/twidroid/net/c/a/f;
invoke-static {v1, v2, v0, v3}, Lcom/twidroid/c/l;->a(Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/model/twitter/c;Lcom/twidroid/net/c/a/f;)Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
goto :goto_2a
.end method
.method public l()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/fragments/f;->T:Z
return v0
.end method
.method public m()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/fragments/f;->c:Z
return v0
.end method
.method  n()V
.registers 5
iget-object v0, p0, Lcom/twidroid/fragments/f;->Q:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/fragments/f$7;
invoke-direct {v1, p0}, Lcom/twidroid/fragments/f$7;-><init>(Lcom/twidroid/fragments/f;)V
const-wide/16 v2, 0x7d0
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method public o()V
.registers 5
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->o()Lcom/twidroid/ui/StringUrlSpan;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/ui/StringUrlSpan;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-static {v1}, Lcom/twidroid/model/twitter/CommunicationEntity;->b(Lcom/twidroid/model/twitter/CommunicationEntity;)Lcom/twidroid/d/n;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/fragments/f;->V:Lcom/twidroid/d/n;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_46
:try_start_1c
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f0c0159
invoke-static {v1, v2}, Lcom/twidroid/d/h;->a(Landroid/content/Context;I)Ljava/lang/CharSequence;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->V:Lcom/twidroid/d/n;
invoke-virtual {v0}, Lcom/twidroid/d/n;->b()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/f;->V:Lcom/twidroid/d/n;
invoke-virtual {v1}, Lcom/twidroid/d/n;->f()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
new-instance v3, Lcom/twidroid/fragments/f$8;
invoke-direct {v3, p0}, Lcom/twidroid/fragments/f$8;-><init>(Lcom/twidroid/fragments/f;)V
invoke-static {v0, v1, v2, v3}, Lcom/twidroid/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/twidroid/d/a/b;)V
:try_end_46
.catch Ljava/lang/Exception; {:try_start_1c .. :try_end_46} :catch_47
:goto_46
:cond_46
return-void
:catch_47
move-exception v0
const-string v1, "SingleTweetFragment"
const-string v2, "error downloading image from tweet"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_46
.end method
.method public onClick(Landroid/view/View;)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/f; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
const/4 v6, 0x0
const/4 v4, 0x1
iget-object v0, p0, Lcom/twidroid/fragments/f;->j:Landroid/view/View;
invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_1f
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v1, v1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget v2, v2, Lcom/twidroid/model/twitter/Tweet;->aB:I
invoke-static {v0, v1, v2}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;I)V
:goto_1e
:cond_1e
const-string v1, " - Lcom/twidroid/fragments/f; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1f
iget-object v0, p0, Lcom/twidroid/fragments/f;->G:Landroid/widget/TextView;
invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_74
invoke-direct {p0}, Lcom/twidroid/fragments/f;->H()V
iget-object v0, p0, Lcom/twidroid/fragments/f;->aa:Lcom/twidroid/fragments/m;
sget-object v2, Lcom/twidroid/fragments/m;->a:Lcom/twidroid/fragments/m;
if-eq v0, v2, :cond_1e
iget-object v0, p0, Lcom/twidroid/fragments/f;->G:Landroid/widget/TextView;
invoke-direct {p0, v0}, Lcom/twidroid/fragments/f;->a(Landroid/view/View;)V
const-string v0, "SingleTweetFragment"
const-string v2, "::retweets touched"
invoke-static {v0, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->f()V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->N()V
new-instance v0, Lcom/twidroid/ui/a/aa;
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v0, v2}, Lcom/twidroid/ui/a/aa;-><init>(Landroid/app/Activity;)V
invoke-virtual {v0, v4}, Lcom/twidroid/ui/a/aa;->a(Z)V
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/f;->setListAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getListView()Landroid/widget/ListView;
move-result-object v0
iget-object v2, p0, Lcom/twidroid/fragments/f;->J:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->h:Landroid/widget/RelativeLayout;
iget-object v2, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
iget-object v5, p0, Lcom/twidroid/fragments/f;->P:Landroid/widget/FrameLayout;
invoke-direct {p0, v0, v2, v3, v5}, Lcom/twidroid/fragments/f;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
sget-object v0, Lcom/twidroid/fragments/m;->a:Lcom/twidroid/fragments/m;
iput-object v0, p0, Lcom/twidroid/fragments/f;->aa:Lcom/twidroid/fragments/m;
iput v1, p0, Lcom/twidroid/fragments/f;->ad:I
invoke-virtual {p0, v4}, Lcom/twidroid/fragments/f;->b(Z)V
goto :goto_1e
:cond_74
iget-object v0, p0, Lcom/twidroid/fragments/f;->H:Landroid/widget/TextView;
invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c2
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_c2
invoke-direct {p0}, Lcom/twidroid/fragments/f;->H()V
iget-object v0, p0, Lcom/twidroid/fragments/f;->aa:Lcom/twidroid/fragments/m;
sget-object v1, Lcom/twidroid/fragments/m;->b:Lcom/twidroid/fragments/m;
if-eq v0, v1, :cond_1e
iget-object v0, p0, Lcom/twidroid/fragments/f;->H:Landroid/widget/TextView;
invoke-direct {p0, v0}, Lcom/twidroid/fragments/f;->a(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->f()V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->N()V
new-instance v0, Lcom/twidroid/ui/a/k;
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-direct {v0, v1, v2, v4}, Lcom/twidroid/ui/a/k;-><init>(Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Z)V
invoke-virtual {v0, v4}, Lcom/twidroid/ui/a/k;->a(Z)V
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/f;->setListAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getListView()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/f;->J:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->h:Landroid/widget/RelativeLayout;
iget-object v1, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget-object v2, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->P:Landroid/widget/FrameLayout;
invoke-direct {p0, v0, v1, v2, v3}, Lcom/twidroid/fragments/f;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
sget-object v0, Lcom/twidroid/fragments/m;->b:Lcom/twidroid/fragments/m;
iput-object v0, p0, Lcom/twidroid/fragments/f;->aa:Lcom/twidroid/fragments/m;
invoke-virtual {p0, v4}, Lcom/twidroid/fragments/f;->b(Z)V
goto/16 :goto_1e
:cond_c2
iget-object v0, p0, Lcom/twidroid/fragments/f;->I:Landroid/widget/TextView;
invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_148
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_148
sget-object v0, Lcom/twidroid/fragments/m;->c:Lcom/twidroid/fragments/m;
iput-object v0, p0, Lcom/twidroid/fragments/f;->aa:Lcom/twidroid/fragments/m;
iget-object v0, p0, Lcom/twidroid/fragments/f;->I:Landroid/widget/TextView;
invoke-direct {p0, v0}, Lcom/twidroid/fragments/f;->a(Landroid/view/View;)V
invoke-direct {p0}, Lcom/twidroid/fragments/f;->H()V
iget-object v0, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->f()V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->N()V
:try_start_e5
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->b()Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
iget-object v1, p0, Lcom/twidroid/fragments/f;->h:Landroid/widget/RelativeLayout;
iget-object v2, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
iget-object v3, p0, Lcom/twidroid/fragments/f;->P:Landroid/widget/FrameLayout;
invoke-direct {p0, v0, v1, v2, v3}, Lcom/twidroid/fragments/f;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const-string v1, "window"
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v4
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-wide v0, v0, Lcom/twidroid/model/twitter/Tweet;->al:D
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-wide v2, v2, Lcom/twidroid/model/twitter/Tweet;->am:D
invoke-virtual {v4}, Landroid/view/Display;->getWidth()I
move-result v4
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
const/16 v6, 0xc8
invoke-static {v5, v6}, Lcom/twidroid/d/u;->a(Landroid/content/Context;I)I
move-result v5
invoke-static/range {v0 .. v5}, Lcom/twidroid/activity/LocationActivity;->a(DDII)Ljava/lang/String;
move-result-object v1
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v2, 0x7f090192
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
const/4 v2, 0x0
new-instance v3, Lcom/twidroid/fragments/f$9;
invoke-direct {v3, p0, v0}, Lcom/twidroid/fragments/f$9;-><init>(Lcom/twidroid/fragments/f;Landroid/widget/ImageView;)V
invoke-static {v1, v2, v3}, Lcom/twidroid/net/k;->a(Ljava/lang/String;Lcom/twidroid/net/j;Lcom/twidroid/net/l;)V
:try_end_136
.catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_136} :catch_138
goto/16 :goto_1e
:catch_138
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v1, "SingleTweetFragment"
const-string v2, "Click on location failed"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->M()V
goto/16 :goto_1e
:cond_148
iget-object v0, p0, Lcom/twidroid/fragments/f;->K:Landroid/widget/ImageView;
invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16b
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_1e
instance-of v1, v0, Lcom/twidroid/model/twitter/Tweet;
if-eqz v1, :cond_1e
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_1e
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, v0, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
iget v0, v0, Lcom/twidroid/model/twitter/Tweet;->aB:I
invoke-static {v1, v2, v0}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;I)V
goto/16 :goto_1e
:cond_16b
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
const v2, 0x7f090185
if-ne v0, v2, :cond_1d1
iget-object v0, p0, Lcom/twidroid/fragments/f;->x:Lcom/twidroid/b/a/b;
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
iget v2, p0, Lcom/twidroid/fragments/f;->U:I
if-nez v2, :cond_1b2
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->b()Lcom/twidroid/ui/themes/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/themes/a/b;->f()V
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v0
if-le v0, v4, :cond_1a3
new-instance v0, Lcom/twidroid/fragments/f$10;
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v0, p0, v2, v1}, Lcom/twidroid/fragments/f$10;-><init>(Lcom/twidroid/fragments/f;Landroid/app/Activity;Ljava/util/ArrayList;)V
invoke-virtual {v0}, Lcom/twidroid/fragments/f$10;->show()V
goto/16 :goto_1e
:cond_1a3
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v0, v0, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
iget-object v1, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v1, v1, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;
iget-wide v1, v1, Lcom/twidroid/model/twitter/User;->b:J
invoke-virtual {p0, v0, v1, v2}, Lcom/twidroid/fragments/f;->c(Ljava/lang/String;J)V
goto/16 :goto_1e
:cond_1b2
iget v1, p0, Lcom/twidroid/fragments/f;->U:I
if-eq v1, v4, :cond_1bb
iget v1, p0, Lcom/twidroid/fragments/f;->U:I
const/4 v2, 0x3
if-ne v1, v2, :cond_1e
:cond_1bb
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->b()Lcom/twidroid/ui/themes/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/themes/a/b;->g()V
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v0, v0, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
iget-object v1, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v1, v1, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;
iget-wide v1, v1, Lcom/twidroid/model/twitter/User;->b:J
invoke-virtual {p0, v0, v1, v2}, Lcom/twidroid/fragments/f;->d(Ljava/lang/String;J)V
goto/16 :goto_1e
:cond_1d1
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
const v2, 0x7f0901c0
if-ne v0, v2, :cond_1df
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->h()V
goto/16 :goto_1e
:cond_1df
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
const v2, 0x7f0901c1
if-ne v0, v2, :cond_1ed
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->k()V
goto/16 :goto_1e
:cond_1ed
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
const v2, 0x7f0901c2
if-ne v0, v2, :cond_206
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-boolean v0, v0, Lcom/twidroid/model/twitter/Tweet;->aj:Z
if-eqz v0, :cond_201
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->j()Z
goto/16 :goto_1e
:cond_201
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->i()Z
goto/16 :goto_1e
:cond_206
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
const v2, 0x7f0901c3
if-ne v0, v2, :cond_26d
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.SEND"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "android.intent.extra.SUBJECT"
const v2, 0x7f0c00d4
invoke-virtual {p0, v2}, Lcom/twidroid/fragments/f;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
const-string v1, "android.intent.extra.TEXT"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "@"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v3, v3, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ":\n\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v3}, Lcom/twidroid/model/twitter/Tweet;->p()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\n\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const v3, 0x7f0c00d3
invoke-virtual {p0, v3}, Lcom/twidroid/fragments/f;->getText(I)Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "text/plain"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
invoke-static {v0, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/f;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_1e
:cond_26d
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
const v2, 0x7f0901c4
if-ne v0, v2, :cond_284
new-instance v0, Lcom/twidroid/c/s;
iget-object v1, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
iget-object v2, p0, Lcom/twidroid/fragments/f;->u:Lcom/twidroid/net/c/a/f;
invoke-direct {v0, p0, v1, v2}, Lcom/twidroid/c/s;-><init>(Landroid/support/v4/app/Fragment;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;)V
invoke-virtual {v0}, Lcom/twidroid/c/s;->show()V
goto/16 :goto_1e
:cond_284
iget-object v0, p0, Lcom/twidroid/fragments/f;->M:Landroid/widget/LinearLayout;
invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
iget-object v2, p0, Lcom/twidroid/fragments/f;->L:Landroid/widget/RelativeLayout;
iget-object v0, p0, Lcom/twidroid/fragments/f;->L:Landroid/widget/RelativeLayout;
invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I
move-result v0
if-nez v0, :cond_2f6
const/16 v0, 0x8
:goto_298
invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V
const v0, 0x7f09018b
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v2, p0, Lcom/twidroid/fragments/f;->L:Landroid/widget/RelativeLayout;
invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I
move-result v2
if-nez v2, :cond_2f8
move v3, v4
:goto_2ad
if-eqz v3, :cond_2fa
const v2, 0x7f0200b9
:goto_2b2
invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v0, v6, v6, v2, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
if-eqz v3, :cond_2fe
const-string v2, "Collapse Tweet"
:goto_2c4
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
if-eqz v0, :cond_2d8
iget-object v0, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->getVisibility()I
move-result v0
if-nez v0, :cond_2d8
iget-object v0, p0, Lcom/twidroid/fragments/f;->i:Lcom/twidroid/ui/widgets/gesture/GestureImageView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->b()V
:cond_2d8
const-string v2, "tweet_detail_view_collapse_pressed"
const/4 v0, 0x2
new-array v3, v0, [Ljava/lang/Object;
const-string v0, "auto-collapse-enabled"
aput-object v0, v3, v1
iget-object v0, p0, Lcom/twidroid/fragments/f;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->cc()Z
move-result v0
if-eqz v0, :cond_301
const-string v0, "Yes"
:goto_2eb
aput-object v0, v3, v4
invoke-static {v3}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
invoke-static {v2, v0}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
goto/16 :goto_1e
:cond_2f6
move v0, v1
goto :goto_298
:cond_2f8
move v3, v1
goto :goto_2ad
:cond_2fa
const v2, 0x7f0200b8
goto :goto_2b2
:cond_2fe
const-string v2, "Expand Tweet"
goto :goto_2c4
:cond_301
const-string v0, "No"
goto :goto_2eb
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/f; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
iget-object v1, p0, Lcom/twidroid/fragments/f;->g:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->getVisibility()I
move-result v1
if-eqz v1, :cond_29
iget-object v1, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-eqz v1, :cond_46
sget-object v1, Lcom/ubermedia/ui/b;->p:Ljava/util/regex/Pattern;
iget-object v2, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
move-result v1
if-eqz v1, :cond_46
:cond_29
const/16 v1, 0xce
const v2, 0x7f0c01bd
invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v1
const v2, 0x7f02015f
invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
move-result-object v1
const/4 v2, 0x2
invoke-static {v1, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V
const-string v2, "ic_menu_location_website"
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-static {v1, v2, v0, v3}, Lcom/twidroid/d/t;->a(Landroid/view/MenuItem;Ljava/lang/String;Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;)V
:cond_46
const-string v1, " - Lcom/twidroid/fragments/f; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
const v0, 0x7f030075
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public onDismiss(Landroid/content/DialogInterface;)V
.registers 3
instance-of v0, p1, Lcom/twidroid/c/w;
if-eqz v0, :cond_b
check-cast p1, Lcom/twidroid/c/w;
iget v0, p1, Lcom/twidroid/c/w;->e:I
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/f;->a(I)V
:cond_b
return-void
.end method
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/f; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getListView()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v0
sub-int v0, p3, v0
if-ltz v0, :cond_1d
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v1
invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lcom/twidroid/model/twitter/Tweet;
if-eqz v1, :cond_1d
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/f;->b(Lcom/twidroid/model/twitter/Tweet;)V
:cond_1d
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/twidroid/fragments/f; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/f; onListItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super/range {p0 .. p5}, Lcom/twidroid/fragments/base/a;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getListView()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v0
sub-int v0, p3, v0
if-ltz v0, :cond_25
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v1
invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
const/4 v1, 0x0
instance-of v2, v0, Lcom/twidroid/model/twitter/User;
if-eqz v2, :cond_26
check-cast v0, Lcom/twidroid/model/twitter/User;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->i()Ljava/lang/String;
move-result-object v0
move-object v1, v0
:cond_23
if-nez v1, :cond_30
:goto_25
:cond_25
const-string v1, " - Lcom/twidroid/fragments/f; onListItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_26
instance-of v2, v0, Lcom/twidroid/model/twitter/Tweet;
if-eqz v2, :cond_23
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/f;->c(Lcom/twidroid/model/twitter/Tweet;)V
goto :goto_25
:cond_30
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
if-eqz v0, :cond_50
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
invoke-static {v2, v1, v0}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;I)V
goto :goto_25
:cond_50
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0, v1}, Lcom/twidroid/d/a;->b(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_25
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/f; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
if-nez v0, :cond_9
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
:goto_8
move v2, v0
const-string v1, " - Lcom/twidroid/fragments/f; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_9
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
packed-switch v0, :pswitch_data_4c
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
goto :goto_8
:pswitch_15
iget-object v0, p0, Lcom/twidroid/fragments/f;->R:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->o()Lcom/twidroid/ui/StringUrlSpan;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/ui/StringUrlSpan;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_49
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v0, 0x1000
invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
const-string v0, "com.android.browser.application_id"
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/f;->startActivity(Landroid/content/Intent;)V
:cond_49
const/4 v0, 0x1
goto :goto_8
nop
:pswitch_data_4c
.packed-switch 0xce
:pswitch_15
.end packed-switch
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/twidroid/fragments/f; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/a;->onPause()V
iget-object v0, p0, Lcom/twidroid/fragments/f;->ab:Lcom/twidroid/fragments/j;
invoke-direct {p0, v0}, Lcom/twidroid/fragments/f;->a(Lcom/ubermedia/a/a;)V
iget-object v0, p0, Lcom/twidroid/fragments/f;->ac:Lcom/twidroid/fragments/k;
invoke-direct {p0, v0}, Lcom/twidroid/fragments/f;->a(Lcom/ubermedia/a/a;)V
const-string v1, " - Lcom/twidroid/fragments/f; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
.registers 2
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/twidroid/fragments/f; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/a;->onResume()V
iget-boolean v0, p0, Lcom/twidroid/fragments/f;->ae:Z
if-eqz v0, :cond_a
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->b()V
:cond_a
const-string v1, " - Lcom/twidroid/fragments/f; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/twidroid/fragments/f; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/a;->onStart()V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->d()V
const-string v1, " - Lcom/twidroid/fragments/f; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
iput-object p1, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
invoke-direct {p0}, Lcom/twidroid/fragments/f;->v()V
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getListView()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/f;->v:Lcom/twidroid/ui/themes/r;
invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->s()I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V
const v0, 0x7f090194
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/twidroid/fragments/f;->b:Landroid/widget/ProgressBar;
const v0, 0x7f0900c4
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/twidroid/fragments/f;->B:Landroid/widget/ProgressBar;
iget-object v0, p0, Lcom/twidroid/fragments/f;->f:Landroid/view/View;
const v1, 0x7f090189
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/twidroid/fragments/f;->L:Landroid/widget/RelativeLayout;
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getListView()Landroid/widget/ListView;
move-result-object v0
if-eqz v0, :cond_45
invoke-virtual {p0}, Lcom/twidroid/fragments/f;->getListView()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
:cond_45
return-void
.end method
.method public p()V
.registers 5
const/4 v0, 0x0
const/4 v1, 0x4
iget-boolean v2, p0, Lcom/twidroid/fragments/f;->c:Z
if-eqz v2, :cond_19
iget-object v2, p0, Lcom/twidroid/fragments/f;->k:Landroid/widget/Button;
invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V
:cond_b
:goto_b
iget-object v2, p0, Lcom/twidroid/fragments/f;->l:Landroid/view/View;
iget-object v3, p0, Lcom/twidroid/fragments/f;->k:Landroid/widget/Button;
invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I
move-result v3
if-ne v3, v1, :cond_33
:goto_15
invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V
return-void
:cond_19
iget v2, p0, Lcom/twidroid/fragments/f;->U:I
if-nez v2, :cond_23
iget-object v2, p0, Lcom/twidroid/fragments/f;->k:Landroid/widget/Button;
invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V
goto :goto_b
:cond_23
iget v2, p0, Lcom/twidroid/fragments/f;->U:I
const/4 v3, 0x1
if-eq v2, v3, :cond_2d
iget v2, p0, Lcom/twidroid/fragments/f;->U:I
const/4 v3, 0x3
if-ne v2, v3, :cond_b
:cond_2d
iget-object v2, p0, Lcom/twidroid/fragments/f;->k:Landroid/widget/Button;
invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V
goto :goto_b
:cond_33
move v0, v1
goto :goto_15
.end method
.method public q()I
.registers 2
iget v0, p0, Lcom/twidroid/fragments/f;->U:I
return v0
.end method