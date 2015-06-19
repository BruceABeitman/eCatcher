.class public Landroid/support/v7/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.implements Landroid/support/v7/b/c;
.field static final a:Landroid/support/v7/widget/d; = null
.field private static final c:Z = false
.field private static final d:Ljava/lang/String; = "SearchView"
.field private static final e:Ljava/lang/String; = "nm"
.field private A:Z
.field private B:I
.field private C:Z
.field private D:Ljava/lang/CharSequence;
.field private E:Ljava/lang/CharSequence;
.field private F:Z
.field private G:I
.field private H:Landroid/app/SearchableInfo;
.field private I:Landroid/os/Bundle;
.field private J:Ljava/lang/Runnable;
.field private K:Ljava/lang/Runnable;
.field private L:Ljava/lang/Runnable;
.field private final M:Landroid/content/Intent;
.field private final N:Landroid/content/Intent;
.field private final O:Ljava/util/WeakHashMap;
.field private final P:Landroid/view/View$OnClickListener;
.field private final Q:Landroid/widget/TextView$OnEditorActionListener;
.field private final R:Landroid/widget/AdapterView$OnItemClickListener;
.field private final S:Landroid/widget/AdapterView$OnItemSelectedListener;
.field private T:Landroid/text/TextWatcher;
.field  b:Landroid/view/View$OnKeyListener;
.field private f:Landroid/support/v7/widget/f;
.field private g:Landroid/support/v7/widget/e;
.field private h:Landroid/view/View$OnFocusChangeListener;
.field private i:Landroid/support/v7/widget/g;
.field private j:Landroid/view/View$OnClickListener;
.field private k:Z
.field private l:Z
.field private m:Landroid/support/v4/widget/CursorAdapter;
.field private n:Landroid/view/View;
.field private o:Landroid/view/View;
.field private p:Landroid/view/View;
.field private q:Landroid/view/View;
.field private r:Landroid/widget/ImageView;
.field private s:Landroid/view/View;
.field private t:Landroid/view/View;
.field private u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
.field private v:Landroid/view/View;
.field private w:Landroid/widget/ImageView;
.field private x:Z
.field private y:Ljava/lang/CharSequence;
.field private z:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v7/widget/d;
invoke-direct {v0}, Landroid/support/v7/widget/d;-><init>()V
sput-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/d;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->J:Ljava/lang/Runnable;
new-instance v0, Landroid/support/v7/widget/SearchView$5;
invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$5;-><init>(Landroid/support/v7/widget/SearchView;)V
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Ljava/lang/Runnable;
new-instance v0, Landroid/support/v7/widget/SearchView$6;
invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$6;-><init>(Landroid/support/v7/widget/SearchView;)V
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Ljava/lang/Runnable;
new-instance v0, Ljava/util/WeakHashMap;
invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->O:Ljava/util/WeakHashMap;
new-instance v0, Landroid/support/v7/widget/SearchView$10;
invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$10;-><init>(Landroid/support/v7/widget/SearchView;)V
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->P:Landroid/view/View$OnClickListener;
new-instance v0, Landroid/support/v7/widget/SearchView$11;
invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$11;-><init>(Landroid/support/v7/widget/SearchView;)V
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/view/View$OnKeyListener;
new-instance v0, Landroid/support/v7/widget/SearchView$12;
invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$12;-><init>(Landroid/support/v7/widget/SearchView;)V
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->Q:Landroid/widget/TextView$OnEditorActionListener;
new-instance v0, Landroid/support/v7/widget/SearchView$2;
invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$2;-><init>(Landroid/support/v7/widget/SearchView;)V
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/widget/AdapterView$OnItemClickListener;
new-instance v0, Landroid/support/v7/widget/SearchView$3;
invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$3;-><init>(Landroid/support/v7/widget/SearchView;)V
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->S:Landroid/widget/AdapterView$OnItemSelectedListener;
new-instance v0, Landroid/support/v7/widget/SearchView$4;
invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$4;-><init>(Landroid/support/v7/widget/SearchView;)V
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->T:Landroid/text/TextWatcher;
const-string v0, "layout_inflater"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
sget v1, Landroid/support/v7/a/k;->abc_search_view:I
invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
sget v0, Landroid/support/v7/a/i;->search_button:I
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->n:Landroid/view/View;
sget v0, Landroid/support/v7/a/i;->search_src_text:I
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0, p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/support/v7/widget/SearchView;)V
sget v0, Landroid/support/v7/a/i;->search_edit_frame:I
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/view/View;
sget v0, Landroid/support/v7/a/i;->search_plate:I
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/view/View;
sget v0, Landroid/support/v7/a/i;->submit_area:I
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/view/View;
sget v0, Landroid/support/v7/a/i;->search_go_btn:I
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/view/View;
sget v0, Landroid/support/v7/a/i;->search_close_btn:I
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/widget/ImageView;
sget v0, Landroid/support/v7/a/i;->search_voice_btn:I
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->t:Landroid/view/View;
sget v0, Landroid/support/v7/a/i;->search_mag_icon:I
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->w:Landroid/widget/ImageView;
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->n:Landroid/view/View;
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->P:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/widget/ImageView;
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->P:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/view/View;
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->P:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->t:Landroid/view/View;
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->P:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->P:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->T:Landroid/text/TextWatcher;
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->Q:Landroid/widget/TextView$OnEditorActionListener;
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/widget/AdapterView$OnItemClickListener;
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->S:Landroid/widget/AdapterView$OnItemSelectedListener;
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/view/View$OnKeyListener;
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
new-instance v1, Landroid/support/v7/widget/SearchView$7;
invoke-direct {v1, p0}, Landroid/support/v7/widget/SearchView$7;-><init>(Landroid/support/v7/widget/SearchView;)V
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
sget-object v0, Landroid/support/v7/a/n;->SearchView:[I
invoke-virtual {p1, p2, v0, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V
invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v1
if-eq v1, v3, :cond_115
invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->setMaxWidth(I)V
:cond_115
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_123
invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V
:cond_123
const/4 v1, 0x2
invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
if-eq v1, v3, :cond_12d
invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->setImeOptions(I)V
:cond_12d
invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
if-eq v1, v3, :cond_136
invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->setInputType(I)V
:cond_136
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
sget-object v0, Landroid/support/v7/a/n;->View:[I
invoke-virtual {p1, p2, v0, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->setFocusable(Z)V
new-instance v0, Landroid/content/Intent;
const-string v1, "android.speech.action.WEB_SEARCH"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/content/Intent;
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/content/Intent;
invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/content/Intent;
const-string v1, "android.speech.extra.LANGUAGE_MODEL"
const-string v2, "web_search"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
new-instance v0, Landroid/content/Intent;
const-string v1, "android.speech.action.RECOGNIZE_SPEECH"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->N:Landroid/content/Intent;
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->N:Landroid/content/Intent;
invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I
move-result v0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/view/View;
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/view/View;
if-eqz v0, :cond_187
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_190
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->h()V
:goto_187
:cond_187
iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->k:Z
invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->p()V
return-void
:cond_190
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->i()V
goto :goto_187
.end method
.method private a(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
.registers 6
new-instance v1, Landroid/content/Intent;
invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;
move-result-object v0
const-string v2, "calling_package"
if-nez v0, :cond_12
const/4 v0, 0x0
:goto_e
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
return-object v1
:cond_12
invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;
move-result-object v0
goto :goto_e
.end method
.method private a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
.registers 12
const/4 v7, 0x0
:try_start_1
const-string v0, "suggest_intent_action"
invoke-static {p1, v0}, Landroid/support/v7/widget/l;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_f
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;
move-result-object v1
:cond_f
if-nez v1, :cond_13
const-string v1, "android.intent.action.SEARCH"
:cond_13
const-string v0, "suggest_intent_data"
invoke-static {p1, v0}, Landroid/support/v7/widget/l;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_21
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;
move-result-object v0
:cond_21
if-eqz v0, :cond_46
const-string v2, "suggest_intent_data_id"
invoke-static {p1, v2}, Landroid/support/v7/widget/l;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_46
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "/"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_46
if-nez v0, :cond_5d
move-object v2, v7
:goto_49
const-string v0, "suggest_intent_query"
invoke-static {p1, v0}, Landroid/support/v7/widget/l;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string v0, "suggest_intent_extra_data"
invoke-static {p1, v0}, Landroid/support/v7/widget/l;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
move-object v0, p0
move v5, p2
move-object v6, p3
invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
move-result-object v0
:goto_5c
return-object v0
:cond_5d
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
:try_end_60
.catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_60} :catch_62
move-result-object v2
goto :goto_49
:catch_62
move-exception v0
move-object v1, v0
:try_start_64
invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
:try_end_67
.catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_67} :catch_88
move-result v0
:goto_68
const-string v2, "SearchView"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Search suggestions cursor at row "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, " returned exception."
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
move-object v0, v7
goto :goto_5c
:catch_88
move-exception v0
const/4 v0, -0x1
goto :goto_68
.end method
.method private a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
.registers 10
new-instance v0, Landroid/content/Intent;
invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/high16 v1, 0x1000
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
if-eqz p2, :cond_f
invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
:cond_f
const-string v1, "user_query"
iget-object v2, p0, Landroid/support/v7/widget/SearchView;->E:Ljava/lang/CharSequence;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
if-eqz p4, :cond_1d
const-string v1, "query"
invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_1d
if-eqz p3, :cond_24
const-string v1, "intent_extra_data_key"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_24
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->I:Landroid/os/Bundle;
if-eqz v1, :cond_2f
const-string v1, "app_data"
iget-object v2, p0, Landroid/support/v7/widget/SearchView;->I:Landroid/os/Bundle;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
:cond_2f
if-eqz p5, :cond_3b
const-string v1, "action_key"
invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "action_msg"
invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_3b
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
return-object v0
.end method
.method private a(ILjava/lang/String;Ljava/lang/String;)V
.registers 11
const/4 v2, 0x0
const-string v1, "android.intent.action.SEARCH"
move-object v0, p0
move-object v3, v2
move-object v4, p3
move v5, p1
move-object v6, p2
invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method private a(Landroid/content/Intent;)V
.registers 6
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
:try_start_3
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:try_end_a
.catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_a} :catch_b
goto :goto_2
:catch_b
move-exception v0
const-string v1, "SearchView"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Failed launch activity: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2
.end method
.method static synthetic a(Landroid/support/v7/widget/SearchView;)V
.registers 1
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->o()V
return-void
.end method
.method static synthetic a(Landroid/support/v7/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SearchView;->a(ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method static synthetic a(Landroid/support/v7/widget/SearchView;Ljava/lang/CharSequence;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->c(Ljava/lang/CharSequence;)V
return-void
.end method
.method static synthetic a(Landroid/support/v7/widget/SearchView;Z)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V
return-void
.end method
.method private a(Z)V
.registers 8
const/4 v4, 0x1
const/16 v2, 0x8
const/4 v1, 0x0
iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->l:Z
if-eqz p1, :cond_3b
move v0, v1
:goto_9
iget-object v3, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_3d
move v3, v4
:goto_16
iget-object v5, p0, Landroid/support/v7/widget/SearchView;->n:Landroid/view/View;
invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V
invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->b(Z)V
iget-object v5, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/view/View;
if-eqz p1, :cond_3f
move v0, v2
:goto_23
invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->w:Landroid/widget/ImageView;
iget-boolean v5, p0, Landroid/support/v7/widget/SearchView;->k:Z
if-eqz v5, :cond_41
:goto_2c
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->m()V
if-nez v3, :cond_43
:goto_34
invoke-direct {p0, v4}, Landroid/support/v7/widget/SearchView;->c(Z)V
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->l()V
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
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v7/widget/g;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v7/widget/g;
invoke-interface {v0, p1}, Landroid/support/v7/widget/g;->a(I)Z
move-result v0
if-nez v0, :cond_11
:cond_c
invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->b(I)V
const/4 v0, 0x1
:goto_10
return v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method private a(IILjava/lang/String;)Z
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v7/widget/g;
if-eqz v1, :cond_d
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v7/widget/g;
invoke-interface {v1, p1}, Landroid/support/v7/widget/g;->b(I)Z
move-result v1
if-nez v1, :cond_18
:cond_d
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/SearchView;->b(IILjava/lang/String;)Z
invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->s()V
const/4 v0, 0x1
:cond_18
return v0
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
.method static synthetic a(Landroid/support/v7/widget/SearchView;IILjava/lang/String;)Z
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SearchView;->a(IILjava/lang/String;)Z
move-result v0
return v0
.end method
.method static synthetic a(Landroid/support/v7/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SearchView;->a(Landroid/view/View;ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method private a(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 8
const/16 v3, 0x15
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
if-nez v0, :cond_9
:goto_8
:cond_8
return v1
:cond_9
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/support/v4/widget/CursorAdapter;
if-eqz v0, :cond_8
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v0
if-nez v0, :cond_8
invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z
move-result v0
if-eqz v0, :cond_8
const/16 v0, 0x42
if-eq p2, v0, :cond_25
const/16 v0, 0x54
if-eq p2, v0, :cond_25
const/16 v0, 0x3d
if-ne p2, v0, :cond_31
:cond_25
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I
move-result v0
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/SearchView;->a(IILjava/lang/String;)Z
move-result v1
goto :goto_8
:cond_31
if-eq p2, v3, :cond_37
const/16 v0, 0x16
if-ne p2, v0, :cond_59
:cond_37
if-ne p2, v3, :cond_52
move v0, v1
:goto_3a
iget-object v3, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v3, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setListSelection(I)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearListSelection()V
sget-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/d;
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/d;->a(Landroid/widget/AutoCompleteTextView;Z)V
move v1, v2
goto :goto_8
:cond_52
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I
move-result v0
goto :goto_3a
:cond_59
const/16 v0, 0x13
if-ne p2, v0, :cond_8
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I
move-result v0
if-nez v0, :cond_8
goto :goto_8
.end method
.method private b(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
.registers 13
const/4 v2, 0x0
invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;
move-result-object v5
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.SEARCH"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;
move-result-object v1
const/4 v3, 0x0
const/high16 v4, 0x4000
invoke-static {v1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v6
new-instance v7, Landroid/os/Bundle;
invoke-direct {v7}, Landroid/os/Bundle;-><init>()V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->I:Landroid/os/Bundle;
if-eqz v0, :cond_2a
const-string v0, "app_data"
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->I:Landroid/os/Bundle;
invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_2a
new-instance v8, Landroid/content/Intent;
invoke-direct {v8, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
const-string v0, "free_form"
const/4 v4, 0x1
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I
move-result v1
if-eqz v1, :cond_44
invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I
move-result v0
invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
:cond_44
invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I
move-result v1
if-eqz v1, :cond_97
invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I
move-result v1
invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
:goto_52
invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I
move-result v9
if-eqz v9, :cond_95
invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I
move-result v9
invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
:goto_60
invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I
move-result v9
if-eqz v9, :cond_6a
invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I
move-result v4
:cond_6a
const-string v9, "android.speech.extra.LANGUAGE_MODEL"
invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "android.speech.extra.PROMPT"
invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "android.speech.extra.LANGUAGE"
invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "android.speech.extra.MAX_RESULTS"
invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v0, "calling_package"
if-nez v5, :cond_90
:goto_82
invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "android.speech.extra.RESULTS_PENDINGINTENT"
invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v0, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"
invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
return-object v8
:cond_90
invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;
move-result-object v2
goto :goto_82
:cond_95
move-object v3, v2
goto :goto_60
:cond_97
move-object v1, v2
goto :goto_52
.end method
.method static synthetic b(Landroid/support/v7/widget/SearchView;)Landroid/support/v4/widget/CursorAdapter;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/support/v4/widget/CursorAdapter;
return-object v0
.end method
.method private b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.registers 9
const/4 v6, 0x0
iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->k:Z
if-nez v0, :cond_6
:goto_5
return-object p1
:cond_6
new-instance v0, Landroid/text/SpannableStringBuilder;
const-string v1, "   "
invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getSearchIconId()I
move-result v2
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iget-object v2, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getTextSize()F
move-result v2
float-to-double v2, v2
const-wide/high16 v4, 0x3ff4
mul-double/2addr v2, v4
double-to-int v2, v2
invoke-virtual {v1, v6, v6, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
new-instance v2, Landroid/text/style/ImageSpan;
invoke-direct {v2, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V
const/4 v1, 0x1
const/4 v3, 0x2
const/16 v4, 0x21
invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
move-object p1, v0
goto :goto_5
.end method
.method private b(I)V
.registers 5
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v1
if-nez v1, :cond_f
:goto_e
return-void
:cond_f
invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
move-result v2
if-eqz v2, :cond_25
iget-object v2, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v2, v1}, Landroid/support/v4/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
move-result-object v1
if-eqz v1, :cond_21
invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V
goto :goto_e
:cond_21
invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V
goto :goto_e
:cond_25
invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V
goto :goto_e
.end method
.method private b(Z)V
.registers 4
const/16 v0, 0x8
iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->x:Z
if-eqz v1, :cond_19
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->k()Z
move-result v1
if-eqz v1, :cond_19
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z
move-result v1
if-eqz v1, :cond_19
if-nez p1, :cond_18
iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->C:Z
if-nez v1, :cond_19
:cond_18
const/4 v0, 0x0
:cond_19
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method private b(IILjava/lang/String;)Z
.registers 6
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_17
invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
move-result v1
if-eqz v1, :cond_17
invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/SearchView;->a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Landroid/content/Intent;)V
const/4 v0, 0x1
:goto_16
return v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method static synthetic c(Landroid/support/v7/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->h:Landroid/view/View$OnFocusChangeListener;
return-object v0
.end method
.method private c(Ljava/lang/CharSequence;)V
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->E:Ljava/lang/CharSequence;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_3b
move v0, v1
:goto_11
invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->b(Z)V
if-nez v0, :cond_3d
:goto_16
invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->c(Z)V
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->m()V
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->l()V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/support/v7/widget/f;
if-eqz v0, :cond_34
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->D:Ljava/lang/CharSequence;
invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_34
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/support/v7/widget/f;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/support/v7/widget/f;->b(Ljava/lang/String;)Z
:cond_34
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->D:Ljava/lang/CharSequence;
return-void
:cond_3b
move v0, v2
goto :goto_11
:cond_3d
move v1, v2
goto :goto_16
.end method
.method private c(Z)V
.registers 5
const/16 v1, 0x8
iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->C:Z
if-eqz v0, :cond_1a
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->d()Z
move-result v0
if-nez v0, :cond_1a
if-eqz p1, :cond_1a
const/4 v0, 0x0
iget-object v2, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/view/View;
invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V
:goto_14
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->t:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
return-void
:cond_1a
move v0, v1
goto :goto_14
.end method
.method static synthetic d(Landroid/support/v7/widget/SearchView;)V
.registers 1
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->w()V
return-void
.end method
.method static synthetic e(Landroid/support/v7/widget/SearchView;)Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->n:Landroid/view/View;
return-object v0
.end method
.method static synthetic f(Landroid/support/v7/widget/SearchView;)V
.registers 1
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->u()V
return-void
.end method
.method static synthetic g(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/widget/ImageView;
return-object v0
.end method
.method private getPreferredWidth()I
.registers 3
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Landroid/support/v7/a/g;->abc_search_view_preferred_width:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
return v0
.end method
.method private getSearchIconId()I
.registers 5
new-instance v0, Landroid/util/TypedValue;
invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v1
sget v2, Landroid/support/v7/a/d;->searchViewSearchIcon:I
const/4 v3, 0x1
invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
iget v0, v0, Landroid/util/TypedValue;->resourceId:I
return v0
.end method
.method private h()V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/view/View;
new-instance v1, Landroid/support/v7/widget/SearchView$8;
invoke-direct {v1, p0}, Landroid/support/v7/widget/SearchView$8;-><init>(Landroid/support/v7/widget/SearchView;)V
invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
return-void
.end method
.method static synthetic h(Landroid/support/v7/widget/SearchView;)V
.registers 1
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->t()V
return-void
.end method
.method static synthetic i(Landroid/support/v7/widget/SearchView;)Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/view/View;
return-object v0
.end method
.method private i()V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
new-instance v1, Landroid/support/v7/widget/SearchView$9;
invoke-direct {v1, p0}, Landroid/support/v7/widget/SearchView$9;-><init>(Landroid/support/v7/widget/SearchView;)V
invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
return-void
.end method
.method static synthetic j(Landroid/support/v7/widget/SearchView;)V
.registers 1
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->r()V
return-void
.end method
.method private j()Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
if-eqz v1, :cond_2b
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
invoke-virtual {v1}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z
move-result v1
if-eqz v1, :cond_2b
const/4 v1, 0x0
iget-object v2, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z
move-result v2
if-eqz v2, :cond_2c
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/content/Intent;
:goto_18
:cond_18
if-eqz v1, :cond_2b
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
const/high16 v3, 0x1
invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
move-result-object v1
if-eqz v1, :cond_2b
const/4 v0, 0x1
:cond_2b
return v0
:cond_2c
iget-object v2, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z
move-result v2
if-eqz v2, :cond_18
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->N:Landroid/content/Intent;
goto :goto_18
.end method
.method static synthetic k(Landroid/support/v7/widget/SearchView;)Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->t:Landroid/view/View;
return-object v0
.end method
.method private k()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->x:Z
if-nez v0, :cond_8
iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->C:Z
if-eqz v0, :cond_10
:cond_8
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->d()Z
move-result v0
if-nez v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method private l()V
.registers 3
const/16 v0, 0x8
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->k()Z
move-result v1
if-eqz v1, :cond_19
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v1
if-eqz v1, :cond_18
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->t:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v1
if-nez v1, :cond_19
:cond_18
const/4 v0, 0x0
:cond_19
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method static synthetic l(Landroid/support/v7/widget/SearchView;)V
.registers 1
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->v()V
return-void
.end method
.method static synthetic m(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
return-object v0
.end method
.method private m()V
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;
move-result-object v2
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_2e
move v2, v0
:goto_f
if-nez v2, :cond_19
iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->k:Z
if-eqz v3, :cond_30
iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->F:Z
if-nez v3, :cond_30
:cond_19
:goto_19
iget-object v3, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/widget/ImageView;
if-eqz v0, :cond_32
:goto_1d
invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/widget/ImageView;
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
.method private n()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method static synthetic n(Landroid/support/v7/widget/SearchView;)V
.registers 1
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->x()V
return-void
.end method
.method static synthetic o(Landroid/support/v7/widget/SearchView;)Landroid/app/SearchableInfo;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
return-object v0
.end method
.method private o()V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z
move-result v1
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v2
if-eqz v1, :cond_24
sget-object v0, Landroid/support/v7/widget/SearchView;->FOCUSED_STATE_SET:[I
:goto_10
invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/view/View;
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
.method private p()V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->y:Ljava/lang/CharSequence;
if-eqz v0, :cond_10
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->y:Ljava/lang/CharSequence;
invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V
:goto_f
:cond_f
return-void
:cond_10
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
if-eqz v0, :cond_31
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I
move-result v1
if-eqz v1, :cond_25
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:cond_25
if-eqz v0, :cond_f
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V
goto :goto_f
:cond_31
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
const-string v1, ""
invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V
goto :goto_f
.end method
.method private q()V
.registers 6
const/4 v1, 0x1
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
iget-object v2, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestThreshold()I
move-result v2
invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setThreshold(I)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
iget-object v2, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
invoke-virtual {v2}, Landroid/app/SearchableInfo;->getImeOptions()I
move-result v2
invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I
move-result v0
and-int/lit8 v2, v0, 0xf
if-ne v2, v1, :cond_33
const v2, -0x10001
and-int/2addr v0, v2
iget-object v2, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_33
const/high16 v2, 0x1
or-int/2addr v0, v2
const/high16 v2, 0x8
or-int/2addr v0, v2
:cond_33
iget-object v2, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v2, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/support/v4/widget/CursorAdapter;
if-eqz v0, :cond_42
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/support/v4/widget/CursorAdapter;
const/4 v2, 0x0
invoke-virtual {v0, v2}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V
:cond_42
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_6c
new-instance v0, Landroid/support/v7/widget/l;
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
iget-object v4, p0, Landroid/support/v7/widget/SearchView;->O:Ljava/util/WeakHashMap;
invoke-direct {v0, v2, p0, v3, v4}, Landroid/support/v7/widget/l;-><init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
iput-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/support/v4/widget/CursorAdapter;
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
iget-object v2, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/support/v4/widget/CursorAdapter;
check-cast v0, Landroid/support/v7/widget/l;
iget-boolean v2, p0, Landroid/support/v7/widget/SearchView;->z:Z
if-eqz v2, :cond_69
const/4 v1, 0x2
:cond_69
invoke-virtual {v0, v1}, Landroid/support/v7/widget/l;->a(I)V
:cond_6c
return-void
.end method
.method private r()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;
move-result-object v0
if-eqz v0, :cond_31
invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I
move-result v1
if-lez v1, :cond_31
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/support/v7/widget/f;
if-eqz v1, :cond_1f
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/support/v7/widget/f;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Landroid/support/v7/widget/f;->a(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_31
:cond_1f
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
if-eqz v1, :cond_2e
const/4 v1, 0x0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v3, v1, v0}, Landroid/support/v7/widget/SearchView;->a(ILjava/lang/String;Ljava/lang/String;)V
invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V
:cond_2e
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->s()V
:cond_31
return-void
.end method
.method private s()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V
return-void
.end method
.method private setImeVisibility(Z)V
.registers 5
if-eqz p1, :cond_8
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->J:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z
:cond_7
:goto_7
return-void
:cond_8
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->J:Ljava/lang/Runnable;
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
.method private setQuery(Ljava/lang/CharSequence;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
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
.method private t()V
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_24
iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->k:Z
if-eqz v0, :cond_23
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/support/v7/widget/e;
if-eqz v0, :cond_1d
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/support/v7/widget/e;
invoke-interface {v0}, Landroid/support/v7/widget/e;->a()Z
move-result v0
if-nez v0, :cond_23
:cond_1d
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V
invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->a(Z)V
:cond_23
:goto_23
return-void
:cond_24
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z
invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V
goto :goto_23
.end method
.method private u()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z
const/4 v0, 0x1
invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/view/View$OnClickListener;
if-eqz v0, :cond_16
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/view/View$OnClickListener;
invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
:cond_16
return-void
.end method
.method private v()V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
:try_start_7
invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z
move-result v1
if-eqz v1, :cond_24
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/content/Intent;
invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SearchView;->a(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:try_end_1a
.catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_1a} :catch_1b
goto :goto_4
:catch_1b
move-exception v0
const-string v0, "SearchView"
const-string v1, "Could not find voice search activity"
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_4
:cond_24
:try_start_24
invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z
move-result v1
if-eqz v1, :cond_4
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->N:Landroid/content/Intent;
invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SearchView;->b(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:try_end_37
.catch Landroid/content/ActivityNotFoundException; {:try_start_24 .. :try_end_37} :catch_1b
goto :goto_4
.end method
.method private w()V
.registers 6
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getWidth()I
move-result v0
const/4 v1, 0x1
if-le v0, v1, :cond_53
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I
move-result v1
new-instance v2, Landroid/graphics/Rect;
invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V
iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->k:Z
if-eqz v3, :cond_54
sget v3, Landroid/support/v7/a/g;->abc_dropdownitem_icon_width:I
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v3
sget v4, Landroid/support/v7/a/g;->abc_dropdownitem_text_padding_left:I
invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
add-int/2addr v0, v3
:goto_2d
iget-object v3, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
iget v3, v2, Landroid/graphics/Rect;->left:I
add-int/2addr v3, v0
sub-int v3, v1, v3
iget-object v4, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v4, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V
iget-object v3, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getWidth()I
move-result v3
iget v4, v2, Landroid/graphics/Rect;->left:I
add-int/2addr v3, v4
iget v2, v2, Landroid/graphics/Rect;->right:I
add-int/2addr v2, v3
add-int/2addr v0, v2
sub-int/2addr v0, v1
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V
:cond_53
return-void
:cond_54
const/4 v0, 0x0
goto :goto_2d
.end method
.method private x()V
.registers 3
sget-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/d;
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0, v1}, Landroid/support/v7/widget/d;->a(Landroid/widget/AutoCompleteTextView;)V
sget-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/d;
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0, v1}, Landroid/support/v7/widget/d;->b(Landroid/widget/AutoCompleteTextView;)V
return-void
.end method
.method public a()V
.registers 4
iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->F:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->F:Z
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I
move-result v0
iput v0, p0, Landroid/support/v7/widget/SearchView;->G:I
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
iget v1, p0, Landroid/support/v7/widget/SearchView;->G:I
const/high16 v2, 0x200
or-int/2addr v1, v2
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V
goto :goto_4
.end method
.method  a(Ljava/lang/CharSequence;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V
return-void
.end method
.method public a(Ljava/lang/CharSequence;Z)V
.registers 5
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V
if-eqz p1, :cond_14
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V
iput-object p1, p0, Landroid/support/v7/widget/SearchView;->E:Ljava/lang/CharSequence;
:cond_14
if-eqz p2, :cond_1f
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1f
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->r()V
:cond_1f
return-void
.end method
.method public b()V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V
const/4 v0, 0x1
invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
iget v1, p0, Landroid/support/v7/widget/SearchView;->G:I
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->F:Z
return-void
.end method
.method public c()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->k:Z
return v0
.end method
.method public clearFocus()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->A:Z
invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V
invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V
iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->A:Z
return-void
.end method
.method public d()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->l:Z
return v0
.end method
.method public e()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->x:Z
return v0
.end method
.method public f()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->z:Z
return v0
.end method
.method  g()V
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->d()Z
move-result v0
invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->n()V
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z
move-result v0
if-eqz v0, :cond_15
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->x()V
:cond_15
return-void
.end method
.method public getImeOptions()I
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I
move-result v0
return v0
.end method
.method public getInputType()I
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getInputType()I
move-result v0
return v0
.end method
.method public getMaxWidth()I
.registers 2
iget v0, p0, Landroid/support/v7/widget/SearchView;->B:I
return v0
.end method
.method public getQuery()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;
move-result-object v0
return-object v0
.end method
.method public getQueryHint()Ljava/lang/CharSequence;
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->y:Ljava/lang/CharSequence;
if-eqz v1, :cond_8
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->y:Ljava/lang/CharSequence;
:cond_7
:goto_7
return-object v0
:cond_8
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
if-eqz v1, :cond_7
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I
move-result v1
if-eqz v1, :cond_7
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_7
.end method
.method public getSuggestionsAdapter()Landroid/support/v4/widget/CursorAdapter;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/support/v4/widget/CursorAdapter;
return-object v0
.end method
.method protected onDetachedFromWindow()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z
invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
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
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->d()Z
move-result v0
if-eqz v0, :cond_a
invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V
:goto_9
return-void
:cond_a
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
sparse-switch v1, :sswitch_data_4a
:cond_15
:goto_15
const/high16 v1, 0x4000
invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V
goto :goto_9
:sswitch_1f
iget v1, p0, Landroid/support/v7/widget/SearchView;->B:I
if-lez v1, :cond_2a
iget v1, p0, Landroid/support/v7/widget/SearchView;->B:I
invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I
move-result v0
goto :goto_15
:cond_2a
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I
move-result v1
invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I
move-result v0
goto :goto_15
:sswitch_33
iget v1, p0, Landroid/support/v7/widget/SearchView;->B:I
if-lez v1, :cond_15
iget v1, p0, Landroid/support/v7/widget/SearchView;->B:I
invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I
move-result v0
goto :goto_15
:sswitch_3e
iget v0, p0, Landroid/support/v7/widget/SearchView;->B:I
if-lez v0, :cond_45
iget v0, p0, Landroid/support/v7/widget/SearchView;->B:I
goto :goto_15
:cond_45
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I
move-result v0
goto :goto_15
:sswitch_data_4a
.sparse-switch
-0x80000000 -> :sswitch_1f
0x0 -> :sswitch_3e
0x40000000 -> :sswitch_33
.end sparse-switch
.end method
.method public onWindowFocusChanged(Z)V
.registers 2
invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->n()V
return-void
.end method
.method public requestFocus(ILandroid/graphics/Rect;)Z
.registers 5
const/4 v0, 0x0
iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->A:Z
if-eqz v1, :cond_6
:goto_5
:cond_5
return v0
:cond_6
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isFocusable()Z
move-result v1
if-eqz v1, :cond_5
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->d()Z
move-result v1
if-nez v1, :cond_1f
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z
move-result v1
if-eqz v1, :cond_1d
invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V
:cond_1d
move v0, v1
goto :goto_5
:cond_1f
invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z
move-result v0
goto :goto_5
.end method
.method public setAppSearchData(Landroid/os/Bundle;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView;->I:Landroid/os/Bundle;
return-void
.end method
.method public setIconified(Z)V
.registers 2
if-eqz p1, :cond_6
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->t()V
:goto_5
return-void
:cond_6
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->u()V
goto :goto_5
.end method
.method public setIconifiedByDefault(Z)V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->k:Z
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->k:Z
invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->a(Z)V
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->p()V
goto :goto_4
.end method
.method public setImeOptions(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V
return-void
.end method
.method public setInputType(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V
return-void
.end method
.method public setMaxWidth(I)V
.registers 2
iput p1, p0, Landroid/support/v7/widget/SearchView;->B:I
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V
return-void
.end method
.method public setOnCloseListener(Landroid/support/v7/widget/e;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/support/v7/widget/e;
return-void
.end method
.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView;->h:Landroid/view/View$OnFocusChangeListener;
return-void
.end method
.method public setOnQueryTextListener(Landroid/support/v7/widget/f;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/support/v7/widget/f;
return-void
.end method
.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/view/View$OnClickListener;
return-void
.end method
.method public setOnSuggestionListener(Landroid/support/v7/widget/g;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/support/v7/widget/g;
return-void
.end method
.method public setQueryHint(Ljava/lang/CharSequence;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView;->y:Ljava/lang/CharSequence;
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->p()V
return-void
.end method
.method public setQueryRefinementEnabled(Z)V
.registers 4
iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->z:Z
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/support/v4/widget/CursorAdapter;
instance-of v0, v0, Landroid/support/v7/widget/l;
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/support/v4/widget/CursorAdapter;
check-cast v0, Landroid/support/v7/widget/l;
if-eqz p1, :cond_13
const/4 v1, 0x2
:goto_f
invoke-virtual {v0, v1}, Landroid/support/v7/widget/l;->a(I)V
:cond_12
return-void
:cond_13
const/4 v1, 0x1
goto :goto_f
.end method
.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
.registers 4
iput-object p1, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/app/SearchableInfo;
if-eqz v0, :cond_c
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->q()V
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->p()V
:cond_c
invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->j()Z
move-result v0
iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->C:Z
iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->C:Z
if-eqz v0, :cond_1d
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
const-string v1, "nm"
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V
:cond_1d
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->d()Z
move-result v0
invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V
return-void
.end method
.method public setSubmitButtonEnabled(Z)V
.registers 3
iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->x:Z
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->d()Z
move-result v0
invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V
return-void
.end method
.method public setSuggestionsAdapter(Landroid/support/v4/widget/CursorAdapter;)V
.registers 4
iput-object p1, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/support/v4/widget/CursorAdapter;
iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
iget-object v1, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method