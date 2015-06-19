.class public Lcom/twidroid/UberSocialProfile;
.super Lcom/twidroid/activity/UberSocialBaseActivity;
.source "SourceFile"
.implements Lcom/twidroid/fragments/b/d;
.implements Lcom/twidroid/fragments/b/f;
.implements Lcom/twidroid/fragments/d/b;
.field public static final C:I = 0x8
.field private static final ag:I = 0x2
.field private static final ah:I = 0x7
.field private static final ai:I = 0x8
.field private static final aj:I = 0x9
.field private static final ak:I = 0xa
.field private static final al:I = 0xb
.field private static final am:I = 0xd
.field private static final an:I = 0x11
.field private static final aq:I = 0x41
.field public static final b:Ljava/lang/String; = "EXTRA_ACCOUNT_ID"
.field public static final c:Ljava/lang/String; = "EXTRA_USER"
.field static final d:Ljava/lang/String; = "com.twidroid.activity.UberSocialProfile"
.field static final g:I = 0x2bd
.field static final h:I = 0x2be
.field static final i:I = 0x2bf
.field static final j:I = 0x2c0
.field static final k:I = 0x2c1
.field static final l:I = 0x2c3
.field public static final m:I = 0x1
.field protected static q:Z = false
.field public static final r:I = 0x5dc0
.field  A:Lcom/twidroid/ui/a/ap;
.field  B:I
.field  D:Landroid/support/v4/view/ViewPager;
.field  E:Lcom/viewpagerindicator/a;
.field  F:Lcom/twidroid/ui/c/g;
.field  G:Z
.field  H:Landroid/widget/TextView;
.field  I:Lcom/twidroid/net/c/a;
.field private final aA:Ljava/lang/Runnable;
.field private final aB:Ljava/lang/Runnable;
.field private final af:I
.field private final ao:I
.field private final ap:I
.field private ar:Lcom/twidroid/fragments/a/e;
.field private as:Lcom/twidroid/ui/widgets/CachedImageView;
.field private at:Ljava/lang/String;
.field private au:Landroid/widget/TextView;
.field private av:Lcom/twidroid/c/f;
.field private aw:I
.field private final ax:Ljava/lang/Runnable;
.field private final ay:Ljava/lang/Runnable;
.field private final az:Ljava/lang/Runnable;
.field  e:I
.field  f:Lcom/twidroid/model/twitter/User;
.field  n:Ljava/lang/String;
.field  o:Landroid/view/MenuItem;
.field public p:Lcom/twidroid/net/a/c/a;
.field  s:Landroid/view/LayoutInflater;
.field  t:Lcom/twidroid/model/twitter/e;
.field  u:Ljava/util/HashMap;
.field protected v:Z
.field protected w:Z
.field public x:Z
.field public y:Z
.field  z:Landroid/widget/TextView;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/twidroid/UberSocialProfile;->q:Z
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;-><init>()V
const/16 v0, 0x168
iput v0, p0, Lcom/twidroid/UberSocialProfile;->af:I
const/16 v0, 0x3d
iput v0, p0, Lcom/twidroid/UberSocialProfile;->ao:I
const/16 v0, 0x3f
iput v0, p0, Lcom/twidroid/UberSocialProfile;->ap:I
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->u:Ljava/util/HashMap;
iput-boolean v1, p0, Lcom/twidroid/UberSocialProfile;->v:Z
iput-boolean v1, p0, Lcom/twidroid/UberSocialProfile;->w:Z
iput-boolean v2, p0, Lcom/twidroid/UberSocialProfile;->x:Z
iput-boolean v1, p0, Lcom/twidroid/UberSocialProfile;->y:Z
iput v1, p0, Lcom/twidroid/UberSocialProfile;->B:I
iput-boolean v2, p0, Lcom/twidroid/UberSocialProfile;->G:Z
new-instance v0, Lcom/twidroid/UberSocialProfile$1;
invoke-direct {v0, p0}, Lcom/twidroid/UberSocialProfile$1;-><init>(Lcom/twidroid/UberSocialProfile;)V
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->ax:Ljava/lang/Runnable;
new-instance v0, Lcom/twidroid/UberSocialProfile$12;
invoke-direct {v0, p0}, Lcom/twidroid/UberSocialProfile$12;-><init>(Lcom/twidroid/UberSocialProfile;)V
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->ay:Ljava/lang/Runnable;
new-instance v0, Lcom/twidroid/UberSocialProfile$23;
invoke-direct {v0, p0}, Lcom/twidroid/UberSocialProfile$23;-><init>(Lcom/twidroid/UberSocialProfile;)V
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->az:Ljava/lang/Runnable;
new-instance v0, Lcom/twidroid/UberSocialProfile$28;
invoke-direct {v0, p0}, Lcom/twidroid/UberSocialProfile$28;-><init>(Lcom/twidroid/UberSocialProfile;)V
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->aA:Ljava/lang/Runnable;
new-instance v0, Lcom/twidroid/UberSocialProfile$29;
invoke-direct {v0, p0}, Lcom/twidroid/UberSocialProfile$29;-><init>(Lcom/twidroid/UberSocialProfile;)V
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->aB:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic A(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method private A()V
.registers 9
const v7, 0x7f0c030f
const v6, 0x7f0c0132
const/4 v3, 0x1
const/4 v5, 0x0
const v0, 0x7f0900d9
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->z:Landroid/widget/TextView;
iget-boolean v0, p0, Lcom/twidroid/UberSocialProfile;->w:Z
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->z:Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->z:Landroid/widget/TextView;
invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
:goto_23
return-void
:cond_24
const v0, 0x7f090185
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iget v1, p0, Lcom/twidroid/UberSocialProfile;->ac:I
packed-switch v1, :pswitch_data_86
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->z:Landroid/widget/TextView;
const v2, 0x7f0c02ad
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V
goto :goto_23
:pswitch_3e
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->z:Landroid/widget/TextView;
const v2, 0x7f0c02b1
invoke-virtual {p0, v2}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v3, [Ljava/lang/Object;
iget-object v4, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
aput-object v4, v3, v5
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V
goto :goto_23
:pswitch_5c
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->z:Landroid/widget/TextView;
const v2, 0x7f0c02af
invoke-virtual {p0, v2}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
new-array v3, v3, [Ljava/lang/Object;
iget-object v4, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
aput-object v4, v3, v5
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V
goto :goto_23
:pswitch_7a
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->z:Landroid/widget/TextView;
const v2, 0x7f0c02ac
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V
goto :goto_23
:pswitch_data_86
.packed-switch 0x1
:pswitch_3e
:pswitch_5c
:pswitch_7a
.end packed-switch
.end method
.method static synthetic B(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method private B()V
.registers 5
iget-boolean v0, p0, Lcom/twidroid/UberSocialProfile;->w:Z
if-nez v0, :cond_9d
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/User;->i()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->i(Ljava/lang/String;)Lcom/ubermedia/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/ubermedia/model/twitter/c;->m()I
move-result v1
iput v1, p0, Lcom/twidroid/UberSocialProfile;->ac:I
invoke-virtual {v0}, Lcom/ubermedia/model/twitter/c;->e()Z
move-result v1
iput-boolean v1, p0, Lcom/twidroid/UberSocialProfile;->v:Z
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
iget-object v3, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->p()I
move-result v3
invoke-virtual {v1, v2, v3}, Lcom/twidroid/b/a/b;->b(Ljava/lang/String;I)Z
move-result v1
iput-boolean v1, p0, Lcom/twidroid/UberSocialProfile;->ae:Z
const-string v1, "com.twidroid.activity.UberSocialProfile"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, " Is Friend? "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " <> "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
invoke-virtual {v3}, Lcom/twidroid/model/twitter/User;->i()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/ubermedia/model/twitter/c;->j()Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/UberSocialProfile;->y:Z
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->L()Z
move-result v0
if-eqz v0, :cond_9a
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/User;->e()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->g(J)Z
move-result v0
if-eqz v0, :cond_9e
:cond_9a
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/UberSocialProfile;->x:Z
:goto_9d
:cond_9d
return-void
:cond_9e
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/UberSocialProfile;->x:Z
goto :goto_9d
.end method
.method static synthetic C(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method private C()V
.registers 4
const v2, 0x7f090185
iget-boolean v0, p0, Lcom/twidroid/UberSocialProfile;->w:Z
if-nez v0, :cond_79
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
if-eqz v0, :cond_79
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->o:Landroid/view/MenuItem;
if-eqz v0, :cond_79
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ad:Landroid/view/MenuItem;
if-eqz v0, :cond_79
iget-boolean v0, p0, Lcom/twidroid/UberSocialProfile;->v:Z
if-eqz v0, :cond_5a
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->o:Landroid/view/MenuItem;
const v1, 0x7f0c030e
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;
:goto_1f
invoke-virtual {p0, v2}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
iget v0, p0, Lcom/twidroid/UberSocialProfile;->ac:I
const/4 v1, 0x1
if-eq v0, v1, :cond_33
iget v0, p0, Lcom/twidroid/UberSocialProfile;->ac:I
const/4 v1, 0x3
if-ne v0, v1, :cond_63
:cond_33
invoke-virtual {p0, v2}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
const v1, 0x7f0c030f
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
:goto_3f
invoke-virtual {p0, v2}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/twidroid/UberSocialProfile$25;
invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$25;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-boolean v0, p0, Lcom/twidroid/UberSocialProfile;->ae:Z
if-eqz v0, :cond_70
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ad:Landroid/view/MenuItem;
const v1, 0x7f0c0310
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;
:goto_59
return-void
:cond_5a
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->o:Landroid/view/MenuItem;
const v1, 0x7f0c0086
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;
goto :goto_1f
:cond_63
invoke-virtual {p0, v2}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
const v1, 0x7f0c0132
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
goto :goto_3f
:cond_70
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ad:Landroid/view/MenuItem;
const v1, 0x7f0c01e6
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;
goto :goto_59
:cond_79
invoke-virtual {p0, v2}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
goto :goto_59
.end method
.method static synthetic D(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method private D()V
.registers 7
const v5, 0x7f0901b8
const/4 v4, 0x1
const/high16 v1, -0x100
const/4 v3, -0x1
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
if-nez v0, :cond_c
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
const v0, 0x7f090180
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V
const v0, 0x7f090181
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V
const v0, 0x7f0900d9
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V
invoke-virtual {p0, v5}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
invoke-virtual {v0, v4}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setAddTabDelimiters(Z)V
invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setTextColor(I)V
invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setColorSelectedText(I)V
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f080033
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setBackgroundColor(I)V
invoke-virtual {v0, v3}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setHighlightPosition(I)V
const v1, 0x7f0901c9
invoke-virtual {p0, v1}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f08002a
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V
invoke-virtual {p0, v5}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
const/high16 v2, 0x4234
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v2
float-to-int v2, v2
iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setFadersBackgroundColor(I)V
goto :goto_b
.end method
.method static synthetic E(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method private E()V
.registers 2
new-instance v0, Lcom/twidroid/UberSocialProfile$27;
invoke-direct {v0, p0}, Lcom/twidroid/UberSocialProfile$27;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic F(Lcom/twidroid/UberSocialProfile;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ax:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic G(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic H(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic I(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic J(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic K(Lcom/twidroid/UberSocialProfile;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
return-object v0
.end method
.method static synthetic L(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic M(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic N(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic O(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic P(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic Q(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic R(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic S(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic T(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic U(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic V(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic W(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic X(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic Y(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic Z(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/UberSocialProfile;I)I
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/UberSocialProfile;->f(I)I
move-result v0
return v0
.end method
.method static synthetic a(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile;->at:Ljava/lang/String;
return-object p1
.end method
.method private a(Landroid/net/Uri;Ljava/lang/String;II)V
.registers 12
const/4 v6, 0x0
const/4 v4, 0x0
const/16 v0, 0x168
invoke-static {p0, p2, v0}, Lcom/twidroid/d/r;->a(Landroid/app/Activity;Ljava/lang/String;I)Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
if-eqz p3, :cond_13
const/16 v1, 0x5a
invoke-static {v0, v1}, Lcom/twidroid/d/r;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v0
:cond_13
invoke-static {p2}, Lcom/twidroid/ui/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
invoke-static {v0, v1, v2}, Lcom/twidroid/d/r;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_46
const/4 v5, 0x1
:goto_20
if-eqz v5, :cond_4a
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
const/4 v0, -0x1
if-eq p4, v0, :cond_48
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
int-to-long v1, p4
const/4 v3, 0x3
invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v3
move-object v4, p2
:goto_33
new-instance v0, Lcom/twidroid/activity/r;
move-object v1, p1
move-object v2, p2
invoke-direct/range {v0 .. v6}, Lcom/twidroid/activity/r;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)V
invoke-static {v0}, Lcom/twidroid/d/m;->a(Lcom/twidroid/activity/r;)V
new-instance v1, Lcom/twidroid/UberSocialProfile$15;
invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$15;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-direct {p0, v0, v1}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/activity/r;Landroid/os/Handler$Callback;)V
goto :goto_a
:cond_46
move v5, v6
goto :goto_20
:cond_48
move-object v3, v4
goto :goto_33
:cond_4a
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0a0037
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
invoke-static {v0, v2}, Lcom/ubermedia/b/l;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v3
if-eqz v3, :cond_60
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
move-object v4, v1
goto :goto_33
:cond_60
move-object v4, v1
move-object v3, v0
goto :goto_33
.end method
.method static synthetic a(Lcom/twidroid/UberSocialProfile;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->A()V
return-void
.end method
.method static synthetic a(Lcom/twidroid/UberSocialProfile;Landroid/net/Uri;Ljava/lang/String;II)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/twidroid/UberSocialProfile;->a(Landroid/net/Uri;Ljava/lang/String;II)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/UberSocialProfile;Lcom/twidroid/activity/r;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/activity/r;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/UberSocialProfile;Lcom/twidroid/model/twitter/User;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/UberSocialProfile;->b(Lcom/twidroid/model/twitter/User;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;Z)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/twidroid/activity/UberSocialBaseActivity;->a(Ljava/lang/String;Z)V
return-void
.end method
.method private a(Lcom/twidroid/activity/r;)V
.registers 4
if-eqz p1, :cond_1d
:try_start_2
invoke-virtual {p1}, Lcom/twidroid/activity/r;->k()Z
move-result v0
if-nez v0, :cond_1d
invoke-static {p1}, Lcom/twidroid/d/m;->a(Lcom/twidroid/activity/r;)V
new-instance v0, Ljava/io/File;
invoke-virtual {p1}, Lcom/twidroid/activity/r;->e()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_1d
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:goto_1d
:try_end_1d
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1e
:cond_1d
return-void
:catch_1e
move-exception v0
goto :goto_1d
.end method
.method private a(Lcom/twidroid/activity/r;Landroid/os/Handler$Callback;)V
.registers 11
const/4 v7, 0x0
const/4 v5, 0x1
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03002e
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
new-instance v0, Lcom/twidroid/c/f;
invoke-virtual {p1}, Lcom/twidroid/activity/r;->k()Z
move-result v1
if-nez v1, :cond_5c
move v4, v5
:goto_17
move-object v1, p0
move-object v3, p1
move v6, v5
invoke-direct/range {v0 .. v6}, Lcom/twidroid/c/f;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/twidroid/activity/r;ZZZ)V
invoke-direct {p0, v0}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/c/f;)V
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->t()Lcom/twidroid/c/f;
move-result-object v0
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lcom/twidroid/c/f;->setWidth(I)V
invoke-static {p0}, Lcom/twidroid/d/a;->c(Landroid/app/Activity;)[I
move-result-object v0
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->t()Lcom/twidroid/c/f;
move-result-object v1
aget v0, v0, v5
invoke-static {p0}, Lcom/twidroid/d/a;->b(Landroid/app/Activity;)I
move-result v2
sub-int/2addr v0, v2
invoke-virtual {v1, v0}, Lcom/twidroid/c/f;->setHeight(I)V
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->t()Lcom/twidroid/c/f;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/twidroid/c/f;->a(Landroid/os/Handler$Callback;)V
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->t()Lcom/twidroid/c/f;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v1
const v2, 0x1020002
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-static {p0}, Lcom/twidroid/d/a;->b(Landroid/app/Activity;)I
move-result v2
invoke-virtual {v0, v1, v5, v7, v2}, Lcom/twidroid/c/f;->showAtLocation(Landroid/view/View;III)V
return-void
:cond_5c
move v4, v7
goto :goto_17
.end method
.method private a(Lcom/twidroid/c/f;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile;->av:Lcom/twidroid/c/f;
return-void
.end method
.method private a(Ljava/util/ArrayList;)V
.registers 5
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
iget-boolean v1, p0, Lcom/twidroid/UberSocialProfile;->v:Z
if-eqz v1, :cond_33
const v1, 0x7f0c01cb
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
:goto_f
const v1, 0x7f0c002b
new-instance v2, Lcom/twidroid/UberSocialProfile$4;
invoke-direct {v2, p0, p1}, Lcom/twidroid/UberSocialProfile$4;-><init>(Lcom/twidroid/UberSocialProfile;Ljava/util/ArrayList;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
const v1, 0x7f0c002a
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
const v1, 0x7f0c00d0
invoke-virtual {p0, v1}, Lcom/twidroid/UberSocialProfile;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
return-void
:cond_33
const v1, 0x7f0c01c2
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
goto :goto_f
.end method
.method private a(Landroid/net/Uri;)Z
.registers 10
const/4 v6, 0x1
const/4 v3, 0x0
const/4 v7, 0x0
new-array v2, v6, [Ljava/lang/String;
const-string v0, "mime_type"
aput-object v0, v2, v7
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
move-object v1, p1
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_1c
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v1
if-eqz v1, :cond_1e
:cond_1c
move v0, v7
:goto_1d
return v0
:cond_1e
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
aget-object v1, v2, v7
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_2d
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
:cond_2d
if-eqz v3, :cond_3c
const-string v1, "image/"
invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3c
invoke-interface {v0}, Landroid/database/Cursor;->close()V
move v0, v6
goto :goto_1d
:cond_3c
invoke-interface {v0}, Landroid/database/Cursor;->close()V
move v0, v7
goto :goto_1d
.end method
.method static synthetic a(Lcom/twidroid/UberSocialProfile;Lcom/ubermedia/net/a/a/a;I)Z
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/twidroid/UberSocialProfile;->a(Lcom/ubermedia/net/a/a/a;I)Z
move-result v0
return v0
.end method
.method static synthetic a(Lcom/twidroid/UberSocialProfile;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/UberSocialProfile;->ae:Z
return p1
.end method
.method static synthetic aA(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic aB(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic aC(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic aD(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic aE(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic aF(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic aa(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic ab(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic ac(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic ad(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic ae(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic af(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic ag(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic ah(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic ai(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic aj(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic ak(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic al(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic am(Lcom/twidroid/UberSocialProfile;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->au:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic an(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic ao(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/ui/widgets/CachedImageView;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->as:Lcom/twidroid/ui/widgets/CachedImageView;
return-object v0
.end method
.method static synthetic ap(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic aq(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic ar(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic as(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic at(Lcom/twidroid/UberSocialProfile;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->Q:Landroid/widget/ProgressBar;
return-object v0
.end method
.method static synthetic au(Lcom/twidroid/UberSocialProfile;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->Q:Landroid/widget/ProgressBar;
return-object v0
.end method
.method static synthetic av(Lcom/twidroid/UberSocialProfile;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->Q:Landroid/widget/ProgressBar;
return-object v0
.end method
.method static synthetic aw(Lcom/twidroid/UberSocialProfile;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
return-object v0
.end method
.method static synthetic ax(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic ay(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic az(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic b(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile;->U:Ljava/lang/String;
return-object p1
.end method
.method static synthetic b(Lcom/twidroid/UberSocialProfile;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->u()V
return-void
.end method
.method private b(Lcom/twidroid/model/twitter/User;)V
.registers 6
const/4 v3, 0x1
const v0, 0x7f0901b9
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v4/view/ViewPager;
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->D:Landroid/support/v4/view/ViewPager;
new-instance v0, Lcom/twidroid/fragments/a/e;
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
iget-boolean v2, p0, Lcom/twidroid/UberSocialProfile;->w:Z
invoke-direct {v0, v1, p1, p0, v2}, Lcom/twidroid/fragments/a/e;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/twidroid/model/twitter/User;Landroid/content/Context;Z)V
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->ar:Lcom/twidroid/fragments/a/e;
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->D:Landroid/support/v4/view/ViewPager;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->ar:Lcom/twidroid/fragments/a/e;
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V
const v0, 0x7f0901b8
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->D:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setViewPager(Landroid/support/v4/view/ViewPager;)V
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->S()I
move-result v1
invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setHighlightColor(I)V
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->T()I
move-result v1
invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setSelectedColor(I)V
invoke-virtual {v0, v3}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setTabIndicatorLabelTextAllCaps(Z)V
invoke-virtual {v0, v3}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->settabLabelTextAllBold(Z)V
const/high16 v1, 0x4160
invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setTabLabelTextSize(F)V
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->E:Lcom/viewpagerindicator/a;
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->D:Landroid/support/v4/view/ViewPager;
const/4 v1, 0x0
invoke-virtual {v0, v3, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V
return-void
.end method
.method static synthetic b(Lcom/twidroid/UberSocialProfile;Lcom/ubermedia/net/a/a/a;I)Z
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/twidroid/UberSocialProfile;->a(Lcom/ubermedia/net/a/a/a;I)Z
move-result v0
return v0
.end method
.method static synthetic b(Lcom/twidroid/UberSocialProfile;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/UberSocialProfile;->ae:Z
return p1
.end method
.method static synthetic c(Lcom/twidroid/UberSocialProfile;)Landroid/view/MenuItem;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ad:Landroid/view/MenuItem;
return-object v0
.end method
.method static synthetic c(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile;->U:Ljava/lang/String;
return-object p1
.end method
.method private c(Landroid/content/Intent;)V
.registers 7
const/4 v2, 0x0
const/4 v4, 0x1
invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v0
if-eqz v0, :cond_4c
invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
:goto_1a
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
const-string v1, "//"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
:cond_38
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_72
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->finish()V
:goto_4b
return-void
:cond_4c
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_61
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
goto :goto_1a
:cond_61
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
goto :goto_1a
:cond_72
const-string v0, "EXTRA_ACCOUNT_ID"
invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/twidroid/UberSocialProfile;->e:I
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_93
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->h()V
:cond_93
iget v0, p0, Lcom/twidroid/UberSocialProfile;->e:I
const/4 v1, -0x1
if-le v0, v1, :cond_ea
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->i()Z
move-result v0
if-nez v0, :cond_ea
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
iget-object v2, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
iget v3, p0, Lcom/twidroid/UberSocialProfile;->e:I
invoke-virtual {v2, v3}, Lcom/twidroid/b/a/b;->b(I)I
move-result v2
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
:goto_c9
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
const-string v0, "EXTRA_USER"
invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_de
const-string v0, "EXTRA_USER"
invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
:cond_de
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
if-eqz v0, :cond_11e
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->u()V
invoke-virtual {p0, v4}, Lcom/twidroid/UberSocialProfile;->d(Z)V
goto/16 :goto_4b
:cond_ea
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
goto :goto_c9
:cond_11e
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/twidroid/UberSocialProfile;->i(Ljava/lang/String;)V
goto/16 :goto_4b
.end method
.method private c(Lcom/twidroid/model/twitter/User;)V
.registers 7
const/16 v2, 0x8
const/4 v1, 0x0
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->au:Landroid/widget/TextView;
iget-object v3, p1, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->H:Landroid/widget/TextView;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "@"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p1, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
new-instance v0, Lcom/twidroid/ah;
iget-object v3, p1, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-direct {v0, p0, v3}, Lcom/twidroid/ah;-><init>(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)V
iget-object v3, p0, Lcom/twidroid/UberSocialProfile;->au:Landroid/widget/TextView;
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v3, p0, Lcom/twidroid/UberSocialProfile;->H:Landroid/widget/TextView;
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f090187
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v3
iget-boolean v0, p1, Lcom/twidroid/model/twitter/User;->v:Z
if-eqz v0, :cond_53
move v0, v1
:goto_41
invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f090139
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-boolean v3, p1, Lcom/twidroid/model/twitter/User;->f:Z
if-eqz v3, :cond_55
:goto_4f
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
:cond_53
move v0, v2
goto :goto_41
:cond_55
move v1, v2
goto :goto_4f
.end method
.method static synthetic c(Lcom/twidroid/UberSocialProfile;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/UberSocialProfile;->T:Z
return p1
.end method
.method static synthetic d(Lcom/twidroid/UberSocialProfile;)Landroid/view/MenuItem;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ad:Landroid/view/MenuItem;
return-object v0
.end method
.method static synthetic d(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
return-object p1
.end method
.method static synthetic d(Lcom/twidroid/UberSocialProfile;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/UberSocialProfile;->T:Z
return p1
.end method
.method static synthetic e(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile;->U:Ljava/lang/String;
return-object p1
.end method
.method static synthetic e(Lcom/twidroid/UberSocialProfile;)V
.registers 1
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->s()V
return-void
.end method
.method static synthetic e(Lcom/twidroid/UberSocialProfile;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/UberSocialProfile;->T:Z
return p1
.end method
.method private f(I)I
.registers 3
packed-switch p1, :pswitch_data_c
const/4 v0, 0x1
:goto_4
return v0
:pswitch_5
const/4 v0, 0x0
goto :goto_4
:pswitch_7
const/4 v0, 0x3
goto :goto_4
:pswitch_9
const/4 v0, 0x2
goto :goto_4
nop
:pswitch_data_c
.packed-switch 0x1
:pswitch_5
:pswitch_7
:pswitch_9
.end packed-switch
.end method
.method static synthetic f(Lcom/twidroid/UberSocialProfile;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->E()V
return-void
.end method
.method static synthetic f(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/twidroid/UberSocialProfile;->d(Ljava/lang/String;)V
return-void
.end method
.method static synthetic f(Lcom/twidroid/UberSocialProfile;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/UberSocialProfile;->T:Z
return p1
.end method
.method static synthetic g(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic g(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile;->U:Ljava/lang/String;
return-object p1
.end method
.method static synthetic g(Lcom/twidroid/UberSocialProfile;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/UberSocialProfile;->T:Z
return p1
.end method
.method static synthetic h(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile;->U:Ljava/lang/String;
return-object p1
.end method
.method static synthetic h(Lcom/twidroid/UberSocialProfile;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->C()V
return-void
.end method
.method static synthetic h(Lcom/twidroid/UberSocialProfile;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/UberSocialProfile;->T:Z
return p1
.end method
.method static synthetic i(Lcom/twidroid/UberSocialProfile;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->y()V
return-void
.end method
.method static synthetic i(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/twidroid/UberSocialProfile;->d(Ljava/lang/String;)V
return-void
.end method
.method private i(Ljava/lang/String;)V
.registers 8
const/4 v2, 0x1
const/4 v5, 0x0
new-instance v0, Lcom/twidroid/net/d/a;
invoke-direct {v0}, Lcom/twidroid/net/d/a;-><init>()V
new-instance v1, Lcom/twidroid/UberSocialProfile$30;
invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$30;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-virtual {v0, v1}, Lcom/twidroid/net/d/a;->a(Lcom/twidroid/net/d/d;)V
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->z()V
iput-boolean v5, p0, Lcom/twidroid/UberSocialProfile;->w:Z
invoke-virtual {p0, v2}, Lcom/twidroid/UberSocialProfile;->e(Z)V
new-array v1, v2, [Lcom/twidroid/net/d/b;
new-instance v2, Lcom/twidroid/net/d/b;
iget-object v3, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
iget-object v4, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
invoke-direct {v2, v3, v4}, Lcom/twidroid/net/d/b;-><init>(Lcom/twidroid/UberSocialApplication;Ljava/lang/String;)V
aput-object v2, v1, v5
invoke-virtual {v0, v1}, Lcom/twidroid/net/d/a;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method
.method static synthetic i(Lcom/twidroid/UberSocialProfile;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/UberSocialProfile;->T:Z
return p1
.end method
.method static synthetic j(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile;->U:Ljava/lang/String;
return-object p1
.end method
.method static synthetic j(Lcom/twidroid/UberSocialProfile;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->B()V
return-void
.end method
.method static synthetic k(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic l(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic m(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic n(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic o(Lcom/twidroid/UberSocialProfile;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
return-object v0
.end method
.method static synthetic p(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->N:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic q(Lcom/twidroid/UberSocialProfile;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->aB:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic r(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic s(Lcom/twidroid/UberSocialProfile;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
return-object v0
.end method
.method private t()Lcom/twidroid/c/f;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->av:Lcom/twidroid/c/f;
return-object v0
.end method
.method static synthetic t(Lcom/twidroid/UberSocialProfile;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->aA:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic u(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method private u()V
.registers 7
const v5, 0x7f090185
const v4, 0x7f090184
const v2, 0x7f090183
const/16 v1, 0x8
const/4 v3, 0x0
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
invoke-direct {p0, v0}, Lcom/twidroid/UberSocialProfile;->c(Lcom/twidroid/model/twitter/User;)V
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->e()V
const v0, 0x7f090182
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-boolean v0, p0, Lcom/twidroid/UberSocialProfile;->w:Z
if-nez v0, :cond_61
invoke-virtual {p0, v2}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
invoke-virtual {p0, v4}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageButton;
invoke-virtual {p0, v5}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V
invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V
invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V
new-instance v2, Lcom/twidroid/UberSocialProfile$31;
invoke-direct {v2, p0}, Lcom/twidroid/UberSocialProfile$31;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v0, Lcom/twidroid/UberSocialProfile$32;
invoke-direct {v0, p0}, Lcom/twidroid/UberSocialProfile$32;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_4d
new-instance v0, Lcom/twidroid/z;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/twidroid/z;-><init>(Lcom/twidroid/UberSocialProfile$1;)V
new-instance v1, Lcom/twidroid/UberSocialProfile$33;
invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$33;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-virtual {v0, v1}, Lcom/twidroid/z;->a(Lcom/twidroid/aa;)V
new-array v1, v3, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/z;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
:cond_61
invoke-virtual {p0, v2}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v4}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v5}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_4d
.end method
.method static synthetic v(Lcom/twidroid/UberSocialProfile;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->az:Ljava/lang/Runnable;
return-object v0
.end method
.method private v()V
.registers 1
return-void
.end method
.method static synthetic w(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
return-object v0
.end method
.method private w()V
.registers 4
new-instance v0, Lcom/twidroid/net/c/a;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/d/v;->bh()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/twidroid/UberSocialProfile$10;
invoke-direct {v2, p0}, Lcom/twidroid/UberSocialProfile$10;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-direct {v0, p0, v1, v2}, Lcom/twidroid/net/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/c/c;)V
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->I:Lcom/twidroid/net/c/a;
return-void
.end method
.method static synthetic x(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->N:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method private x()Z
.registers 2
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->t()Lcom/twidroid/c/f;
move-result-object v0
if-eqz v0, :cond_1f
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->t()Lcom/twidroid/c/f;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/c/f;->a()V
:try_start_d
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->t()Lcom/twidroid/c/f;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/c/f;->dismiss()V
:goto_14
:try_end_14
.catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_1a
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/c/f;)V
const/4 v0, 0x1
:goto_19
return v0
:catch_1a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_14
:cond_1f
const/4 v0, 0x0
goto :goto_19
.end method
.method static synthetic y(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->N:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method private y()V
.registers 5
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_46
new-instance v0, Lcom/twidroid/UberSocialProfile$18;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
iget-object v1, v1, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;
const-string v2, "normal"
const-string v3, "bigger"
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "-48-"
const-string v3, "-96-"
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "bigger_"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
invoke-virtual {v3}, Lcom/twidroid/model/twitter/User;->c()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-direct {v0, p0, v1, v2, v3}, Lcom/twidroid/UberSocialProfile$18;-><init>(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
invoke-virtual {v0}, Lcom/twidroid/UberSocialProfile$18;->start()V
:cond_46
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
if-eqz v0, :cond_63
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->at:Ljava/lang/String;
if-eqz v0, :cond_63
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->at:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_63
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->as:Lcom/twidroid/ui/widgets/CachedImageView;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->at:Ljava/lang/String;
new-instance v2, Lcom/twidroid/UberSocialProfile$19;
invoke-direct {v2, p0}, Lcom/twidroid/UberSocialProfile$19;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/widgets/CachedImageView;->a(Ljava/lang/String;Lcom/twidroid/ui/widgets/d;)V
:goto_62
return-void
:cond_63
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/UberSocialProfile$20;
invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$20;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_62
.end method
.method static synthetic z(Lcom/twidroid/UberSocialProfile;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ay:Ljava/lang/Runnable;
return-object v0
.end method
.method private z()V
.registers 4
const/16 v2, 0x8
const v0, 0x7f090186
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
const v0, 0x7f090180
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v0, 0x7f090181
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v0, 0x7f090187
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f090139
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0900d9
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->z:Landroid/widget/TextView;
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->z:Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public a(IZ)V
.registers 4
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->D:Landroid/support/v4/view/ViewPager;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->D:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V
:cond_9
return-void
.end method
.method protected a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/activity/r;Lcom/twidroid/model/twitter/User;)V
.registers 8
new-instance v0, Lcom/twidroid/af;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/twidroid/af;-><init>(Lcom/twidroid/UberSocialProfile;Lcom/twidroid/UberSocialProfile$1;)V
const/4 v1, 0x1
new-array v1, v1, [Lcom/twidroid/ad;
const/4 v2, 0x0
new-instance v3, Lcom/twidroid/ad;
invoke-direct {v3, p0, p2, p3, p1}, Lcom/twidroid/ad;-><init>(Lcom/twidroid/UberSocialProfile;Lcom/twidroid/activity/r;Lcom/twidroid/model/twitter/User;Lcom/twidroid/model/twitter/c;)V
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/twidroid/af;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method
.method public a(Ljava/lang/Double;Ljava/lang/Double;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/UberSocialProfile$11;
invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$11;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/twidroid/UberSocialProfile$13;
invoke-direct {v1, p0, p1, p2}, Lcom/twidroid/UberSocialProfile$13;-><init>(Lcom/twidroid/UberSocialProfile;Ljava/lang/Double;Ljava/lang/Double;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 5
const-string v0, "com.twidroid.activity.UberSocialProfile"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Send Direct Message to "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->l()Lcom/twidroid/net/c/a/f;
move-result-object v1
invoke-static {p0, v0, v1}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/c/a/f;)V
return-void
.end method
.method public a(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/UberSocialProfile;->i(Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/lang/String;Lcom/twidroid/model/twitter/c;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
iget-object v0, v0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-super {p0, v0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->a(Ljava/lang/String;Lcom/twidroid/model/twitter/c;)V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->b()Lcom/twidroid/ui/themes/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/themes/a/b;->f()V
new-instance v0, Lcom/twidroid/UberSocialProfile$5;
invoke-direct {v0, p0}, Lcom/twidroid/UberSocialProfile$5;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->runOnUiThread(Ljava/lang/Runnable;)V
new-instance v0, Lcom/twidroid/UberSocialProfile$6;
invoke-direct {v0, p0}, Lcom/twidroid/UberSocialProfile$6;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method public a(Ljava/lang/String;Z)V
.registers 5
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->b()Lcom/twidroid/ui/themes/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/themes/a/b;->f()V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x1
if-le v0, v1, :cond_23
new-instance v0, Lcom/twidroid/UberSocialProfile$7;
invoke-direct {v0, p0, p2}, Lcom/twidroid/UberSocialProfile$7;-><init>(Lcom/twidroid/UberSocialProfile;Z)V
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->runOnUiThread(Ljava/lang/Runnable;)V
:goto_22
return-void
:cond_23
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->ax:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_22
.end method
.method public b(Ljava/lang/String;)V
.registers 4
const v0, 0x7f0c0178
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v0
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->e(Z)V
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/twidroid/UberSocialProfile$16;
invoke-direct {v1, p0, p1}, Lcom/twidroid/UberSocialProfile$16;-><init>(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method
.method public c(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/UberSocialProfile$22;
invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$22;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->e(Z)V
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/twidroid/UberSocialProfile$24;
invoke-direct {v1, p0, p1}, Lcom/twidroid/UberSocialProfile$24;-><init>(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method
.method public d(Z)V
.registers 4
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->C()V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ar:Lcom/twidroid/fragments/a/e;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ar:Lcom/twidroid/fragments/a/e;
invoke-virtual {v0}, Lcom/twidroid/fragments/a/e;->getCount()I
move-result v0
if-lez v0, :cond_1d
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ar:Lcom/twidroid/fragments/a/e;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/a/e;->getItem(I)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/d/a;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/d/a;->b(Lcom/twidroid/model/twitter/User;)V
:cond_1d
return-void
.end method
.method public e()V
.registers 7
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_e
:cond_e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_69
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
const-string v2, "com.twidroid.activity.UberSocialProfile"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " user_id: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " show user_id: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
iget-wide v4, v4, Lcom/twidroid/model/twitter/User;->b:J
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v2
iget-object v4, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
iget-wide v4, v4, Lcom/twidroid/model/twitter/User;->b:J
cmp-long v2, v2, v4
if-nez v2, :cond_e
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/twidroid/UberSocialProfile;->w:Z
iget-object v2, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
invoke-virtual {v2, v0}, Lcom/twidroid/b/a/b;->h(I)Lcom/twidroid/model/twitter/c;
goto :goto_e
:cond_69
const-string v0, "com.twidroid.activity.UberSocialProfile"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, ">>>>Is this my account? "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-boolean v2, p0, Lcom/twidroid/UberSocialProfile;->w:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected e(Z)V
.registers 3
new-instance v0, Lcom/twidroid/UberSocialProfile$26;
invoke-direct {v0, p0, p1}, Lcom/twidroid/UberSocialProfile$26;-><init>(Lcom/twidroid/UberSocialProfile;Z)V
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method public f()V
.registers 2
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->a(Ljava/lang/String;)V
return-void
.end method
.method public g()V
.registers 9
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "@"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->ab:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-wide/16 v2, -0x1
iget v4, p0, Lcom/twidroid/UberSocialProfile;->e:I
const/4 v5, -0x1
const/4 v6, 0x0
const-string v7, ""
move-object v0, p0
invoke-static/range {v0 .. v7}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;Ljava/lang/String;)V
goto :goto_4
.end method
.method  h()V
.registers 4
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.GET_CONTENT"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
const-string v2, "Kindle Fire"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_21
const-string v1, "image/*"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
:goto_16
const/4 v1, 0x0
invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
move-result-object v0
const/16 v1, 0x54
invoke-virtual {p0, v0, v1}, Lcom/twidroid/UberSocialProfile;->startActivityForResult(Landroid/content/Intent;I)V
return-void
:cond_21
const-string v1, "application/ubersocial-plugin.get.photo"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
goto :goto_16
.end method
.method public i()V
.registers 3
const v0, 0x7f0c0156
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->d(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->u:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/twidroid/UberSocialProfile$17;
invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$17;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method
.method  j()V
.registers 5
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->X:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/UberSocialProfile$21;
invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$21;-><init>(Lcom/twidroid/UberSocialProfile;)V
const-wide/16 v2, 0x7d0
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method public k()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/UberSocialProfile;->w:Z
return v0
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 8
const/16 v0, 0x54
if-ne p1, v0, :cond_55
const/4 v0, -0x1
if-ne p2, v0, :cond_55
:try_start_7
invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v0
if-eqz v0, :cond_56
invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v1
const-string v2, "content"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_56
const-string v1, "com.twidroid.activity.UberSocialProfile"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Got Filename + "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x4
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
const-string v3, "_data"
aput-object v3, v1, v2
const/4 v2, 0x1
const-string v3, "mime_type"
aput-object v3, v1, v2
const/4 v2, 0x2
const-string v3, "_id"
aput-object v3, v1, v2
const/4 v2, 0x3
const-string v3, "orientation"
aput-object v3, v1, v2
const/4 v2, 0x0
new-instance v3, Lcom/twidroid/UberSocialProfile$14;
invoke-direct {v3, p0}, Lcom/twidroid/UberSocialProfile$14;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-static {v0, v1, v2, p0, v3}, Lcom/ubermedia/b/i;->a(Landroid/net/Uri;[Ljava/lang/String;ZLandroid/content/Context;Lcom/ubermedia/b/k;)V
:goto_55
:cond_55
return-void
:cond_56
const v0, 0x7f0c0037
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->U:Ljava/lang/String;
const/4 v0, 0x1
invoke-static {p0, v0}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
:try_end_67
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_67} :catch_68
goto :goto_55
:catch_68
move-exception v0
const-string v1, "com.twidroid.activity.UberSocialProfile"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "uploading photo extension "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_55
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/twidroid/UberSocialProfile; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->onCreate(Landroid/os/Bundle;)V
const/high16 v0, 0x4240
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v0, v1
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
div-int/lit8 v0, v0, 0x8
const v0, 0x7f030074
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->setContentView(I)V
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
const v1, 0x7f0c01bf
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->a()Landroid/support/v7/app/ActionBar;
move-result-object v2
const/4 v3, 0x1
invoke-static {v0, p0, v1, v2, v3}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V
const v0, 0x7f0900f7
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->Q:Landroid/widget/ProgressBar;
const v0, 0x7f09007b
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->R:Landroid/widget/TextView;
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->j()Lcom/twidroid/ui/c/g;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->F:Lcom/twidroid/ui/c/g;
const v0, 0x7f09017e
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/widgets/CachedImageView;
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->as:Lcom/twidroid/ui/widgets/CachedImageView;
const v0, 0x7f090180
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->au:Landroid/widget/TextView;
const v0, 0x7f090181
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->H:Landroid/widget/TextView;
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->v()V
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->D()V
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/UberSocialProfile;->c(Landroid/content/Intent;)V
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/twidroid/UberSocialProfile;->b(Lcom/twidroid/model/twitter/User;)V
const-string v0, "viewed profile"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
const-string v1, " - Lcom/twidroid/UberSocialProfile; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 5
const-string v0, "com.twidroid.activity.UberSocialProfile"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "TwidroydProfile.onCreateDialog: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;
move-result-object v0
if-eqz v0, :cond_1f
:goto_1e
return-object v0
:cond_1f
packed-switch p1, :pswitch_data_36
:pswitch_22
const/4 v0, 0x0
goto :goto_1e
:pswitch_24
new-instance v0, Lcom/twidroid/ac;
invoke-direct {v0, p0, p0}, Lcom/twidroid/ac;-><init>(Lcom/twidroid/UberSocialProfile;Landroid/content/Context;)V
goto :goto_1e
:pswitch_2a
new-instance v0, Lcom/twidroid/UberSocialProfile$8;
invoke-direct {v0, p0, p0}, Lcom/twidroid/UberSocialProfile$8;-><init>(Lcom/twidroid/UberSocialProfile;Landroid/app/Activity;)V
goto :goto_1e
:pswitch_30
new-instance v0, Lcom/twidroid/UberSocialProfile$9;
invoke-direct {v0, p0, p0}, Lcom/twidroid/UberSocialProfile$9;-><init>(Lcom/twidroid/UberSocialProfile;Landroid/app/Activity;)V
goto :goto_1e
:pswitch_data_36
.packed-switch 0x2c0
:pswitch_2a
:pswitch_30
:pswitch_22
:pswitch_24
.end packed-switch
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/UberSocialProfile; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
const-string v0, "com.twidroid.activity.UberSocialProfile"
const-string v1, "::onCreateOptionsMenu"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/twidroid/UberSocialProfile; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
const/4 v0, 0x4
if-ne p1, v0, :cond_b
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->x()Z
move-result v0
if-eqz v0, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
invoke-super {p0, p1, p2}, Lcom/twidroid/activity/UberSocialBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_a
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/UberSocialProfile; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
iget-object v1, p0, Lcom/twidroid/UberSocialProfile;->N:Lcom/twidroid/b/a/b;
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v1
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v2
sparse-switch v2, :sswitch_data_c2
:goto_e
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
:goto_12
move v2, v0
const-string v1, " - Lcom/twidroid/UberSocialProfile; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:sswitch_13
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/model/twitter/User;)V
goto :goto_e
:sswitch_19
invoke-direct {p0, v1}, Lcom/twidroid/UberSocialProfile;->a(Ljava/util/ArrayList;)V
goto :goto_e
:sswitch_1d
iget-boolean v0, p0, Lcom/twidroid/UberSocialProfile;->ae:Z
if-eqz v0, :cond_2a
new-instance v0, Lcom/twidroid/UberSocialProfile$2;
invoke-direct {v0, p0}, Lcom/twidroid/UberSocialProfile$2;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->runOnUiThread(Ljava/lang/Runnable;)V
goto :goto_e
:cond_2a
new-instance v0, Lcom/twidroid/UberSocialProfile$3;
invoke-direct {v0, p0}, Lcom/twidroid/UberSocialProfile$3;-><init>(Lcom/twidroid/UberSocialProfile;)V
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->runOnUiThread(Ljava/lang/Runnable;)V
goto :goto_e
:sswitch_33
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
const/4 v1, 0x0
iput-object v1, v0, Lcom/twidroid/model/twitter/User;->t:Lcom/twidroid/model/twitter/Tweet;
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "EXTRA_USER"
iget-object v2, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
move-result-object v0
const-string v1, "ubersocial.broadcast.uberbar.adduser"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->sendBroadcast(Landroid/content/Intent;)V
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/twidroid/TwidroidClient;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x400
invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->finish()V
goto :goto_e
:sswitch_61
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->i()V
goto :goto_12
:sswitch_65
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->h()V
goto :goto_12
:sswitch_69
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->r_()V
goto :goto_12
:sswitch_6d
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->f()V
goto :goto_12
:sswitch_71
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->g()V
goto :goto_e
:sswitch_75
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->e(Z)V
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->w()V
goto :goto_12
:sswitch_7c
new-instance v1, Lcom/twidroid/fragments/b/c;
invoke-direct {v1}, Lcom/twidroid/fragments/b/c;-><init>()V
iget-object v2, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
invoke-virtual {v1, v2, p0}, Lcom/twidroid/fragments/b/c;->a(Lcom/twidroid/model/twitter/User;Lcom/twidroid/fragments/b/d;)V
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v2
const-string v3, "locationdialogfragment"
invoke-virtual {v1, v2, v3}, Lcom/twidroid/fragments/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
goto :goto_12
:sswitch_90
new-instance v1, Lcom/twidroid/fragments/b/a;
invoke-direct {v1}, Lcom/twidroid/fragments/b/a;-><init>()V
iget-object v2, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
invoke-virtual {v1, v2, p0}, Lcom/twidroid/fragments/b/a;->a(Lcom/twidroid/model/twitter/User;Lcom/twidroid/fragments/b/b;)V
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v2
const-string v3, "bioupdatefragmentdialog"
invoke-virtual {v1, v2, v3}, Lcom/twidroid/fragments/b/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
goto/16 :goto_12
:sswitch_a5
new-instance v1, Lcom/twidroid/fragments/b/e;
invoke-direct {v1}, Lcom/twidroid/fragments/b/e;-><init>()V
iget-object v2, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
invoke-virtual {v1, v2, p0}, Lcom/twidroid/fragments/b/e;->a(Lcom/twidroid/model/twitter/User;Lcom/twidroid/fragments/b/f;)V
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v2
const-string v3, "websitedialogfragment"
invoke-virtual {v1, v2, v3}, Lcom/twidroid/fragments/b/e;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
goto/16 :goto_12
:sswitch_ba
const/16 v1, 0x2c0
invoke-static {p0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
goto/16 :goto_12
nop
:sswitch_data_c2
.sparse-switch
0x2 -> :sswitch_65
0x7 -> :sswitch_6d
0x8 -> :sswitch_75
0x9 -> :sswitch_7c
0xa -> :sswitch_90
0xb -> :sswitch_a5
0xd -> :sswitch_ba
0x11 -> :sswitch_71
0x3d -> :sswitch_69
0x3f -> :sswitch_61
0x41 -> :sswitch_33
0x7f0c0086 -> :sswitch_19
0x7f0c01e6 -> :sswitch_1d
0x7f0c030f -> :sswitch_13
.end sparse-switch
.end method
.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
.registers 9
const/4 v6, 0x0
const/4 v5, -0x1
const/4 v4, 0x3
const/4 v2, 0x2
const/4 v3, 0x1
const-string v0, "com.twidroid.activity.UberSocialProfile"
const-string v1, "::onPrepareOptionsMenu"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/Menu;->clear()V
iget-boolean v0, p0, Lcom/twidroid/UberSocialProfile;->w:Z
if-nez v0, :cond_36
const v0, 0x7f0c01e6
const-string v1, ""
invoke-interface {p1, v5, v0, v6, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->ad:Landroid/view/MenuItem;
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->ad:Landroid/view/MenuItem;
invoke-static {v0, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V
const v0, 0x7f0c0086
const-string v1, ""
invoke-interface {p1, v5, v0, v6, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/UberSocialProfile;->o:Landroid/view/MenuItem;
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->o:Landroid/view/MenuItem;
invoke-static {v0, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V
invoke-direct {p0}, Lcom/twidroid/UberSocialProfile;->C()V
:cond_36
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
if-nez v0, :cond_3f
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
move-result v0
:goto_3e
return v0
:cond_3f
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->i()Z
move-result v0
if-nez v0, :cond_f8
iget-boolean v0, p0, Lcom/twidroid/UberSocialProfile;->w:Z
if-eqz v0, :cond_fe
const v0, 0x7f0c01c8
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020169
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/16 v0, 0x8
const v1, 0x7f0c01c7
invoke-virtual {p0, v1}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020162
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/16 v0, 0x9
const v1, 0x7f0c01c4
invoke-virtual {p0, v1}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020168
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/16 v0, 0xa
const v1, 0x7f0c01c3
invoke-virtual {p0, v1}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020167
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const/16 v0, 0xb
const v1, 0x7f0c01c5
invoke-virtual {p0, v1}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f02016a
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
:goto_a8
:cond_a8
iget-boolean v0, p0, Lcom/twidroid/UberSocialProfile;->w:Z
if-eqz v0, :cond_d0
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-le v0, v3, :cond_d0
const/16 v0, 0xd
const/4 v1, 0x6
const v2, 0x7f0c01c9
invoke-virtual {p0, v2}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f02015c
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
:cond_d0
iget-object v0, p0, Lcom/twidroid/UberSocialProfile;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->e()Z
move-result v0
if-eqz v0, :cond_f8
const/16 v0, 0x3f
const/4 v1, 0x6
const v2, 0x7f0c01c1
invoke-virtual {p0, v2}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020163
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
:cond_f8
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
move-result v0
goto/16 :goto_3e
:cond_fe
iget-boolean v0, p0, Lcom/twidroid/UberSocialProfile;->G:Z
if-eqz v0, :cond_a8
const/16 v0, 0x41
const/4 v1, 0x5
const v2, 0x7f0c0021
invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x1080033
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
goto :goto_a8
.end method
.method public onResume()V
.registers 4
const-string v1, " + Lcom/twidroid/UberSocialProfile; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;->onResume()V
const-string v0, "com.twidroid.activity.UberSocialProfile"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Resume: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile;->getIntent()Landroid/content/Intent;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/twidroid/UberSocialProfile; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/twidroid/UberSocialProfile; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;->onStart()V
sget-object v0, Lcom/twidroid/y;->s:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/twidroid/net/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)V
const-string v1, " - Lcom/twidroid/UberSocialProfile; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStop()V
.registers 3
const-string v1, " + Lcom/twidroid/UberSocialProfile; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;->onStop()V
invoke-static {p0}, Lcom/twidroid/net/a/a;->a(Landroid/content/Context;)V
const-string v1, " - Lcom/twidroid/UberSocialProfile; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public r_()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/UberSocialProfile;->d(Z)V
return-void
.end method