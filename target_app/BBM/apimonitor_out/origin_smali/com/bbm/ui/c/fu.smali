.class public Lcom/bbm/ui/c/fu;
.super Landroid/app/Fragment;
.source "StickerDetailsFragment.java"


# static fields
.field private static final R:Lcom/bbm/d/a;


# instance fields
.field private A:Lcom/bbm/util/bo;

.field private B:Lcom/bbm/util/b/g;

.field private C:Lcom/bbm/util/b/g;

.field private D:Lcom/bbm/util/b/g;

.field private E:Lcom/bbm/l/b/m;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:I

.field private J:Lcom/bbm/c/q;

.field private K:Z

.field private L:Landroid/content/Context;

.field private M:Lcom/bbm/ui/activities/StickerDetailsActivity;

.field private N:Lcom/bbm/l/d/b/x;

.field private O:Landroid/view/animation/Animation;

.field private P:Landroid/view/animation/Animation;

.field private Q:Landroid/view/animation/Animation;

.field private S:Landroid/os/Handler;

.field private T:Ljava/lang/Runnable;

.field private U:Lcom/bbm/ui/c/gy;

.field private final V:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Lcom/bbm/l/b/m;",
            ">;"
        }
    .end annotation
.end field

.field private W:Z

.field private final X:Lcom/bbm/j/k;

.field a:Lcom/bbm/l/d/b;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/bbm/ui/ObservingImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/bbm/ui/ObservingImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/ProgressBar;

.field private t:Landroid/content/res/ColorStateList;

.field private u:Landroid/widget/GridLayout;

.field private v:Landroid/widget/ImageView;

.field private w:I

.field private x:I

.field private y:I

.field private z:Lcom/bbm/util/bo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/c/fu;->R:Lcom/bbm/d/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bbm/ui/c/fu;->I:I

    sget-object v0, Lcom/bbm/c/q;->a:Lcom/bbm/c/q;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->J:Lcom/bbm/c/q;

    iput-boolean v1, p0, Lcom/bbm/ui/c/fu;->K:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->S:Landroid/os/Handler;

    new-instance v0, Lcom/bbm/ui/c/fv;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/fv;-><init>(Lcom/bbm/ui/c/fu;)V

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->T:Ljava/lang/Runnable;

    sget-object v0, Lcom/bbm/ui/c/gy;->a:Lcom/bbm/ui/c/gy;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->U:Lcom/bbm/ui/c/gy;

    new-instance v0, Lcom/bbm/ui/c/gd;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/gd;-><init>(Lcom/bbm/ui/c/fu;)V

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->a:Lcom/bbm/l/d/b;

    new-instance v0, Lcom/bbm/ui/c/go;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/go;-><init>(Lcom/bbm/ui/c/fu;)V

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->V:Lcom/bbm/j/a;

    iput-boolean v1, p0, Lcom/bbm/ui/c/fu;->W:Z

    new-instance v0, Lcom/bbm/ui/c/gp;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/gp;-><init>(Lcom/bbm/ui/c/fu;)V

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->X:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/c/fu;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/c/fu;Lcom/bbm/l/b/m;)Lcom/bbm/l/b/m;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/fu;->E:Lcom/bbm/l/b/m;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/c/fu;Lcom/bbm/l/d/b/x;)Lcom/bbm/l/d/b/x;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/fu;->N:Lcom/bbm/l/d/b/x;

    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZLcom/bbm/c/q;ILjava/lang/String;)Lcom/bbm/ui/c/fu;
    .registers 9

    new-instance v0, Lcom/bbm/ui/c/fu;

    invoke-direct {v0}, Lcom/bbm/ui/c/fu;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pack_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_16

    const-string v2, "showStickerDetail"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const-string v2, "updateAfterPurchase"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "externalStickerId"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "viewSource"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "storeGridLocation"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/c/fu;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Lcom/bbm/c/o;)V
    .registers 10

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->E:Lcom/bbm/l/b/m;

    iget-object v2, v0, Lcom/bbm/l/b/l;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->E:Lcom/bbm/l/b/m;

    const-string v3, "acSF2dc4"

    invoke-static {v0, v3}, Lcom/bbm/ui/c/fu;->b(Lcom/bbm/l/b/m;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->F:Ljava/lang/String;

    :goto_14
    iget-object v3, p0, Lcom/bbm/ui/c/fu;->J:Lcom/bbm/c/q;

    iget v4, p0, Lcom/bbm/ui/c/fu;->I:I

    iget-object v5, p0, Lcom/bbm/ui/c/fu;->H:Ljava/lang/String;

    :try_start_1a
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    sget-object v7, Lcom/bbm/c/n;->P:Lcom/bbm/c/n;

    invoke-virtual {v7}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/bbm/c/n;->Q:Lcom/bbm/c/n;

    invoke-virtual {v2}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->R:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/bbm/c/q;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/j;->b:[I

    invoke-virtual {v3}, Lcom/bbm/c/q;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_8e

    :goto_49
    :pswitch_49
    sget-object v0, Lcom/bbm/c/n;->X:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bbm/c/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/m;->e:Lcom/bbm/c/m;

    invoke-virtual {v1, v0, v6}, Lcom/bbm/c/c;->a(Lcom/bbm/c/m;Lorg/json/JSONObject;)V
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_5b} :catch_69

    :goto_5b
    return-void

    :cond_5c
    const-string v0, "Free"

    goto :goto_14

    :pswitch_5f
    :try_start_5f
    sget-object v0, Lcom/bbm/c/n;->T:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_68} :catch_69

    goto :goto_49

    :catch_69
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EventTracker.trackStickerPurchaseEvent() JSONException - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_5b

    :pswitch_84
    :try_start_84
    sget-object v0, Lcom/bbm/c/n;->V:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8d
    .catch Lorg/json/JSONException; {:try_start_84 .. :try_end_8d} :catch_69

    goto :goto_49

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_49
        :pswitch_84
    .end packed-switch
