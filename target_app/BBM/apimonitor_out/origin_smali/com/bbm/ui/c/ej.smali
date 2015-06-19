.class public Lcom/bbm/ui/c/ej;
.super Landroid/app/Fragment;
.source "OwnProfileDetailsFragment.java"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/bbm/ui/c/ev;

.field public final c:Lcom/bbm/ui/c/eu;

.field d:Lcom/bbm/j/k;

.field private e:Landroid/widget/EditText;

.field private f:Lcom/bbm/ui/LocationTimezoneContainer;

.field private g:Landroid/view/animation/Animation;

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation;

.field private k:Landroid/view/animation/AnimationSet;

.field private l:Landroid/view/animation/AnimationSet;

.field private final m:Lcom/bbm/d/a;

.field private n:Landroid/widget/Spinner;

.field private o:Lcom/bbm/ui/l;

.field private final p:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/bbm/ui/q;

.field private r:Landroid/content/SharedPreferences;

.field private s:Landroid/widget/TextView;

.field private t:Ljava/lang/String;

.field private final u:Landroid/view/View$OnClickListener;

.field private final v:Landroid/widget/TextView$OnEditorActionListener;

.field private final w:Landroid/view/View$OnKeyListener;

.field private final x:Lcom/bbm/j/k;

.field private final y:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->m:Lcom/bbm/d/a;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->p:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/bbm/ui/c/ek;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/ek;-><init>(Lcom/bbm/ui/c/ej;)V

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->c:Lcom/bbm/ui/c/eu;

    new-instance v0, Lcom/bbm/ui/c/el;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/el;-><init>(Lcom/bbm/ui/c/ej;)V

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->u:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/bbm/ui/c/em;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/em;-><init>(Lcom/bbm/ui/c/ej;)V

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->v:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v0, Lcom/bbm/ui/c/en;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/en;-><init>(Lcom/bbm/ui/c/ej;)V

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->w:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/bbm/ui/c/eo;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/eo;-><init>(Lcom/bbm/ui/c/ej;)V

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->x:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/c/ep;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/ep;-><init>(Lcom/bbm/ui/c/ej;)V

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->y:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/c/er;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/er;-><init>(Lcom/bbm/ui/c/ej;)V

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->d:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/c/ej;Lcom/bbm/ui/l;)Lcom/bbm/ui/l;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/ej;->o:Lcom/bbm/ui/l;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/c/ej;Lcom/bbm/ui/q;)Lcom/bbm/ui/q;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/ej;->q:Lcom/bbm/ui/q;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/c/ej;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/ej;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/c/ej;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/bbm/ui/c/ej;->m:Lcom/bbm/d/a;

    invoke-virtual {v1}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/gp;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v1, p0, Lcom/bbm/ui/c/ej;->m:Lcom/bbm/d/a;

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->j(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method static synthetic b(Lcom/bbm/ui/c/ej;)V
    .registers 8

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->n:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/c/ej;->r:Landroid/content/SharedPreferences;

    const-string v2, "Status"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_1b

    iget-object v2, p0, Lcom/bbm/ui/c/ej;->n:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v1, :cond_1c

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v1, p0, Lcom/bbm/ui/c/ej;->r:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2e

    invoke-virtual {p0}, Lcom/bbm/ui/c/ej;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/c/ej;->r:Landroid/content/SharedPreferences;

    :cond_2e
    iget-object v1, p0, Lcom/bbm/ui/c/ej;->r:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_50

    const-string v1, "Status"

    iget-object v2, p0, Lcom/bbm/ui/c/ej;->n:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/bbm/ui/c/ej;->r:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_50

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_50

    iget-object v3, p0, Lcom/bbm/ui/c/ej;->r:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_50
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :try_start_5a
    const-string v3, "name"

    const-string v4, "statusMessageId"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "value"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "id"

    iget-object v6, p0, Lcom/bbm/ui/c/ej;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->m:Lcom/bbm/d/a;

    const-string v1, "global"

    invoke-static {v2, v1}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_5a .. :try_end_87} :catch_88

    goto :goto_1b

    :catch_88
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method static synthetic c(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/c/ev;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->b:Lcom/bbm/ui/c/ev;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/c/ej;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/c/ej;)Lcom/bbm/d/gp;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->m:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/LocationTimezoneContainer;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->f:Lcom/bbm/ui/LocationTimezoneContainer;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/c/ej;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->m:Lcom/bbm/d/a;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/c/ej;)Ljava/util/LinkedHashMap;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->p:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/l;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->o:Lcom/bbm/ui/l;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/c/ej;)Landroid/widget/Spinner;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->n:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/c/ej;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->r:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic l(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/q;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->q:Lcom/bbm/ui/q;

    return-object v0
.end method

.method static synthetic m(Lcom/bbm/ui/c/ej;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/bbm/ui/c/ej;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->s:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "onCreate"

    const-class v1, Lcom/bbm/ui/c/ej;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12

    const v0, 0x7f030091

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->r:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/bbm/ui/c/ej;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->r:Landroid/content/SharedPreferences;

    :cond_1a
    const-string v0, "onCreateView"

    const-class v1, Lcom/bbm/ui/c/ej;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const v0, 0x7f0a03a8

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/bbm/ui/c/ej;->w:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/bbm/ui/c/ej;->v:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->e:Landroid/widget/EditText;

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a04e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e05e1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a03aa

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->s:Landroid/widget/TextView;

    const v0, 0x7f0a03ab

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/bbm/ui/c/es;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/es;-><init>(Lcom/bbm/ui/c/ej;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03ac

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/bbm/ui/c/et;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/et;-><init>(Lcom/bbm/ui/c/ej;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03ad

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/LocationTimezoneContainer;

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->f:Lcom/bbm/ui/LocationTimezoneContainer;

    invoke-virtual {p0}, Lcom/bbm/ui/c/ej;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/bbm/ui/c/ej;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->g:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->g:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->g:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->h:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->h:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->h:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x4334

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->j:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->j:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->j:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x4334

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->i:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->i:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->i:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->k:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->l:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->k:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/bbm/ui/c/ej;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->k:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/bbm/ui/c/ej;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->k:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->k:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->l:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/bbm/ui/c/ej;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->l:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/bbm/ui/c/ej;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->l:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->l:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const v0, 0x7f0a03a9

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/bbm/ui/c/ej;->n:Landroid/widget/Spinner;

    return-object v7
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->d:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->x:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->y:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    const-string v0, "onPause"

    const-class v1, Lcom/bbm/ui/c/ej;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->d:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->x:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->y:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    const-string v0, "onResume"

    const-class v2, Lcom/bbm/ui/c/ej;

    invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->r:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bbm/ui/c/ej;->r:Landroid/content/SharedPreferences;

    const-string v2, "Status"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/bbm/ui/c/ej;->o:Lcom/bbm/ui/l;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/bbm/ui/c/ej;->o:Lcom/bbm/ui/l;

    invoke-virtual {v2}, Lcom/bbm/ui/l;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_32

    :cond_31
    move v0, v1

    :cond_32
    iget-object v1, p0, Lcom/bbm/ui/c/ej;->n:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_37
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method
