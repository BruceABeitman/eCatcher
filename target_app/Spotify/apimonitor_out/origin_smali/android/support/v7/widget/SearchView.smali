.class public Landroid/support/v7/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/b/b;


# static fields
.field static final a:Landroid/support/v7/widget/a;


# instance fields
.field private A:Ljava/lang/CharSequence;

.field private B:Z

.field private C:I

.field private D:Landroid/app/SearchableInfo;

.field private E:Landroid/os/Bundle;

.field private F:Ljava/lang/Runnable;

.field private G:Ljava/lang/Runnable;

.field private H:Ljava/lang/Runnable;

.field private final I:Landroid/content/Intent;

.field private final J:Landroid/content/Intent;

.field private final K:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final L:Landroid/view/View$OnClickListener;

.field private final M:Landroid/widget/TextView$OnEditorActionListener;

.field private final N:Landroid/widget/AdapterView$OnItemClickListener;

.field private final O:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private P:Landroid/text/TextWatcher;

.field b:Landroid/view/View$OnKeyListener;

.field private c:Landroid/support/v7/widget/c;

.field private d:Landroid/support/v7/widget/b;

.field private e:Landroid/view/View$OnFocusChangeListener;

.field private f:Landroid/support/v7/widget/d;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Z

.field private i:Z

.field private j:Landroid/support/v4/widget/b;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/ImageView;

.field private u:Z

.field private v:Ljava/lang/CharSequence;

.field private w:Z

.field private x:I

.field private y:Z