.end method

.method private a(Lcom/bbm/l/b/i;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/bbm/l/b/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_a
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->l:Lcom/bbm/ui/ObservingImageView;

    new-instance v1, Lcom/bbm/ui/c/gx;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/gx;-><init>(Lcom/bbm/ui/c/fu;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p1, Lcom/bbm/l/b/i;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->p:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/bbm/l/b/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2b
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->q:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/bbm/ui/c/fw;

    invoke-direct {v0, p0, p1, p2}, Lcom/bbm/ui/c/fw;-><init>(Lcom/bbm/ui/c/fu;Lcom/bbm/l/b/i;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/ui/c/fu;->q:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/bbm/ui/c/fu;->l:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1b
.end method

.method static synthetic a(Lcom/bbm/ui/c/fu;I)V
    .registers 6

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v2, p1

    const v3, 0x3eb851ec

    mul-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v3, v0, 0x2

    div-int v3, v2, v3

    iput v3, p0, Lcom/bbm/ui/c/fu;->y:I

    sub-int v2, p1, v2

    div-int v0, v2, v0

    iput v0, p0, Lcom/bbm/ui/c/fu;->w:I

    iget v0, p0, Lcom/bbm/ui/c/fu;->w:I

    mul-int/2addr v0, v1

    sub-int v0, p1, v0

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/bbm/ui/c/fu;->x:I

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/c/fu;Lcom/bbm/l/b/i;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/l/b/i;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/c/fu;Lcom/bbm/l/d/b/x;Ljava/lang/Boolean;)V
    .registers 7

    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->S:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/ui/c/fu;->T:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bbm/l/e;->a:Lcom/bbm/l/e;

    new-instance v2, Lcom/bbm/ui/c/ge;

    invoke-direct {v2, p0, p1, p2}, Lcom/bbm/ui/c/ge;-><init>(Lcom/bbm/ui/c/fu;Lcom/bbm/l/d/b/x;Ljava/lang/Boolean;)V

    invoke-static {v0, v1, v2}, Lcom/bbm/l/a;->a(Ljava/util/List;Lcom/bbm/l/e;Lcom/bbm/l/d;)V

    :cond_1e
    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/c/fu;Lcom/bbm/ui/c/gy;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/gy;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/c/fu;Ljava/lang/Boolean;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/bbm/ui/c/gy;->c:Lcom/bbm/ui/c/gy;

    invoke-direct {p0, v0}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/gy;)V

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_94

    const-string v3, "updateAfterPurchase"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_94

    move v0, v1

    :goto_16
    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v0, :cond_30

    if-eqz v3, :cond_30

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "purchasedStickerPackId"

    iget-object v5, p0, Lcom/bbm/ui/c/fu;->E:Lcom/bbm/l/b/m;

    iget-object v5, v5, Lcom/bbm/l/b/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_30
    sget-object v0, Lcom/bbm/ui/c/fu;->R:Lcom/bbm/d/a;

    iget-object v4, p0, Lcom/bbm/ui/c/fu;->E:Lcom/bbm/l/b/m;

    iget-object v4, v4, Lcom/bbm/l/b/l;->a:Ljava/lang/String;

    new-instance v5, Lcom/bbm/d/dl;

    invoke-direct {v5, v4}, Lcom/bbm/d/dl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    sget-object v0, Lcom/bbm/c/o;->a:Lcom/bbm/c/o;

    invoke-direct {p0, v0}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/c/o;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_93

    if-eqz v3, :cond_93

    new-instance v0, Lcom/bbm/ui/b/o;

    iget-object v3, p0, Lcom/bbm/ui/c/fu;->L:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/bbm/ui/c/fu;->E:Lcom/bbm/l/b/m;

    iget-object v3, v3, Lcom/bbm/l/b/l;->a:Ljava/lang/String;

    const v4, 0x7f0e06e4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {p0, v4, v1}, Lcom/bbm/ui/c/fu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e06e2

    invoke-virtual {v0, v3}, Lcom/bbm/ui/b/o;->setTitle(I)V

    const v3, 0x7f0e06e3

    invoke-virtual {p0, v3}, Lcom/bbm/ui/c/fu;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bbm/ui/b/o;->a_(Ljava/lang/String;)V

    const v3, 0x7f0e015e

    invoke-virtual {v0, v3}, Lcom/bbm/ui/b/o;->b(I)V

    new-instance v3, Lcom/bbm/ui/c/gl;

    invoke-direct {v3, p0, v0}, Lcom/bbm/ui/c/gl;-><init>(Lcom/bbm/ui/c/fu;Lcom/bbm/ui/b/o;)V

    invoke-virtual {v0, v3}, Lcom/bbm/ui/b/o;->b(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0e0553

    invoke-virtual {v0, v3}, Lcom/bbm/ui/b/o;->a(I)V

    new-instance v3, Lcom/bbm/ui/c/gm;

    invoke-direct {v3, p0, v1, v0}, Lcom/bbm/ui/c/gm;-><init>(Lcom/bbm/ui/c/fu;Ljava/lang/String;Lcom/bbm/ui/b/o;)V

    invoke-virtual {v0, v3}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Lcom/bbm/ui/b/o;->setCancelable(Z)V

    invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V

    :cond_93
    return-void

    :cond_94
    move v0, v2

    goto :goto_16
.end method

.method static synthetic a(Lcom/bbm/ui/c/fu;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_27
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_34
    invoke-virtual {p0, v1}, Lcom/bbm/ui/c/fu;->startActivity(Landroid/content/Intent;)V
    :try_end_37
    .catch Ljava/lang/IllegalStateException; {:try_start_34 .. :try_end_37} :catch_38
    .catch Landroid/content/ActivityNotFoundException; {:try_start_34 .. :try_end_37} :catch_3d

    :cond_37
    :goto_37
    return-void

    :catch_38
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_37

    :catch_3d
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to launch activity for link: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_37
.end method

.method static synthetic a(Lcom/bbm/ui/c/fu;Z)V
    .registers 4

    if-eqz p1, :cond_d

    sget-object v0, Lcom/bbm/ui/c/gy;->b:Lcom/bbm/ui/c/gy;

    invoke-direct {p0, v0}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/gy;)V

    sget-object v0, Lcom/bbm/c/o;->c:Lcom/bbm/c/o;

    invoke-direct {p0, v0}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/c/o;)V

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v0, Lcom/bbm/c/o;->b:Lcom/bbm/c/o;

    invoke-direct {p0, v0}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/c/o;)V

    goto :goto_c
