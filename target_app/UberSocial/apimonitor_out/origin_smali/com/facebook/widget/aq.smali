.class public Lcom/facebook/widget/aq;
.super Lcom/facebook/widget/af;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.RadiusInMeters"

.field public static final b:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.ResultsLimit"

.field public static final j:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.SearchText"

.field public static final k:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.Location"

.field public static final l:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.ShowSearchBox"

.field public static final m:I = 0x3e8

.field public static final n:I = 0x64

.field private static final o:I = 0x7d0

.field private static final p:Ljava/lang/String; = "id"

.field private static final q:Ljava/lang/String; = "name"

.field private static final r:Ljava/lang/String; = "location"

.field private static final s:Ljava/lang/String; = "category"

.field private static final t:Ljava/lang/String; = "were_here_count"

.field private static final u:Ljava/lang/String; = "PlacePickerFragment"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/widget/EditText;

.field private v:Landroid/location/Location;

.field private w:I

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/widget/aq;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    const-class v0, Lcom/facebook/c/i;

    sget v1, Lcom/facebook/a/s;->com_facebook_placepickerfragment:I

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/widget/af;-><init>(Ljava/lang/Class;ILandroid/os/Bundle;)V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/widget/aq;->w:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/widget/aq;->x:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/aq;->B:Z

    invoke-direct {p0, p1}, Lcom/facebook/widget/aq;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method private A()Ljava/util/Timer;
    .registers 7

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/facebook/widget/aq$2;

    invoke-direct {v1, p0}, Lcom/facebook/widget/aq$2;-><init>(Lcom/facebook/widget/aq;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-object v0
.end method

.method private B()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/widget/aq;->A:Z

    if-eqz v0, :cond_16

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/facebook/widget/aq$3;

    invoke-direct {v1, p0}, Lcom/facebook/widget/aq$3;-><init>(Lcom/facebook/widget/aq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/facebook/widget/aq;->z:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/aq;->z:Ljava/util/Timer;

    goto :goto_15
.end method

.method private a(Landroid/location/Location;IILjava/lang/String;Ljava/util/Set;Lcom/facebook/aw;)Lcom/facebook/ai;
    .registers 13

    const/4 v5, 0x0

    move-object v0, p6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/facebook/ai;->a(Lcom/facebook/aw;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/ak;)Lcom/facebook/ai;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "location"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "category"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "were_here_count"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/facebook/widget/aq;->i:Lcom/facebook/widget/e;

    invoke-virtual {v2}, Lcom/facebook/widget/e;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3d

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3d
    invoke-virtual {v0}, Lcom/facebook/ai;->d()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "fields"

    const-string v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/facebook/ai;->a(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/widget/aq;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/widget/aq;->B()V

    return-void
.end method

.method private c(Landroid/os/Bundle;)V
    .registers 4

    if-eqz p1, :cond_46

    const-string v0, "com.facebook.widget.PlacePickerFragment.RadiusInMeters"

    iget v1, p0, Lcom/facebook/widget/aq;->w:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/aq;->a(I)V

    const-string v0, "com.facebook.widget.PlacePickerFragment.ResultsLimit"

    iget v1, p0, Lcom/facebook/widget/aq;->x:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/aq;->b(I)V

    const-string v0, "com.facebook.widget.PlacePickerFragment.SearchText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "com.facebook.widget.PlacePickerFragment.SearchText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/aq;->a(Ljava/lang/String;)V

    :cond_29
    const-string v0, "com.facebook.widget.PlacePickerFragment.Location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "com.facebook.widget.PlacePickerFragment.Location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/aq;->a(Landroid/location/Location;)V

    :cond_3c
    const-string v0, "com.facebook.widget.PlacePickerFragment.ShowSearchBox"

    iget-boolean v1, p0, Lcom/facebook/widget/aq;->B:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/widget/aq;->B:Z

    :cond_46
    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/aq;->v:Landroid/location/Location;

    return-object v0
.end method

.method a(Lcom/facebook/aw;)Lcom/facebook/ai;
    .registers 9

    iget-object v1, p0, Lcom/facebook/widget/aq;->v:Landroid/location/Location;

    iget v2, p0, Lcom/facebook/widget/aq;->w:I

    iget v3, p0, Lcom/facebook/widget/aq;->x:I

    iget-object v4, p0, Lcom/facebook/widget/aq;->y:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/widget/aq;->h:Ljava/util/HashSet;

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/widget/aq;->a(Landroid/location/Location;IILjava/lang/String;Ljava/util/Set;Lcom/facebook/aw;)Lcom/facebook/ai;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/widget/aq;->w:I

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/aq;->v:Landroid/location/Location;

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/widget/af;->a(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/facebook/widget/aq;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x0

    :cond_7
    iput-object p1, p0, Lcom/facebook/widget/aq;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/widget/aq;->C:Landroid/widget/EditText;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/facebook/widget/aq;->C:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 4

    if-nez p2, :cond_b

    iget-object v0, p0, Lcom/facebook/widget/aq;->y:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/facebook/b/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p1, 0x0

    :cond_12
    iput-object p1, p0, Lcom/facebook/widget/aq;->y:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/aq;->A:Z

    iget-object v0, p0, Lcom/facebook/widget/aq;->z:Ljava/util/Timer;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/facebook/widget/aq;->A()Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/aq;->z:Ljava/util/Timer;

    goto :goto_a
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/facebook/widget/aq;->w:I

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/widget/aq;->x:I

    return-void
.end method

.method b(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/facebook/widget/af;->b(Landroid/os/Bundle;)V

    const-string v0, "com.facebook.widget.PlacePickerFragment.RadiusInMeters"

    iget v1, p0, Lcom/facebook/widget/aq;->w:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.facebook.widget.PlacePickerFragment.ResultsLimit"

    iget v1, p0, Lcom/facebook/widget/aq;->x:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.facebook.widget.PlacePickerFragment.SearchText"

    iget-object v1, p0, Lcom/facebook/widget/aq;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.facebook.widget.PlacePickerFragment.Location"

    iget-object v1, p0, Lcom/facebook/widget/aq;->v:Landroid/location/Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "com.facebook.widget.PlacePickerFragment.ShowSearchBox"

    iget-boolean v1, p0, Lcom/facebook/widget/aq;->B:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/facebook/widget/aq;->x:I

    return v0
.end method

.method d()Lcom/facebook/widget/an;
    .registers 3

    new-instance v0, Lcom/facebook/widget/aq$1;

    invoke-virtual {p0}, Lcom/facebook/widget/aq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/aq$1;-><init>(Lcom/facebook/widget/aq;Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/widget/an;->b(Z)V

    invoke-virtual {p0}, Lcom/facebook/widget/aq;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/an;->a(Z)V

    return-object v0
.end method

.method e()Lcom/facebook/widget/ah;
    .registers 3

    new-instance v0, Lcom/facebook/widget/ar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/ar;-><init>(Lcom/facebook/widget/aq;Lcom/facebook/widget/aq$1;)V

    return-object v0
.end method

.method f()Lcom/facebook/widget/ao;
    .registers 2

    new-instance v0, Lcom/facebook/widget/ap;

    invoke-direct {v0, p0}, Lcom/facebook/widget/ap;-><init>(Lcom/facebook/widget/af;)V

    return-object v0
.end method

.method g()Ljava/lang/String;
    .registers 2

    sget v0, Lcom/facebook/a/t;->com_facebook_nearby:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/aq;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x3

    const/4 v3, -0x1

    invoke-super {p0, p1}, Lcom/facebook/widget/af;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/facebook/widget/aq;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/facebook/widget/aq;->B:Z

    if-eqz v1, :cond_68

    sget v1, Lcom/facebook/a/r;->com_facebook_placepickerfragment_search_box_stub:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/facebook/widget/aq;->C:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/facebook/a/r;->search_box:I

    invoke-virtual {v2, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v1, Lcom/facebook/a/r;->com_facebook_picker_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/facebook/a/r;->com_facebook_picker_title_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4e

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/facebook/a/r;->com_facebook_picker_title_bar:I

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/facebook/widget/aq;->C:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4e
    iget-object v0, p0, Lcom/facebook/widget/aq;->C:Landroid/widget/EditText;

    new-instance v1, Lcom/facebook/widget/as;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/widget/as;-><init>(Lcom/facebook/widget/aq;Lcom/facebook/widget/aq$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/facebook/widget/aq;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/facebook/widget/aq;->C:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/facebook/widget/aq;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_68
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/facebook/widget/af;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/facebook/widget/aq;->C:Landroid/widget/EditText;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/facebook/widget/aq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/facebook/widget/aq;->C:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_19
    return-void
.end method

.method public onDetach()V
    .registers 4

    invoke-super {p0}, Lcom/facebook/widget/af;->onDetach()V

    iget-object v0, p0, Lcom/facebook/widget/aq;->C:Landroid/widget/EditText;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/facebook/widget/aq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/facebook/widget/aq;->C:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1d
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 8

    const/4 v3, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/facebook/widget/af;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    sget-object v0, Lcom/facebook/a/v;->com_facebook_place_picker_fragment:[I

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/facebook/widget/aq;->w:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/aq;->a(I)V

    iget v1, p0, Lcom/facebook/widget/aq;->x:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/aq;->b(I)V

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/aq;->a(Ljava/lang/String;)V

    :cond_2b
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/facebook/widget/aq;->B:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/aq;->B:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method t()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/widget/aq;->A:Z

    return-void
.end method

.method public y()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/aq;->y:Ljava/lang/String;

    return-object v0
.end method

.method public z()Lcom/facebook/c/i;
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/widget/aq;->s()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_17

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/i;

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
