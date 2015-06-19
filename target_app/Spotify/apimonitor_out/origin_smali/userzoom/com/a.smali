.class public final Luserzoom/com/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static e:Luserzoom/com/a;


# instance fields
.field public b:Ljava/util/ArrayList;

.field c:Ljava/util/ArrayList;

.field public d:Lcom/userzoom/ar;

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/userzoom/ak;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Lcom/userzoom/al;

.field private r:Luserzoom/com/UzEventsFeatureService;

.field private s:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "cdn4.userzoom.com"

    sput-object v0, Luserzoom/com/a;->a:Ljava/lang/String;

    new-instance v0, Luserzoom/com/a;

    invoke-direct {v0}, Luserzoom/com/a;-><init>()V

    sput-object v0, Luserzoom/com/a;->e:Luserzoom/com/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Luserzoom/com/a;->f:Landroid/content/Context;

    iput-boolean v1, p0, Luserzoom/com/a;->g:Z

    iput-boolean v1, p0, Luserzoom/com/a;->h:Z

    iput-boolean v1, p0, Luserzoom/com/a;->i:Z

    iput-boolean v1, p0, Luserzoom/com/a;->j:Z

    const-string v0, ""

    iput-object v0, p0, Luserzoom/com/a;->m:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Luserzoom/com/a;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Luserzoom/com/a;->c:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Luserzoom/com/a;->n:Ljava/lang/String;

    iput-boolean v1, p0, Luserzoom/com/a;->o:Z

    iput-boolean v1, p0, Luserzoom/com/a;->p:Z

    new-instance v0, Lcom/userzoom/bq;

    invoke-direct {v0, p0}, Lcom/userzoom/bq;-><init>(Luserzoom/com/a;)V

    iput-object v0, p0, Luserzoom/com/a;->s:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static synthetic a(Luserzoom/com/a;Luserzoom/com/UzEventsFeatureService;)Luserzoom/com/UzEventsFeatureService;
    .registers 2

    iput-object p1, p0, Luserzoom/com/a;->r:Luserzoom/com/UzEventsFeatureService;

    return-object p1
.end method

.method public static a()Luserzoom/com/a;
    .registers 1

    sget-object v0, Luserzoom/com/a;->e:Luserzoom/com/a;

    return-object v0
.end method