.end method

.method private a(Lcom/bbm/ui/c/gy;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->U:Lcom/bbm/ui/c/gy;

    sget-object v1, Lcom/bbm/ui/c/gy;->d:Lcom/bbm/ui/c/gy;

    if-ne v0, v1, :cond_9

    :goto_8
    return-void

    :cond_9
    sget-object v0, Lcom/bbm/ui/c/gr;->a:[I

    invoke-virtual {p1}, Lcom/bbm/ui/c/gy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_e0

    :goto_14
    iput-object p1, p0, Lcom/bbm/ui/c/fu;->U:Lcom/bbm/ui/c/gy;

    goto :goto_8

    :pswitch_17
    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e06d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2d
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    new-instance v1, Lcom/bbm/ui/c/fx;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/fx;-><init>(Lcom/bbm/ui/c/fu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v3}, Lcom/bbm/ui/c/fu;->a(Z)V

    goto :goto_14

    :pswitch_45
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0, v4}, Lcom/bbm/ui/c/fu;->a(Z)V

    goto :goto_14

    :pswitch_4e
    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e06da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_64
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/bbm/ui/c/fu;->a(Z)V

    goto :goto_14

    :pswitch_72
    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e06d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_88
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    new-instance v1, Lcom/bbm/ui/c/fy;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/fy;-><init>(Lcom/bbm/ui/c/fu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v3}, Lcom/bbm/ui/c/fu;->a(Z)V

    goto/16 :goto_14

    :pswitch_a1
    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e06dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_b7
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0, v3}, Lcom/bbm/ui/c/fu;->a(Z)V

    goto/16 :goto_14

    :pswitch_c6
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    new-instance v1, Lcom/bbm/ui/c/fz;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/fz;-><init>(Lcom/bbm/ui/c/fu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v3}, Lcom/bbm/ui/c/fu;->a(Z)V

    goto/16 :goto_14

    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_45
        :pswitch_4e
        :pswitch_72
        :pswitch_a1
        :pswitch_c6
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    const/16 v2, 0x8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->D:Lcom/bbm/util/b/g;

    iget-object v1, p0, Lcom/bbm/ui/c/fu;->l:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, p1, v1}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->l:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->l:Lcom/bbm/ui/ObservingImageView;

    iget-object v1, p0, Lcom/bbm/ui/c/fu;->P:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->l:Lcom/bbm/ui/ObservingImageView;

    iget-object v1, p0, Lcom/bbm/ui/c/fu;->Q:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->l:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21
.end method

.method private a(Z)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    iget-object v1, p0, Lcom/bbm/ui/c/fu;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->s:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_d
.end method

