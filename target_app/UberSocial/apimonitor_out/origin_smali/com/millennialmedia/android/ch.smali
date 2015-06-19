.class abstract Lcom/millennialmedia/android/ch;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/bf;
.implements Lcom/millennialmedia/android/bo;


# static fields
.field private static final a:Ljava/lang/String; = "MMLayout"

.field private static c:Z = false

.field private static final d:I = 0x32

.field public static final n:Ljava/lang/String; = "height"

.field public static final o:Ljava/lang/String; = "width"

.field static final t:Ljava/lang/String; = "top-left"

.field static final u:Ljava/lang/String; = "top-right"

.field static final v:Ljava/lang/String; = "top-center"

.field static final w:Ljava/lang/String; = "center"

.field static final x:Ljava/lang/String; = "bottom-left"

.field static final y:Ljava/lang/String; = "bottom-right"

.field static final z:Ljava/lang/String; = "bottom-center"


# instance fields
.field A:Landroid/widget/RelativeLayout;

.field B:Lcom/millennialmedia/android/ba;

.field C:Landroid/view/View;

.field private b:Landroid/view/GestureDetector;

.field p:Lcom/millennialmedia/android/bp;

.field q:Ljava/lang/String;

.field r:Z

.field s:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/ch;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/ch;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .registers 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->C:Landroid/view/View;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->C:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1b

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1b

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/android/ch;->C:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/ch;->C:Landroid/view/View;

    :cond_1b
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/millennialmedia/android/ch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/ch;->C:Landroid/view/View;

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->C:Landroid/view/View;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/millennialmedia/android/ch;->C:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->A:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->C:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->A:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/ch;->C:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_4a
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/ch;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/ch;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 9

    const/16 v6, 0xe

    const/16 v5, 0xb

    const/high16 v4, 0x4248

    const/16 v3, 0xc

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->s:Landroid/view/View;

    if-nez v0, :cond_49

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/millennialmedia/android/ch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/ch;->s:Landroid/view/View;

    invoke-virtual {p0}, Lcom/millennialmedia/android/ch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v2, v4, v0

    float-to-int v2, v2

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v0, "top-right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/millennialmedia/android/ch;->s:Landroid/view/View;

    new-instance v2, Lcom/millennialmedia/android/ch$2;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/ch$2;-><init>(Lcom/millennialmedia/android/ch;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->s:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/ch;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_49
    return-void

    :cond_4a
    const-string v0, "top-center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3a

    :cond_56
    const-string v0, "bottom-left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3a

    :cond_62
    const-string v0, "bottom-center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3a

    :cond_71
    const-string v0, "bottom-right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3a

    :cond_80
    const-string v0, "center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3a
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    const-string v0, "MMLayout"

    const-string v1, "Initializing MMLayout."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/millennialmedia/android/co;->g(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/millennialmedia/android/co;->h(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_46

    :goto_d
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/android/ci;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/ci;-><init>(Lcom/millennialmedia/android/ch;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/millennialmedia/android/ch;->b:Landroid/view/GestureDetector;

    sget-boolean v0, Lcom/millennialmedia/android/ch;->c:Z

    if-nez v0, :cond_45

    const-string v0, "MMLayout"

    const-string v1, "********** Millennial Device Id *****************"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MMLayout"

    invoke-static {p1}, Lcom/millennialmedia/android/co;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MMLayout"

    const-string v1, "Use the above identifier to register this device and receive test ads. Test devices can be registered and administered through your account at http://mmedia.com."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MMLayout"

    const-string v1, "*************************************************"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/millennialmedia/android/a;->b(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/ch;->c:Z

    :cond_45
    return-void

    :catch_46
    move-exception v0

    const-string v1, "MMLayout"

    const-string v2, "There was an exception initializing the MMAdView. "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/millennialmedia/android/ch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/co;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/bs;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    const-string v0, "MMLayout"

    const-string v1, "No network available, can\'t load overlay."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method a(Lcom/millennialmedia/android/bc;)Z
    .registers 3

    new-instance v0, Lcom/millennialmedia/android/ch$3;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/ch$3;-><init>(Lcom/millennialmedia/android/ch;Lcom/millennialmedia/android/bc;)V

    invoke-static {v0}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method

.method b()V
    .registers 1

    return-void
.end method

.method b(Lcom/millennialmedia/android/bc;)V
    .registers 5

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0}, Lcom/millennialmedia/android/ba;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_14
    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0}, Lcom/millennialmedia/android/ba;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0}, Lcom/millennialmedia/android/ba;->stopPlayback()V

    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    :cond_24
    new-instance v0, Lcom/millennialmedia/android/ba;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/ba;-><init>(Lcom/millennialmedia/android/ch;)V

    iput-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/ba;->b(Lcom/millennialmedia/android/bc;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/ba;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/ch;->e()V

    return-void
.end method

.method public c()V
    .registers 3

    invoke-direct {p0}, Lcom/millennialmedia/android/ch;->a()V

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->C:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->C:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method c(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/millennialmedia/android/ch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/co;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/bs;->a(Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    const-string v0, "MMLayout"

    const-string v1, "No network available, can\'t load overlay."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method e()V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->A:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/android/ch;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_19
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/millennialmedia/android/ch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/ch;->A:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->A:Landroid/widget/RelativeLayout;

    const v1, 0x35391858

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0}, Lcom/millennialmedia/android/ba;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0}, Lcom/millennialmedia/android/ba;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_41
    iget-object v0, p0, Lcom/millennialmedia/android/ch;->A:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->C:Landroid/view/View;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->C:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->A:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/ch;->C:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_5b
    iget-object v0, p0, Lcom/millennialmedia/android/ch;->C:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_60
    iget-object v0, p0, Lcom/millennialmedia/android/ch;->A:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v1}, Lcom/millennialmedia/android/ba;->c()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/ch;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected finalize()V
    .registers 4

    invoke-virtual {p0}, Lcom/millennialmedia/android/ch;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/bp;->l:Z

    const-string v0, "MMLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalize() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    invoke-static {v0}, Lcom/millennialmedia/android/bs;->e(Lcom/millennialmedia/android/bp;)V

    :cond_2b
    return-void
.end method

.method g()V
    .registers 1

    return-void
.end method

.method public getApid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->getApid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoresDensityScaling()Z
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->getIgnoresDensityScaling()Z

    move-result v0

    return v0
.end method

.method public getListener()Lcom/millennialmedia/android/df;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->getListener()Lcom/millennialmedia/android/df;

    move-result-object v0

    return-object v0
.end method

.method public getMMRequest()Lcom/millennialmedia/android/cn;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->getMMRequest()Lcom/millennialmedia/android/cn;

    move-result-object v0

    return-object v0
.end method

.method h()V
    .registers 1

    return-void
.end method

.method public l()V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->C:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->C:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method m()V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->s:Landroid/view/View;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/android/ch;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/ch;->s:Landroid/view/View;

    :cond_26
    return-void
.end method

.method n()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0}, Lcom/millennialmedia/android/ba;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    :cond_c
    return-void
.end method

.method o()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0}, Lcom/millennialmedia/android/ba;->h()V

    :cond_9
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/millennialmedia/android/ch;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "MMLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/ch;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_31

    const-string v0, "MMLayout"

    const-string v1, "MMAd missing id from getId(). Performance will be affected for configuration changes."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    iget-boolean v0, p0, Lcom/millennialmedia/android/ch;->r:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    invoke-static {v0}, Lcom/millennialmedia/android/bs;->b(Lcom/millennialmedia/android/bp;)V

    :cond_3a
    iget-object v0, p0, Lcom/millennialmedia/android/ch;->A:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    :cond_43
    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->F()V

    :cond_5e
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const-string v0, "MMLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/ch;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-object v1, v1, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;

    const-string v2, "i"

    if-ne v1, v2, :cond_3c

    if-eqz v0, :cond_3c

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3c

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/bp;->l:Z

    :cond_3c
    iget-boolean v0, p0, Lcom/millennialmedia/android/ch;->r:Z

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    invoke-static {v0}, Lcom/millennialmedia/android/bs;->e(Lcom/millennialmedia/android/bp;)V

    :cond_45
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-wide v0, v0, Lcom/millennialmedia/android/bp;->k:J

    iget-object v2, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    const-string v3, "MMAdImplId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/millennialmedia/android/bp;->k:J

    iget-object v2, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    const-string v3, "MMAdImplLinkedId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/millennialmedia/android/bp;->q:J

    const-string v2, "MMLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreInstanceState replacing adImpl-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/millennialmedia/android/ch;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "inlineVideoViewGson"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-static {v0}, Lcom/millennialmedia/android/bc;->a(Ljava/lang/String;)Lcom/millennialmedia/android/bc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/ch;->b(Lcom/millennialmedia/android/bc;)V

    :cond_5b
    const-string v0, "super"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    const-string v0, "MMLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState saving - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/android/ch;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "super"

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "MMAdImplId"

    iget-object v2, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-wide v2, v2, Lcom/millennialmedia/android/bp;->k:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "MMAdImplLinkedId"

    iget-object v2, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-wide v2, v2, Lcom/millennialmedia/android/bp;->q:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v1}, Lcom/millennialmedia/android/ba;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    iget-object v1, v1, Lcom/millennialmedia/android/ba;->e:Lcom/millennialmedia/android/bc;

    iget-object v2, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v2}, Lcom/millennialmedia/android/ba;->getCurrentPosition()I

    move-result v2

    iput v2, v1, Lcom/millennialmedia/android/bc;->h:I

    :cond_63
    const-string v1, "inlineVideoViewGson"

    iget-object v2, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v2}, Lcom/millennialmedia/android/ba;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/millennialmedia/android/ch;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onWindowFocusChanged(Z)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_a1

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0}, Lcom/millennialmedia/android/ba;->l()V

    :cond_f
    :goto_f
    const-string v0, "MMLayout"

    const-string v1, "Window Focus Changed. For %s, Window in focus?: %b Controllers: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {}, Lcom/millennialmedia/android/bs;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;

    if-eqz v0, :cond_55

    if-eqz p1, :cond_ac

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->n()V

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->t()V

    :cond_55
    :goto_55
    if-nez p1, :cond_91

    invoke-virtual {p0}, Lcom/millennialmedia/android/ch;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_91

    invoke-virtual {p0}, Lcom/millennialmedia/android/ch;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    if-eqz v0, :cond_91

    :cond_71
    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iput-boolean v5, v0, Lcom/millennialmedia/android/bp;->l:Z

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->r()V

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    invoke-static {v0}, Lcom/millennialmedia/android/bs;->e(Lcom/millennialmedia/android/bp;)V

    :cond_91
    invoke-virtual {p0}, Lcom/millennialmedia/android/ch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/aa;->a(Landroid/content/Context;)Lcom/millennialmedia/android/aa;

    move-result-object v0

    if-eqz v0, :cond_a0

    monitor-enter p0

    :try_start_9c
    invoke-virtual {v0}, Lcom/millennialmedia/android/aa;->b()Lcom/millennialmedia/android/cg;

    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9c .. :try_end_a0} :catchall_c2

    :cond_a0
    return-void

    :cond_a1
    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0}, Lcom/millennialmedia/android/ba;->k()V

    goto/16 :goto_f

    :cond_ac
    invoke-static {}, Lcom/millennialmedia/android/af;->a()Z

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->s()V

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->m()V

    goto :goto_55

    :catchall_c2
    move-exception v0

    :try_start_c3
    monitor-exit p0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw v0