.method public static synthetic a(Luserzoom/com/a;)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Luserzoom/com/a;->h:Z

    if-nez v2, :cond_c1

    const-string v2, "UzLibInstance"

    const-string v3, "Closed App! Processing postSurvey popUp"

    invoke-static {v2, v3}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Luserzoom/com/a;->g()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {p0}, Luserzoom/com/a;->e()V

    iput-boolean v1, p0, Luserzoom/com/a;->h:Z

    :cond_18
    iget-boolean v2, p0, Luserzoom/com/a;->l:Z

    if-nez v2, :cond_c1

    invoke-direct {p0}, Luserzoom/com/a;->g()Z

    move-result v2

    if-eqz v2, :cond_c1

    iget-object v2, p0, Luserzoom/com/a;->n:Ljava/lang/String;

    if-eqz v2, :cond_c1

    iget-object v2, p0, Luserzoom/com/a;->n:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c1

    iget-object v2, p0, Luserzoom/com/a;->d:Lcom/userzoom/ar;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Luserzoom/com/a;->d:Lcom/userzoom/ar;

    iget-object v2, v2, Lcom/userzoom/ar;->a:Lcom/userzoom/ax;

    if-nez v2, :cond_c2

    :cond_3a
    :goto_3a
    if-eqz v0, :cond_c1

    const-string v0, "notification"

    iget-object v2, p0, Luserzoom/com/a;->f:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v2, p0, Luserzoom/com/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Luserzoom/com/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-direct {p0}, Luserzoom/com/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v2, p0, Luserzoom/com/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Luserzoom/com/a;->f:Landroid/content/Context;

    iget-object v4, p0, Luserzoom/com/a;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Luserzoom/com/a;->h()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Luserzoom/com/a;->f:Landroid/content/Context;

    const-class v8, Luserzoom/com/UzSurveyActivity;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "HIDE_HOST"

    iget-object v8, p0, Luserzoom/com/a;->d:Lcom/userzoom/ar;

    iget-object v8, v8, Lcom/userzoom/ar;->a:Lcom/userzoom/ax;

    iget-boolean v8, v8, Lcom/userzoom/ax;->f:Z

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "MY_URL"

    iget-object v8, p0, Luserzoom/com/a;->n:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x1000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Luserzoom/com/a;->f:Landroid/content/Context;

    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    const v9, 0x186a0

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    const/high16 v9, 0x800

    invoke-static {v7, v8, v5, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v2, 0x18

    iput v2, v6, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Luserzoom/com/a;->n:Ljava/lang/String;

    const/16 v3, 0x43b9

    invoke-virtual {v0, v2, v3, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    invoke-virtual {p0}, Luserzoom/com/a;->e()V

    iput-boolean v1, p0, Luserzoom/com/a;->l:Z

    iput-boolean v1, p0, Luserzoom/com/a;->h:Z

    :cond_c1
    return-void

    :cond_c2
    iget-object v2, p0, Luserzoom/com/a;->d:Lcom/userzoom/ar;

    iget-object v2, v2, Lcom/userzoom/ar;->a:Lcom/userzoom/ax;

    iget v2, v2, Lcom/userzoom/ax;->d:I

    if-lez v2, :cond_d4

    move v2, v1

    :goto_cb
    if-eqz v2, :cond_d1

    iget-boolean v2, p0, Luserzoom/com/a;->p:Z

    if-eqz v2, :cond_3a

    :cond_d1
    move v0, v1

    goto/16 :goto_3a

    :cond_d4
    move v2, v0

    goto :goto_cb
.end method

.method private g()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Luserzoom/com/a;->d:Lcom/userzoom/ar;

    if-eqz v1, :cond_b

    iget-object v1, p0, Luserzoom/com/a;->d:Lcom/userzoom/ar;

    iget-object v1, v1, Lcom/userzoom/ar;->a:Lcom/userzoom/ax;

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Luserzoom/com/a;->d:Lcom/userzoom/ar;

    iget-object v1, v1, Lcom/userzoom/ar;->a:Lcom/userzoom/ax;

    iget v1, v1, Lcom/userzoom/ax;->e:I

    if-lez v1, :cond_b

    const/4 v0, 0x1

    goto :goto_b
.end method

.method private h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Luserzoom/com/a;->d:Lcom/userzoom/ar;

    iget-object v0, v0, Lcom/userzoom/ar;->a:Lcom/userzoom/ax;

    iget-object v0, v0, Lcom/userzoom/ax;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;)Landroid/view/ViewGroup;
    .registers 7

    const/4 v3, 0x1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Luserzoom/com/a;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/LayoutAnimationController;

    const/high16 v3, 0x3e80

    invoke-direct {v2, v1, v3}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPersistentDrawingCache(I)V

    return-object v0
.end method

.method public final a(IIILjava/lang/String;)V
    .registers 7

    iget-boolean v0, p0, Luserzoom/com/a;->j:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Luserzoom/com/a;->k:Lcom/userzoom/ak;

    iput p2, v0, Lcom/userzoom/ak;->a:I

    iget-object v0, p0, Luserzoom/com/a;->k:Lcom/userzoom/ak;

    iput p3, v0, Lcom/userzoom/ak;->b:I

    iget-object v0, p0, Luserzoom/com/a;->k:Lcom/userzoom/ak;

    iput-object p4, v0, Lcom/userzoom/ak;->c:Ljava/lang/String;

    iget-object v0, p0, Luserzoom/com/a;->r:Luserzoom/com/UzEventsFeatureService;

    if-eqz v0, :cond_32

    packed-switch p1, :pswitch_data_3a

    :goto_18
    const-string v0, "UzLibInstance"

    const-string v1, "sendingEvent to Service"

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_20
    iget-object v0, p0, Luserzoom/com/a;->r:Luserzoom/com/UzEventsFeatureService;

    invoke-virtual {v0, p2, p3, p4}, Luserzoom/com/UzEventsFeatureService;->c(IILjava/lang/String;)V

    goto :goto_18

    :pswitch_26
    iget-object v0, p0, Luserzoom/com/a;->r:Luserzoom/com/UzEventsFeatureService;

    invoke-virtual {v0, p2, p3, p4}, Luserzoom/com/UzEventsFeatureService;->a(IILjava/lang/String;)V

    goto :goto_18

    :pswitch_2c
    iget-object v0, p0, Luserzoom/com/a;->r:Luserzoom/com/UzEventsFeatureService;

    invoke-virtual {v0, p2, p3, p4}, Luserzoom/com/UzEventsFeatureService;->b(IILjava/lang/String;)V

    goto :goto_18

    :cond_32
    const-string v0, "UzLibInstance"

    const-string v1, "Events service is null!"

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_20
        :pswitch_2c
    .end packed-switch
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 5

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userzoom.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    const-string v0, "UzLibInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activity tracked "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Luserzoom/com/a;->q:Lcom/userzoom/al;

    if-nez v0, :cond_30

    new-instance v0, Lcom/userzoom/al;

    invoke-direct {v0}, Lcom/userzoom/al;-><init>()V

    iput-object v0, p0, Luserzoom/com/a;->q:Lcom/userzoom/al;

    :cond_30
    invoke-static {}, Lcom/userzoom/n;->b()Lcom/userzoom/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/userzoom/n;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Luserzoom/com/a;->q:Lcom/userzoom/al;

    iget-object v1, v0, Lcom/userzoom/al;->b:Lcom/userzoom/as;

    if-nez v1, :cond_46

    new-instance v1, Lcom/userzoom/as;

    iget-object v2, v0, Lcom/userzoom/al;->d:Lcom/userzoom/aw;

    invoke-direct {v1, p1, v2}, Lcom/userzoom/as;-><init>(Landroid/content/Context;Lcom/userzoom/aw;)V

    iput-object v1, v0, Lcom/userzoom/al;->b:Lcom/userzoom/as;

    :cond_46
    iget-object v1, v0, Lcom/userzoom/al;->c:Lcom/userzoom/as;

    if-nez v1, :cond_53

    new-instance v1, Lcom/userzoom/as;

    iget-object v2, v0, Lcom/userzoom/al;->e:Lcom/userzoom/au;

    invoke-direct {v1, p1, v2}, Lcom/userzoom/as;-><init>(Landroid/content/Context;Lcom/userzoom/au;)V

    iput-object v1, v0, Lcom/userzoom/al;->c:Lcom/userzoom/as;

    :cond_53
    iget-object v1, v0, Lcom/userzoom/al;->a:Landroid/view/ScaleGestureDetector;

    if-nez v1, :cond_60

    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, v0, Lcom/userzoom/al;->f:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, v0, Lcom/userzoom/al;->a:Landroid/view/ScaleGestureDetector;

    :cond_60
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Lcom/userzoom/am;

    invoke-direct {v2, v0, p1, v1}, Lcom/userzoom/am;-><init>(Lcom/userzoom/al;Landroid/app/Activity;Landroid/view/Window;)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_c
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Luserzoom/com/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .registers 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/userzoom/ak;

    invoke-direct {v0}, Lcom/userzoom/ak;-><init>()V

    iput-object v0, p0, Luserzoom/com/a;->k:Lcom/userzoom/ak;

    iget-object v0, p0, Luserzoom/com/a;->k:Lcom/userzoom/ak;

    iput v1, v0, Lcom/userzoom/ak;->a:I

    iget-object v0, p0, Luserzoom/com/a;->k:Lcom/userzoom/ak;

    iput v1, v0, Lcom/userzoom/ak;->b:I

    iget-object v0, p0, Luserzoom/com/a;->k:Lcom/userzoom/ak;

    const-string v1, ""

    iput-object v1, v0, Lcom/userzoom/ak;->c:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Luserzoom/com/a;->f:Landroid/content/Context;

    const-class v2, Luserzoom/com/UzEventsFeatureService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Luserzoom/com/a;->f:Landroid/content/Context;

    iget-object v2, p0, Luserzoom/com/a;->s:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v3, p0, Luserzoom/com/a;->j:Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Luserzoom/com/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "UzLibInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity not started? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/userzoom/bp;

    invoke-direct {v1, p0}, Lcom/userzoom/bp;-><init>(Luserzoom/com/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected final c()Landroid/view/Display;
    .registers 2

    iget-object v0, p0, Luserzoom/com/a;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Luserzoom/com/a;->n:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Luserzoom/com/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final e()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Luserzoom/com/a;->j:Z

    if-ne v0, v3, :cond_12

    iget-object v0, p0, Luserzoom/com/a;->r:Luserzoom/com/UzEventsFeatureService;

    if-eqz v0, :cond_12

    iget-object v0, p0, Luserzoom/com/a;->r:Luserzoom/com/UzEventsFeatureService;

    invoke-virtual {v0}, Luserzoom/com/UzEventsFeatureService;->b()V

    iput-object v2, p0, Luserzoom/com/a;->r:Luserzoom/com/UzEventsFeatureService;

    :cond_12
    iput-boolean v1, p0, Luserzoom/com/a;->g:Z

    iput-boolean v3, p0, Luserzoom/com/a;->h:Z

    iput-boolean v1, p0, Luserzoom/com/a;->i:Z

    iput-object v2, p0, Luserzoom/com/a;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Luserzoom/com/a;->b:Ljava/util/ArrayList;

    iput-object v2, p0, Luserzoom/com/a;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Luserzoom/com/a;->c:Ljava/util/ArrayList;

    iput-boolean v1, p0, Luserzoom/com/a;->j:Z

    invoke-static {}, Lcom/userzoom/n;->b()Lcom/userzoom/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/userzoom/n;->i()V

    return-void
.end method

.method public final f()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Luserzoom/com/a;->p:Z

    return-void
.end method