.method static synthetic a(Lcom/bbm/l/b/m;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/bbm/ui/c/fu;->b(Lcom/bbm/l/b/m;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Lcom/bbm/d/a;
    .registers 1

    sget-object v0, Lcom/bbm/ui/c/fu;->R:Lcom/bbm/d/a;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/c/fu;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/ui/c/fu;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_28

    const-string v2, "showStickerDetail"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "externalStickerId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v3

    sget-object v4, Lcom/bbm/c/q;->a:Lcom/bbm/c/q;

    iget-object v5, p0, Lcom/bbm/ui/c/fu;->G:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2}, Lcom/bbm/c/c;->a(Lcom/bbm/c/q;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    const-string v2, "showStickerDetail"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_28
    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_3a

    :goto_32
    if-eqz v0, :cond_39

    const-string v1, "showStickerDetail"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_39
    return-void

    :cond_3a
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_32
.end method

.method static synthetic b(Lcom/bbm/ui/c/fu;Lcom/bbm/l/b/m;)V
    .registers 10

    const v7, 0x7f020042

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_12d

    iput-object p1, p0, Lcom/bbm/ui/c/fu;->E:Lcom/bbm/l/b/m;

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->V:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->c()V

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_12d

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->isHidden()Z

    move-result v0

    if-nez v0, :cond_12d

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->isDetached()Z

    move-result v0

    if-nez v0, :cond_12d

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p1, Lcom/bbm/l/b/m;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/l/b/h;

    iget-object v4, v0, Lcom/bbm/l/b/h;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/bbm/ui/c/fu;->H:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v4, v0, Lcom/bbm/l/b/h;->e:Ljava/util/List;

    if-eqz v4, :cond_2e

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2e

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/l/b/g;

    iget-object v1, v1, Lcom/bbm/l/b/g;->d:Lcom/bbm/l/b/i;

    iget-object v0, v0, Lcom/bbm/l/b/h;->a:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/l/b/i;Ljava/lang/String;)V

    :cond_5b
    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_12d

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbm/ui/c/fu;->E:Lcom/bbm/l/b/m;

    iget-object v1, v1, Lcom/bbm/l/b/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->E:Lcom/bbm/l/b/m;

    iget-object v1, v0, Lcom/bbm/l/b/m;->g:Lcom/bbm/l/b/d;

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v1, :cond_12e

    move v0, v2

    :goto_75
    const-string v5, "Sticker Artist not found"

    invoke-static {v4, v0, v5}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12d

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e06e1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/bbm/l/b/d;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/bbm/ui/c/fu;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/bbm/ui/c/fu;->e:Landroid/widget/TextView;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v3

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->E:Lcom/bbm/l/b/m;

    iget-object v4, v0, Lcom/bbm/l/b/m;->f:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_140

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->B:Lcom/bbm/util/b/g;

    iget-object v5, v0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;

    const/4 v0, 0x0

    if-eqz v5, :cond_b1

    invoke-virtual {v5, v4}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;)Lcom/bbm/d/fd;

    move-result-object v0

    :cond_b1
    if-nez v0, :cond_136

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :try_start_b8
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->z:Lcom/bbm/util/bo;

    new-instance v2, Lcom/bbm/ui/c/gt;

    invoke-direct {v2, p0, v5, v4}, Lcom/bbm/ui/c/gt;-><init>(Lcom/bbm/ui/c/fu;Lcom/bbm/util/b/d;Ljava/lang/String;)V

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v2}, Lcom/bbm/util/bo;->a(Ljava/net/URL;Lcom/bbm/util/bx;)V
    :try_end_c7
    .catch Ljava/net/MalformedURLException; {:try_start_b8 .. :try_end_c7} :catch_131

    :goto_c7
    invoke-direct {p0}, Lcom/bbm/ui/c/fu;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbm/ui/c/fu;->E:Lcom/bbm/l/b/m;

    iget-object v2, v2, Lcom/bbm/l/b/m;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->f:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/bbm/l/b/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/bbm/l/b/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_148

    iget-object v2, p0, Lcom/bbm/ui/c/fu;->g:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v2, v3}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/bbm/ui/c/fu;->C:Lcom/bbm/util/b/g;

    iget-object v4, p0, Lcom/bbm/ui/c/fu;->g:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v2, v0, v4}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    :goto_ee
    iget-object v0, v1, Lcom/bbm/l/b/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_105

    iget-object v2, p0, Lcom/bbm/ui/c/fu;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/bbm/ui/c/fu;->h:Landroid/widget/TextView;

    new-instance v4, Lcom/bbm/ui/c/gu;

    invoke-direct {v4, p0, v0}, Lcom/bbm/ui/c/gu;-><init>(Lcom/bbm/ui/c/fu;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_105
    iget-object v1, v1, Lcom/bbm/l/b/d;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11c

    iget-object v2, p0, Lcom/bbm/ui/c/fu;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/bbm/ui/c/fu;->i:Landroid/widget/TextView;

    new-instance v4, Lcom/bbm/ui/c/gv;

    invoke-direct {v4, p0, v1}, Lcom/bbm/ui/c/gv;-><init>(Lcom/bbm/ui/c/fu;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12d

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_12d
    return-void

    :cond_12e
    move v0, v3

    goto/16 :goto_75

    :catch_131
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_c7

    :cond_136
    iget-object v4, p0, Lcom/bbm/ui/c/fu;->v:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v2, p0, Lcom/bbm/ui/c/fu;->K:Z

    goto :goto_c7

    :cond_140
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-boolean v2, p0, Lcom/bbm/ui/c/fu;->K:Z

    goto :goto_c7

    :cond_148
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->g:Lcom/bbm/ui/ObservingImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    goto :goto_ee
.end method

.method static synthetic b(Lcom/bbm/ui/c/fu;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbm/ui/c/fu;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lcom/bbm/l/b/m;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    if-eqz p0, :cond_d

    iget-object v2, p0, Lcom/bbm/l/b/l;->d:Ljava/lang/String;

    if-nez v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v3, v2, 0x2

    iget-object v4, p0, Lcom/bbm/l/b/l;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move-object v2, v1

    move v1, v0

    :goto_1c
    add-int/lit8 v6, v5, 0x1

    if-ge v1, v6, :cond_30

    const-string v6, "b8dd3osvpux1pu"

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_30
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v6, 0x50

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    :goto_38
    if-ge v0, v5, :cond_51

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    add-int/lit8 v6, v6, -0x2b

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_51
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d
.end method

.method static synthetic c(Lcom/bbm/ui/c/fu;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->v:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/c/fu;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/fu;->F:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .registers 9

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->E:Lcom/bbm/l/b/m;

    iget-object v1, v0, Lcom/bbm/l/b/m;->i:Ljava/util/List;

    if-eqz v1, :cond_73

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/l/b/h;

    if-eqz v0, :cond_8a

    iget-boolean v3, v0, Lcom/bbm/l/b/h;->b:Z

    if-nez v3, :cond_8a

    iget-object v3, v0, Lcom/bbm/l/b/h;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8a

    iget-boolean v4, p0, Lcom/bbm/ui/c/fu;->K:Z

    if-eqz v4, :cond_74

    new-instance v3, Landroid/widget/GridLayout$LayoutParams;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/bbm/ui/c/fu;->w:I

    iget v6, p0, Lcom/bbm/ui/c/fu;->w:I

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v3, v4}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, p0, Lcom/bbm/ui/c/fu;->y:I

    iget v5, p0, Lcom/bbm/ui/c/fu;->x:I

    iget v6, p0, Lcom/bbm/ui/c/fu;->y:I

    iget v7, p0, Lcom/bbm/ui/c/fu;->x:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    new-instance v4, Lcom/bbm/ui/ObservingImageView;

    iget-object v5, p0, Lcom/bbm/ui/c/fu;->L:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/bbm/ui/ObservingImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/bbm/ui/ObservingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/bbm/ui/c/gw;

    invoke-direct {v3, p0, v0}, Lcom/bbm/ui/c/gw;-><init>(Lcom/bbm/ui/c/fu;Lcom/bbm/l/b/h;)V

    invoke-virtual {v4, v3}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/bbm/ui/c/fu;->u:Landroid/widget/GridLayout;

    invoke-virtual {v3, v4}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/bbm/ui/c/fu;->B:Lcom/bbm/util/b/g;

    iget-object v0, v0, Lcom/bbm/l/b/h;->d:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    :goto_61
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_64
    const/16 v1, 0x14

    if-lt v0, v1, :cond_88

    :cond_68
    iget-boolean v0, p0, Lcom/bbm/ui/c/fu;->K:Z

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->u:Landroid/widget/GridLayout;

    iget-object v1, p0, Lcom/bbm/ui/c/fu;->O:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_73
    return-void

    :cond_74
    :try_start_74
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->B:Lcom/bbm/util/b/g;

    invoke-virtual {v0}, Lcom/bbm/util/b/g;->a()Lcom/bbm/util/bo;

    move-result-object v0

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/bbm/util/bo;->a(Ljava/net/URL;)V
    :try_end_82
    .catch Ljava/net/MalformedURLException; {:try_start_74 .. :try_end_82} :catch_83

    goto :goto_61

    :catch_83
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_61

    :cond_88
    move v1, v0

    goto :goto_c

    :cond_8a
    move v0, v1

    goto :goto_64
.end method

.method static synthetic d(Lcom/bbm/ui/c/fu;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/bbm/l/a;->c()Lcom/bbm/util/bh;

    move-result-object v0

    sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_16

    const-string v0, "IabHelper does not exist"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    sget-object v0, Lcom/bbm/ui/c/gy;->e:Lcom/bbm/ui/c/gy;

    invoke-direct {p0, v0}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/gy;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    if-eqz p1, :cond_15

    new-instance v0, Lcom/bbm/ui/c/gn;

    invoke-direct {v0, p0, p1}, Lcom/bbm/ui/c/gn;-><init>(Lcom/bbm/ui/c/fu;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/bbm/l/a;->a(Ljava/lang/String;Lcom/bbm/l/d/b/t;)V

    goto :goto_15
.end method

.method static synthetic d(Lcom/bbm/ui/c/fu;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/c/fu;->K:Z

    return v0
.end method

.method static synthetic e(Lcom/bbm/ui/c/fu;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/c/fu;->c()V

    return-void
.end method

.method static synthetic f(Lcom/bbm/ui/c/fu;)Lcom/bbm/c/q;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->J:Lcom/bbm/c/q;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/c/fu;)Lcom/bbm/l/b/m;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->E:Lcom/bbm/l/b/m;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/c/fu;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/c/fu;)V
    .registers 3

    new-instance v0, Lcom/bbm/ui/c/gf;

    iget-object v1, p0, Lcom/bbm/ui/c/fu;->L:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/c/gf;-><init>(Lcom/bbm/ui/c/fu;Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic j(Lcom/bbm/ui/c/fu;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->T:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/c/fu;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->S:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/bbm/ui/c/fu;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->L:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lcom/bbm/ui/c/fu;)Lcom/bbm/j/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->V:Lcom/bbm/j/a;

    return-object v0
.end method

.method static synthetic n(Lcom/bbm/ui/c/fu;)Lcom/bbm/ui/activities/StickerDetailsActivity;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->M:Lcom/bbm/ui/activities/StickerDetailsActivity;

    return-object v0
.end method

.method static synthetic o(Lcom/bbm/ui/c/fu;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->F:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/bbm/ui/c/fu;)Lcom/bbm/l/d/b/x;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->N:Lcom/bbm/l/d/b/x;

    return-object v0
.end method

.method static synthetic q(Lcom/bbm/ui/c/fu;)Lcom/bbm/ui/c/gy;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->U:Lcom/bbm/ui/c/gy;

    return-object v0
.end method

.method static synthetic r(Lcom/bbm/ui/c/fu;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/c/fu;->W:Z

    return v0
.end method

.method static synthetic s(Lcom/bbm/ui/c/fu;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/c/fu;->W:Z

    return v0
.end method

.method static synthetic t(Lcom/bbm/ui/c/fu;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/bbm/ui/c/fu;)Lcom/bbm/util/bo;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->z:Lcom/bbm/util/bo;

    return-object v0
.end method

.method static synthetic v(Lcom/bbm/ui/c/fu;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic w(Lcom/bbm/ui/c/fu;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->n:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/ct;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->S:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/ui/c/fu;->T:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Lcom/bbm/util/bz;

    iget-object v1, p0, Lcom/bbm/ui/c/fu;->M:Lcom/bbm/ui/activities/StickerDetailsActivity;

    const/4 v2, -0x1

    sget-object v3, Lcom/bbm/util/br;->a:Lcom/bbm/util/br;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/bbm/util/bz;-><init>(Lcom/bbm/ui/activities/ajy;ZILcom/bbm/util/br;)V

    iget-object v1, p0, Lcom/bbm/ui/c/fu;->E:Lcom/bbm/l/b/m;

    iget-object v1, v1, Lcom/bbm/l/b/l;->a:Ljava/lang/String;

    new-instance v2, Lcom/bbm/ui/c/gc;

    invoke-direct {v2, p0}, Lcom/bbm/ui/c/gc;-><init>(Lcom/bbm/ui/c/fu;)V

    invoke-static {v0, v1, v4, v2}, Lcom/bbm/l/c/b;->a(Lcom/bbm/util/bo;Ljava/lang/String;ZLcom/bbm/l/c/d;)V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/c/ga;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/ga;-><init>(Lcom/bbm/ui/c/fu;)V

    new-instance v2, Lcom/bbm/ui/c/gb;

    invoke-direct {v2, p0}, Lcom/bbm/ui/c/gb;-><init>(Lcom/bbm/ui/c/fu;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v5, 0x7f0f0009

    invoke-direct {v4, v0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0e051d

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0e051c

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0e0665

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0e0533

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_3b
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :try_start_3
    move-object v0, p1

    check-cast v0, Lcom/bbm/ui/activities/StickerDetailsActivity;

    move-object v1, v0

    iput-object v1, p0, Lcom/bbm/ui/c/fu;->M:Lcom/bbm/ui/activities/StickerDetailsActivity;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be a StickerDetailsActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14

    const v8, 0x93a80

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->L:Landroid/content/Context;

    const v0, 0x7f030097

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const-string v0, "onCreateView"

    const-class v6, Lcom/bbm/ui/c/fu;

    invoke-static {v0, v6}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v0, Lcom/bbm/util/bz;

    iget-object v6, p0, Lcom/bbm/ui/c/fu;->M:Lcom/bbm/ui/activities/StickerDetailsActivity;

    sget-object v7, Lcom/bbm/util/br;->a:Lcom/bbm/util/br;

    invoke-direct {v0, v6, v2, v8, v7}, Lcom/bbm/util/bz;-><init>(Lcom/bbm/ui/activities/ajy;ZILcom/bbm/util/br;)V

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->z:Lcom/bbm/util/bo;

    new-instance v0, Lcom/bbm/util/bz;

    iget-object v6, p0, Lcom/bbm/ui/c/fu;->M:Lcom/bbm/ui/activities/StickerDetailsActivity;

    sget-object v7, Lcom/bbm/util/br;->b:Lcom/bbm/util/br;

    invoke-direct {v0, v6, v2, v8, v7}, Lcom/bbm/util/bz;-><init>(Lcom/bbm/ui/activities/ajy;ZILcom/bbm/util/br;)V

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->A:Lcom/bbm/util/bo;

    new-instance v0, Lcom/bbm/util/b/f;

    invoke-direct {v0}, Lcom/bbm/util/b/f;-><init>()V

    const/high16 v6, 0x3e00

    invoke-virtual {v0, v6}, Lcom/bbm/util/b/f;->a(F)V

    new-instance v6, Lcom/bbm/util/b/g;

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0366

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;I)V

    iput-object v6, p0, Lcom/bbm/ui/c/fu;->C:Lcom/bbm/util/b/g;

    iget-object v6, p0, Lcom/bbm/ui/c/fu;->C:Lcom/bbm/util/b/g;

    const v7, 0x7f0200d6

    invoke-virtual {v6, v7}, Lcom/bbm/util/b/g;->a(I)V

    iget-object v6, p0, Lcom/bbm/ui/c/fu;->C:Lcom/bbm/util/b/g;

    iget-object v7, p0, Lcom/bbm/ui/c/fu;->A:Lcom/bbm/util/bo;

    invoke-virtual {v6, v7}, Lcom/bbm/util/b/g;->a(Lcom/bbm/util/bo;)V

    iget-object v6, p0, Lcom/bbm/ui/c/fu;->C:Lcom/bbm/util/b/g;

    invoke-virtual {v6, v0}, Lcom/bbm/util/b/g;->a(Lcom/bbm/util/b/f;)V

    new-instance v6, Lcom/bbm/util/b/g;

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0371

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;I)V

    iput-object v6, p0, Lcom/bbm/ui/c/fu;->B:Lcom/bbm/util/b/g;

    iget-object v6, p0, Lcom/bbm/ui/c/fu;->B:Lcom/bbm/util/b/g;

    const v7, 0x7f0203f4

    invoke-virtual {v6, v7}, Lcom/bbm/util/b/g;->a(I)V

    iget-object v6, p0, Lcom/bbm/ui/c/fu;->B:Lcom/bbm/util/b/g;

    iget-object v7, p0, Lcom/bbm/ui/c/fu;->A:Lcom/bbm/util/bo;

    invoke-virtual {v6, v7}, Lcom/bbm/util/b/g;->a(Lcom/bbm/util/bo;)V

    iget-object v6, p0, Lcom/bbm/ui/c/fu;->B:Lcom/bbm/util/b/g;

    invoke-virtual {v6, v0}, Lcom/bbm/util/b/g;->a(Lcom/bbm/util/b/f;)V

    new-instance v6, Lcom/bbm/util/b/g;

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;I)V

    iput-object v6, p0, Lcom/bbm/ui/c/fu;->D:Lcom/bbm/util/b/g;

    iget-object v6, p0, Lcom/bbm/ui/c/fu;->D:Lcom/bbm/util/b/g;

    const v7, 0x7f0203f3

    invoke-virtual {v6, v7}, Lcom/bbm/util/b/g;->a(I)V

    iget-object v6, p0, Lcom/bbm/ui/c/fu;->D:Lcom/bbm/util/b/g;

    iget-object v7, p0, Lcom/bbm/ui/c/fu;->A:Lcom/bbm/util/bo;

    invoke-virtual {v6, v7}, Lcom/bbm/util/b/g;->a(Lcom/bbm/util/bo;)V

    iget-object v6, p0, Lcom/bbm/ui/c/fu;->D:Lcom/bbm/util/b/g;

    invoke-virtual {v6, v0}, Lcom/bbm/util/b/g;->a(Lcom/bbm/util/b/f;)V

    const v0, 0x7f0a03bd

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->b:Landroid/widget/TextView;

    const v0, 0x7f0a03be

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->c:Landroid/widget/TextView;

    const v0, 0x7f0a03c8

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->e:Landroid/widget/TextView;

    const v0, 0x7f0a03c2

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->k:Landroid/widget/TextView;

    const v0, 0x7f0a03c6

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->d:Landroid/widget/TextView;

    const v0, 0x7f0a03cc

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->f:Landroid/widget/TextView;

    const v0, 0x7f0a03c7

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->g:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a03c5

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->u:Landroid/widget/GridLayout;

    const v0, 0x7f0a03c4

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->v:Landroid/widget/ImageView;

    const v0, 0x7f0a03d0

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->l:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a03c9

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->h:Landroid/widget/TextView;

    const v0, 0x7f0a03cb

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->i:Landroid/widget/TextView;

    const v0, 0x7f0a03ca

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->j:Landroid/widget/TextView;

    const v0, 0x7f0a03cd

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->n:Landroid/view/View;

    const v0, 0x7f0a02ea

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->o:Landroid/view/View;

    const v0, 0x7f0a03c0

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->r:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->t:Landroid/content/res/ColorStateList;

    const v0, 0x7f0a03c1

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->s:Landroid/widget/ProgressBar;

    const v0, 0x7f0a03d1

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->m:Landroid/widget/ImageView;

    new-instance v6, Lcom/bbm/ui/c/gk;

    invoke-direct {v6, p0}, Lcom/bbm/ui/c/gk;-><init>(Lcom/bbm/ui/c/fu;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03cf

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->p:Landroid/widget/TextView;

    const v0, 0x7f0a03ce

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->L:Landroid/content/Context;

    const v6, 0x7f040001

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->O:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->L:Landroid/content/Context;

    const v6, 0x7f040010

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->P:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->L:Landroid/content/Context;

    const v6, 0x7f040011

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->Q:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_1d1

    move-object v0, v1

    :goto_1be
    invoke-virtual {p0}, Lcom/bbm/ui/c/fu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1d8

    :goto_1c8
    const-string v3, "Must provide a sticker pack ID to fragment"

    invoke-static {v7, v2, v3}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1da

    :goto_1d0
    return-object v1

    :cond_1d1
    const-string v0, "pack_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1be

    :cond_1d8
    move v2, v3

    goto :goto_1c8

    :cond_1da
    iput-object v0, p0, Lcom/bbm/ui/c/fu;->G:Ljava/lang/String;

    if-eqz v6, :cond_1f0

    const-string v0, "viewSource"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f0

    const-string v0, "viewSource"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bbm/c/q;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->J:Lcom/bbm/c/q;

    :cond_1f0
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->J:Lcom/bbm/c/q;

    if-nez v0, :cond_1f8

    sget-object v0, Lcom/bbm/c/q;->a:Lcom/bbm/c/q;

    iput-object v0, p0, Lcom/bbm/ui/c/fu;->J:Lcom/bbm/c/q;

    :cond_1f8
    if-eqz v6, :cond_21d

    const-string v0, "storeGridLocation"

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_200
    iput v0, p0, Lcom/bbm/ui/c/fu;->I:I

    if-eqz v6, :cond_21f

    const-string v0, "externalStickerId"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_20a
    iput-object v0, p0, Lcom/bbm/ui/c/fu;->H:Ljava/lang/String;

    if-nez v6, :cond_221

    :goto_20e
    if-eqz v1, :cond_213

    invoke-direct {p0, v1}, Lcom/bbm/ui/c/fu;->a(Ljava/lang/String;)V

    :cond_213
    new-instance v0, Lcom/bbm/ui/c/gs;

    invoke-direct {v0, p0, v5}, Lcom/bbm/ui/c/gs;-><init>(Lcom/bbm/ui/c/fu;Landroid/view/View;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    move-object v1, v5

    goto :goto_1d0

    :cond_21d
    move v0, v4

    goto :goto_200

    :cond_21f
    move-object v0, v1

    goto :goto_20a

    :cond_221
    const-string v0, "showStickerDetail"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20e
.end method

.method public onDestroy()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->u:Landroid/widget/GridLayout;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->u:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/bbm/ui/c/fu;->u:Landroid/widget/GridLayout;

    :cond_c
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->M:Lcom/bbm/ui/activities/StickerDetailsActivity;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->B:Lcom/bbm/util/b/g;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->B:Lcom/bbm/util/b/g;

    iget-object v1, p0, Lcom/bbm/ui/c/fu;->M:Lcom/bbm/ui/activities/StickerDetailsActivity;

    invoke-virtual {v0, v1}, Lcom/bbm/util/b/g;->a(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/bbm/ui/c/fu;->B:Lcom/bbm/util/b/g;

    :cond_1d
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->C:Lcom/bbm/util/b/g;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->C:Lcom/bbm/util/b/g;

    iget-object v1, p0, Lcom/bbm/ui/c/fu;->M:Lcom/bbm/ui/activities/StickerDetailsActivity;

    invoke-virtual {v0, v1}, Lcom/bbm/util/b/g;->a(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/bbm/ui/c/fu;->C:Lcom/bbm/util/b/g;

    :cond_2a
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->D:Lcom/bbm/util/b/g;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->D:Lcom/bbm/util/b/g;

    iget-object v1, p0, Lcom/bbm/ui/c/fu;->M:Lcom/bbm/ui/activities/StickerDetailsActivity;

    invoke-virtual {v0, v1}, Lcom/bbm/util/b/g;->a(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/bbm/ui/c/fu;->D:Lcom/bbm/util/b/g;

    :cond_37
    iput-object v2, p0, Lcom/bbm/ui/c/fu;->M:Lcom/bbm/ui/activities/StickerDetailsActivity;

    :cond_39
    iget-object v0, p0, Lcom/bbm/ui/c/fu;->g:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->b()V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->l:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->b()V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->X:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/c/fu;->X:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method