.end method

.method p()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0}, Lcom/millennialmedia/android/ba;->j()V

    :cond_9
    return-void
.end method

.method q()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0}, Lcom/millennialmedia/android/ba;->k()V

    :cond_9
    return-void
.end method

.method r()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0}, Lcom/millennialmedia/android/ba;->l()V

    :cond_9
    return-void
.end method

.method s()Z
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0}, Lcom/millennialmedia/android/ba;->m()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setApid(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/bp;->setApid(Ljava/lang/String;)V

    return-void
.end method

.method setCloseArea(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/millennialmedia/android/ch$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/ch$1;-><init>(Lcom/millennialmedia/android/ch;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/ch;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setIgnoresDensityScaling(Z)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/bp;->setIgnoresDensityScaling(Z)V

    return-void
.end method

.method public setListener(Lcom/millennialmedia/android/df;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/bp;->setListener(Lcom/millennialmedia/android/df;)V

    return-void
.end method

.method public setMMRequest(Lcom/millennialmedia/android/cn;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/bp;->setMMRequest(Lcom/millennialmedia/android/cn;)V

    return-void
.end method

.method setMediaPlaybackRequiresUserGesture(Z)V
    .registers 7

    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "setMediaPlaybackRequiresUserGesture"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method setVideoSource(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/ba;->a(Ljava/lang/String;)V

    :cond_9
    return-void
.end method
