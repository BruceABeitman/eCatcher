.class public Lcom/spotify/mobile/android/service/flow/login/StartFragment;
.super Lcom/spotify/mobile/android/service/flow/login/o;
.source "SourceFile"


# instance fields
.field private Y:Lcom/spotify/mobile/android/util/dw;

.field private Z:Landroid/os/Handler;

.field private a:Landroid/widget/ImageView;

.field private aa:Landroid/widget/VideoView;

.field private ab:F

.field private ac:Z

.field private ad:Z

.field private ae:Landroid/view/View;

.field private af:Landroid/view/View$OnTouchListener;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:I

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/o;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->ac:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->ad:Z

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment$2;-><init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->af:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method private F()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->Z:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->Z:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/StartFragment;F)F
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->ab:F

    return p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/StartFragment;I)I
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->g:I

    return p1
.end method

.method public static a(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/StartFragment;
    .registers 2

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-direct {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/flow/a;->a(Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method

.method public static a(Lcom/spotify/mobile/android/service/flow/logic/d;Z)Lcom/spotify/mobile/android/service/flow/login/StartFragment;
    .registers 5

    invoke-static {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "isAnonymousSignUp"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->c_(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(ILandroid/view/View;)V
    .registers 8

    const v1, 0x7f0f0382

    const v0, 0x7f0f0380

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_7c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "View at postion "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not defined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    move v2, v1

    move v3, v0

    :goto_24
    const v0, 0x7f0a0259

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a01fc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :pswitch_40
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->h()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_55

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->h()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "laterButtonForAnonymousUserTest"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_55

    const v0, 0x7f0f0381

    :cond_55
    move v2, v1

    move v3, v0

    goto :goto_24

    :pswitch_58
    const v1, 0x7f0f037e

    const v0, 0x7f0f037f

    move v2, v0

    move v3, v1

    goto :goto_24

    :pswitch_61
    const v1, 0x7f0f0385

    const v0, 0x7f0f0386

    move v2, v0

    move v3, v1

    goto :goto_24

    :pswitch_6a
    const v1, 0x7f0f0387

    const v0, 0x7f0f0388

    move v2, v0

    move v3, v1

    goto :goto_24

    :pswitch_73
    const v1, 0x7f0f0383

    const v0, 0x7f0f0384

    move v2, v0

    move v3, v1

    goto :goto_24

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_40
        :pswitch_58
        :pswitch_61
        :pswitch_6a
        :pswitch_73
    .end packed-switch
.end method

.method private a(ILcom/spotify/mobile/android/service/flow/login/StartFragment$Direction;)V
    .registers 6

    sget-object v0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$Direction;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment$Direction;

    if-ne p2, v0, :cond_2f

    const v0, 0x7f040007

    :goto_7
    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->f(I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$9;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment$9;-><init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;I)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Landroid/view/animation/Animation;)V

    sget-object v0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$Direction;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment$Direction;

    if-ne p2, v0, :cond_33

    const v0, 0x7f04000c

    :goto_1d
    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->f(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->d:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_2f
    const v0, 0x7f040008

    goto :goto_7

    :cond_33
    const v0, 0x7f04000b

    goto :goto_1d
.end method

.method private static a(Landroid/view/animation/Animation;)V
    .registers 3

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->aa:Landroid/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->ac:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->h(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/StartFragment;ILandroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/StartFragment;Lcom/spotify/mobile/android/service/flow/logic/f;)V
    .registers 4

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/flow/logic/f;->G()Lcom/spotify/mobile/android/util/ce;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ce;->b()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->D()Lcom/spotify/mobile/android/service/flow/login/w;

    move-result-object v1

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ce;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/w;->a(Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->D()Lcom/spotify/mobile/android/service/flow/login/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/w;->b()V

    goto :goto_17
.end method

.method public static b(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/StartFragment;
    .registers 5

    invoke-static {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "laterButtonForAnonymousUserTest"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->c_(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->D()Lcom/spotify/mobile/android/service/flow/login/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/w;->a()V

    return-void
.end method

.method static synthetic c(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(I)I
    .registers 2

    invoke-static {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->h(I)I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->Z:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method private e(I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput p1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->i:I

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->w()Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0a02d9

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez p1, :cond_4c

    move v0, v1

    :goto_12
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f0a02da

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-ne p1, v1, :cond_4e

    move v0, v1

    :goto_1f
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f0a02db

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_50

    move v0, v1

    :goto_2d
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f0a02dc

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_52

    move v0, v1

    :goto_3b
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f0a02dd

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x4

    if-ne p1, v3, :cond_54

    :goto_48
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_4c
    move v0, v2

    goto :goto_12

    :cond_4e
    move v0, v2

    goto :goto_1f

    :cond_50
    move v0, v2

    goto :goto_2d

    :cond_52
    move v0, v2

    goto :goto_3b

    :cond_54
    move v1, v2

    goto :goto_48
.end method

.method private f(I)Landroid/view/animation/Animation;
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->h:Z

    return v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)F
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->ab:F

    return v0
.end method

.method private g(I)V
    .registers 5

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->ac:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->b:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->h(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/StartFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment$10;-><init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4
.end method

.method private static h(I)I
    .registers 4

    const v0, 0x7f02006e

    packed-switch p0, :pswitch_data_30

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View at postion "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :goto_1e
    :pswitch_1e
    return v0

    :pswitch_1f
    const v0, 0x7f02006d

    goto :goto_1e

    :pswitch_23
    const v0, 0x7f020070

    goto :goto_1e

    :pswitch_27
    const v0, 0x7f020071

    goto :goto_1e

    :pswitch_2b
    const v0, 0x7f02006f

    goto :goto_1e

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
    .end packed-switch
.end method

.method static synthetic h(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->g:I

    return v0
.end method

.method static synthetic i(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->h:Z

    return v0
.end method

.method static synthetic j(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V
    .registers 3

    iget v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->i:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->d:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(ILandroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->g(I)V

    sget-object v1, Lcom/spotify/mobile/android/service/flow/login/StartFragment$Direction;->b:Lcom/spotify/mobile/android/service/flow/login/StartFragment$Direction;

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(ILcom/spotify/mobile/android/service/flow/login/StartFragment$Direction;)V

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->e(I)V

    return-void
.end method

.method static synthetic k(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V
    .registers 3

    iget v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->i:I

    if-nez v0, :cond_16

    const/4 v0, 0x4

    :goto_5
    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->d:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(ILandroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->g(I)V

    sget-object v1, Lcom/spotify/mobile/android/service/flow/login/StartFragment$Direction;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment$Direction;

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(ILcom/spotify/mobile/android/service/flow/login/StartFragment$Direction;)V

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->e(I)V

    return-void

    :cond_16
    iget v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->i:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_5
.end method

.method static synthetic l(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->F()V

    return-void
.end method


# virtual methods
.method public final D()Lcom/spotify/mobile/android/service/flow/login/w;
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/a;->q_()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/d;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->a(Lcom/spotify/mobile/android/service/flow/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/login/w;

    return-object v0
.end method

.method public final E()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->h:Z

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->h()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_e4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "laterButtonForAnonymousUserTest"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e4

    const v0, 0x7f03007a

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0243

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/spotify/mobile/android/service/flow/login/StartFragment$1;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment$1;-><init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2b
    const v0, 0x7f0a02de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->e:Landroid/widget/Button;

    const v0, 0x7f0a02d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->f:Landroid/widget/Button;

    const v0, 0x7f0a02df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->ae:Landroid/view/View;

    const v0, 0x7f0a02d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a02d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a02d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->c:Landroid/view/View;

    const v0, 0x7f0a02d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->d:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a02d1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->aa:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->aa:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v2, Lcom/spotify/mobile/android/service/flow/login/StartFragment$3;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment$3;-><init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "android.resource://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/2131099648"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->aa:Landroid/widget/VideoView;

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->aa:Landroid/widget/VideoView;

    new-instance v2, Lcom/spotify/mobile/android/service/flow/login/StartFragment$4;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment$4;-><init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->aa:Landroid/widget/VideoView;

    new-instance v2, Lcom/spotify/mobile/android/service/flow/login/StartFragment$5;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment$5;-><init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->af:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/x;

    invoke-direct {v0, p0, v3}, Lcom/spotify/mobile/android/service/flow/login/x;-><init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;B)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->Z:Landroid/os/Handler;

    const-class v0, Lcom/spotify/mobile/android/service/flow/login/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/login/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/service/flow/login/g;->a(Lcom/spotify/mobile/android/service/flow/login/k;)V

    return-object v1

    :cond_e4
    const v0, 0x7f03007b

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2b
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->W:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->Y:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->h()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isAnonymousSignUp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->ad:Z

    :cond_22
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->e:Landroid/widget/Button;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/StartFragment$6;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment$6;-><init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/a;->q_()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/d;

    check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->f:Landroid/widget/Button;

    new-instance v2, Lcom/spotify/mobile/android/service/flow/login/StartFragment$7;

    invoke-direct {v2, p0, v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment$7;-><init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;Lcom/spotify/mobile/android/service/flow/logic/f;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->c:Landroid/view/View;

    invoke-direct {p0, v3, v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(ILandroid/view/View;)V

    invoke-direct {p0, v3}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->e(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->c:Landroid/view/View;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/StartFragment$8;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment$8;-><init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/flow/login/p;)V
    .registers 4

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->ae:Landroid/view/View;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/flow/login/p;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->ad:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->D()Lcom/spotify/mobile/android/service/flow/login/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/w;->d()V

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final f()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->aa:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->f()V

    return-void
.end method

.method public final x()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->x()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->Y:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->F()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->aa:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method public final y()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->aa:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->Y:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    return-void
.end method