.field private z:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v7/widget/a;

    invoke-direct {v0}, Landroid/support/v7/widget/a;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const/high16 v6, 0x1000

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/support/v7/widget/SearchView$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$1;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->F:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/widget/SearchView$5;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$5;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->G:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/widget/SearchView$6;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$6;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Ljava/util/WeakHashMap;

    new-instance v0, Landroid/support/v7/widget/SearchView$10;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$10;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/support/v7/widget/SearchView$11;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$11;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/view/View$OnKeyListener;

    new-instance v0, Landroid/support/v7/widget/SearchView$12;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$12;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v0, Landroid/support/v7/widget/SearchView$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$2;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->N:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Landroid/support/v7/widget/SearchView$3;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$3;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->O:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Landroid/support/v7/widget/SearchView$4;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$4;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->P:Landroid/text/TextWatcher;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/a/h;->p:I

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Landroid/support/v7/a/f;->t:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/view/View;

    sget v0, Landroid/support/v7/a/f;->z:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a(Landroid/support/v7/widget/SearchView;)V

    sget v0, Landroid/support/v7/a/f;->v:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/view/View;

    sget v0, Landroid/support/v7/a/f;->y:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/view/View;

    sget v0, Landroid/support/v7/a/f;->D:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->n:Landroid/view/View;

    sget v0, Landroid/support/v7/a/f;->w:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/view/View;

    sget v0, Landroid/support/v7/a/f;->u:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/widget/ImageView;

    sget v0, Landroid/support/v7/a/f;->A:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/view/View;

    sget v0, Landroid/support/v7/a/f;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->t:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->P:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->N:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->O:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    new-instance v1, Landroid/support/v7/widget/SearchView$7;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SearchView$7;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v0, Landroid/support/v7/a/k;->m:[I

    invoke-virtual {p1, p2, v0, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iget-boolean v2, p0, Landroid/support/v7/widget/SearchView;->h:Z

    if-eq v2, v1, :cond_115

    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->h:Z

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->a(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->i()V

    :cond_115
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-eq v1, v3, :cond_120

    iput v1, p0, Landroid/support/v7/widget/SearchView;->x:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    :cond_120
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_130

    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->v:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->i()V

    :cond_130
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v3, :cond_13c

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    :cond_13c
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v3, :cond_147

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    :cond_147
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Landroid/support/v7/a/k;->p:[I

    invoke-virtual {p1, p2, v0, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->setFocusable(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->I:Landroid/content/Intent;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->I:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->I:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->J:Landroid/content/Intent;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->J:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/view/View;

    if-eqz v0, :cond_19f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1a8

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/view/View;

    new-instance v1, Landroid/support/v7/widget/SearchView$8;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SearchView$8;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_19f
    :goto_19f
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->h:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->i()V

    return-void

    :cond_1a8
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/SearchView$9;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SearchView$9;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_19f
.end method

.method private a(Landroid/database/Cursor;)Landroid/content/Intent;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "suggest_intent_action"

    invoke-static {p1, v0}, Landroid/support/v7/widget/e;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v0

    :cond_f
    if-nez v0, :cond_85

    const-string v0, "android.intent.action.SEARCH"

    move-object v2, v0

    :goto_14
    const-string v0, "suggest_intent_data"

    invoke-static {p1, v0}, Landroid/support/v7/widget/e;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v0

    :cond_22
    if-eqz v0, :cond_47

    const-string v3, "suggest_intent_data_id"

    invoke-static {p1, v3}, Landroid/support/v7/widget/e;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_47

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_47
    if-nez v0, :cond_5b

    move-object v0, v1

    :goto_4a
    const-string v3, "suggest_intent_query"

    invoke-static {p1, v3}, Landroid/support/v7/widget/e;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "suggest_intent_extra_data"

    invoke-static {p1, v4}, Landroid/support/v7/widget/e;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v0, v4, v3}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_5a
    return-object v0

    :cond_5b
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_5e} :catch_60

    move-result-object v0

    goto :goto_4a

    :catch_60
    move-exception v0

    move-object v2, v0

    :try_start_62
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_65} :catch_82

    move-result v0

    :goto_66
    const-string v3, "SearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Search suggestions cursor at row "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " returned exception."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_5a

    :catch_82
    move-exception v0

    const/4 v0, -0x1

    goto :goto_66

    :cond_85
    move-object v2, v0

    goto :goto_14
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_f

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_f
    const-string v1, "user_query"

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->A:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1d

    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1d
    if-eqz p3, :cond_24

    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_24
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->E:Landroid/os/Bundle;

    if-eqz v1, :cond_2f

    const-string v1, "app_data"

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->E:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2f
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v1, :cond_24

    sget-object v0, Landroid/support/v7/widget/SearchView;->FOCUSED_STATE_SET:[I

    :goto_10
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v1, :cond_27

    sget-object v0, Landroid/support/v7/widget/SearchView;->FOCUSED_STATE_SET:[I

    :goto_1d
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->invalidate()V

    return-void

    :cond_24
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_10

    :cond_27
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_1d
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;Ljava/lang/CharSequence;)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->A:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v1

    :goto_11
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->b(Z)V

    if-nez v0, :cond_39

    :goto_16
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->d(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->g()V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->f()V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/c;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Ljava/lang/CharSequence;

    return-void

    :cond_37
    move v0, v2

    goto :goto_11

    :cond_39
    move v1, v2

    goto :goto_16
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    const-string v0, "android.intent.action.SEARCH"

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Z)V
    .registers 8

    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->i:Z

    if-eqz p1, :cond_3b

    move v0, v1

    :goto_9
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    move v3, v4

    :goto_16
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->b(Z)V

    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/view/View;

    if-eqz p1, :cond_3f

    move v0, v2

    :goto_23
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->t:Landroid/widget/ImageView;

    iget-boolean v5, p0, Landroid/support/v7/widget/SearchView;->h:Z

    if-eqz v5, :cond_41

    :goto_2c
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->g()V

    if-nez v3, :cond_43

    :goto_34
    invoke-direct {p0, v4}, Landroid/support/v7/widget/SearchView;->d(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->f()V

    return-void

    :cond_3b
    move v0, v2

    goto :goto_9

    :cond_3d
    move v3, v1

    goto :goto_16

    :cond_3f
    move v0, v1

    goto :goto_23

    :cond_41
    move v2, v1

    goto :goto_2c

    :cond_43
    move v4, v1

    goto :goto_34
.end method

.method private a(I)Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/support/v7/widget/d;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/support/v7/widget/d;

    invoke-interface {v1}, Landroid/support/v7/widget/d;->b()Z

    move-result v1

    if-nez v1, :cond_31

    :cond_d
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/support/v4/widget/b;

    invoke-virtual {v1}, Landroid/support/v4/widget/b;->a()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->a(Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_28

    :try_start_21
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_28} :catch_32

    :cond_28
    :goto_28
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->c(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    const/4 v0, 0x1

    :cond_31
    return v0

    :catch_32
    move-exception v1

    const-string v3, "SearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed launch activity: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method static a(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;I)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->a(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/16 v2, 0x15

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/support/v4/widget/b;

    if-eqz v0, :cond_2d

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {p2}, Landroid/support/v4/view/s;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v0, 0x42

    if-eq p1, v0, :cond_23

    const/16 v0, 0x54

    if-eq p1, v0, :cond_23

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_2e

    :cond_23
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(I)Z

    move-result v1

    :cond_2d
    :goto_2d
    return v1

    :cond_2e
    if-eq p1, v2, :cond_34

    const/16 v0, 0x16

    if-ne p1, v0, :cond_56

    :cond_34
    if-ne p1, v2, :cond_4f

    move v0, v1

    :goto_37
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    sget-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/a;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a;->c(Landroid/widget/AutoCompleteTextView;)V

    const/4 v1, 0x1

    goto :goto_2d

    :cond_4f
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v0

    goto :goto_37

    :cond_56
    const/16 v0, 0x13

    if-ne p1, v0, :cond_2d

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    goto :goto_2d
.end method

.method static synthetic b(Landroid/support/v7/widget/SearchView;)Landroid/support/v4/widget/b;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/support/v4/widget/b;

    return-object v0
.end method

.method private b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->h:Z

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "   "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/v7/a/c;->l:I

    invoke-virtual {v3, v4, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v6, v6, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x2

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v7, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v0

    goto :goto_6
.end method

.method private b(Z)V
    .registers 4

    const/16 v0, 0x8

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->u:Z

    if-eqz v1, :cond_19

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->e()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_19

    if-nez p1, :cond_18

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->y:Z

    if-nez v1, :cond_19

    :cond_18
    const/4 v0, 0x0

    :cond_19
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/SearchView;I)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/support/v7/widget/d;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/support/v7/widget/d;

    invoke-interface {v0}, Landroid/support/v7/widget/d;->a()Z

    move-result v0

    if-nez v0, :cond_35

    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/support/v4/widget/b;

    invoke-virtual {v1}, Landroid/support/v4/widget/b;->a()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/support/v4/widget/b;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/b;->c(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->c(Ljava/lang/CharSequence;)V

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    :goto_2c
    return v0

    :cond_2d
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->c(Ljava/lang/CharSequence;)V

    goto :goto_2b

    :cond_31
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->c(Ljava/lang/CharSequence;)V

    goto :goto_2b

    :cond_35
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method static synthetic c(Landroid/support/v7/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->e:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method private c(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    return-void

    :cond_12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_e
.end method

.method private c(Z)V
    .registers 5

    if-eqz p1, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->F:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->F:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_7
.end method

.method private d()I
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/a/e;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic d(Landroid/support/v7/widget/SearchView;)V
    .registers 6

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_53

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->h:Z

    if-eqz v3, :cond_54

    sget v3, Landroid/support/v7/a/e;->d:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Landroid/support/v7/a/e;->e:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v3

    :goto_2d
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    sub-int v3, v1, v3

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    :cond_53
    return-void

    :cond_54
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private d(Z)V
    .registers 5

    const/16 v1, 0x8

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->y:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->i:Z

    if-nez v0, :cond_18

    if-eqz p1, :cond_18

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_12
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_18
    move v0, v1

    goto :goto_12
.end method

.method static synthetic e(Landroid/support/v7/widget/SearchView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/view/View;

    return-object v0
.end method

.method private e()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->u:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->y:Z

    if-eqz v0, :cond_e

    :cond_8
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->i:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private f()V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->e()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_19

    :cond_18
    const/4 v0, 0x0

    :cond_19
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic f(Landroid/support/v7/widget/SearchView;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->j()V

    return-void
.end method

.method static synthetic g(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method private g()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    move v2, v0

    :goto_f
    if-nez v2, :cond_19

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->h:Z

    if-eqz v3, :cond_30

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->B:Z

    if-nez v3, :cond_30

    :cond_19
    :goto_19
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_32

    :goto_1d
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v2, :cond_35

    sget-object v0, Landroid/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_2a
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    :cond_2e
    move v2, v1

    goto :goto_f

    :cond_30
    move v0, v1

    goto :goto_19

    :cond_32
    const/16 v1, 0x8

    goto :goto_1d

    :cond_35
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_2a
.end method

.method private h()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->G:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic h(Landroid/support/v7/widget/SearchView;)V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->h:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/b;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/support/v7/widget/b;

    invoke-interface {v0}, Landroid/support/v7/widget/b;->a()Z

    move-result v0

    if-nez v0, :cond_23

    :cond_1d
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->a(Z)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->c(Z)V

    goto :goto_23
.end method

.method static synthetic i(Landroid/support/v7/widget/SearchView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/view/View;

    return-object v0
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->v:Ljava/lang/CharSequence;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->v:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_25
    if-eqz v0, :cond_f

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_31
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method private j()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->c(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_16
    return-void
.end method

.method static synthetic j(Landroid/support/v7/widget/SearchView;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_31

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/c;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/c;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-interface {v1}, Landroid/support/v7/widget/c;->a()Z

    move-result v1

    if-nez v1, :cond_31

    :cond_1d
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->c(Z)V

    :cond_2c
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    :cond_31
    return-void
.end method

.method static synthetic k(Landroid/support/v7/widget/SearchView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/view/View;

    return-object v0
.end method

.method private k()V
    .registers 3

    sget-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/a;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a;->a(Landroid/widget/AutoCompleteTextView;)V

    sget-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/a;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a;->b(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic l(Landroid/support/v7/widget/SearchView;)V
    .registers 12

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_26

    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/app/SearchableInfo;

    :try_start_7
    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->I:Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    const-string v3, "calling_package"

    if-nez v1, :cond_27

    :goto_1c
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_2c
    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->J:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v6

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v7, 0x4000

    invoke-static {v3, v4, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->E:Landroid/os/Bundle;

    if-eqz v2, :cond_5d

    const-string v2, "app_data"

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->E:Landroid/os/Bundle;

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_5d
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v2, "free_form"

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v3

    if-eqz v3, :cond_e0

    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    :goto_78
    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v2

    if-eqz v2, :cond_de

    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_87
    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v2

    if-eqz v2, :cond_dc

    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_95
    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_9f

    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v1

    :cond_9f
    const-string v5, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "calling_package"

    if-nez v6, :cond_d7

    :goto_b7
    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_cb
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_cb} :catch_cd

    goto/16 :goto_26

    :catch_cd
    move-exception v0

    const-string v0, "SearchView"

    const-string v1, "Could not find voice search activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    :cond_d7
    :try_start_d7
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;
    :try_end_da
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d7 .. :try_end_da} :catch_cd

    move-result-object v0

    goto :goto_b7

    :cond_dc
    move-object v2, v0

    goto :goto_95

    :cond_de
    move-object v3, v0

    goto :goto_87

    :cond_e0
    move-object v4, v2

    goto :goto_78
.end method

.method static synthetic m(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    return-object v0
.end method

.method static synthetic n(Landroid/support/v7/widget/SearchView;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->k()V

    return-void
.end method

.method static synthetic o(Landroid/support/v7/widget/SearchView;)Landroid/app/SearchableInfo;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method static synthetic p(Landroid/support/v7/widget/SearchView;)V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->c(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->B:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->B:Z

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->C:I

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->C:I

    const/high16 v2, 0x200

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->j()V

    goto :goto_4
.end method

.method final a(Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b()V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->C:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->B:Z

    return-void
.end method

.method final c()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->i:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->h()V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->k()V

    :cond_13
    return-void
.end method

.method public clearFocus()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->w:Z

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->c(Z)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->w:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->G:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/app/SearchableInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .registers 5

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->i:Z

    if-eqz v0, :cond_8

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :goto_7
    return-void

    :cond_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v1, :sswitch_data_48

    :cond_13
    :goto_13
    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_7

    :sswitch_1d
    iget v1, p0, Landroid/support/v7/widget/SearchView;->x:I

    if-lez v1, :cond_28

    iget v1, p0, Landroid/support/v7/widget/SearchView;->x:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_13

    :cond_28
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->d()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_13

    :sswitch_31
    iget v1, p0, Landroid/support/v7/widget/SearchView;->x:I

    if-lez v1, :cond_13

    iget v1, p0, Landroid/support/v7/widget/SearchView;->x:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_13

    :sswitch_3c
    iget v0, p0, Landroid/support/v7/widget/SearchView;->x:I

    if-lez v0, :cond_43

    iget v0, p0, Landroid/support/v7/widget/SearchView;->x:I

    goto :goto_13

    :cond_43
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->d()I

    move-result v0

    goto :goto_13

    :sswitch_data_48
    .sparse-switch
        -0x80000000 -> :sswitch_1d
        0x0 -> :sswitch_3c
        0x40000000 -> :sswitch_31
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->h()V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->w:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->i:Z

    if-nez v1, :cond_1d

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    :cond_1b
    move v0, v1

    goto :goto_5

    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_5
.end method
