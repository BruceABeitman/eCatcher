.class public Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;
.super Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
.source "SourceFile"


# instance fields
.field private c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

.field private d:Landroid/widget/Spinner;

.field private e:I

.field private f:Lcom/spotify/mobile/android/ui/cell/settings/a;

.field private g:[I

.field private h:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->e:I

    new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->h:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->e:I

    new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->h:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->e:I

    new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell$1;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->h:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;I)I
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->e:I

    return p1
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;
    .registers 5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ca

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;)[I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->g:[I

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->e:I

    return v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;)Landroid/widget/Spinner;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->d:Landroid/widget/Spinner;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/content/ContentValues;)V
    .registers 5

    iget v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->e:I

    if-ltz v0, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->f:Lcom/spotify/mobile/android/ui/cell/settings/a;

    iget v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->e:I

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/cell/settings/a;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->a(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->d:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->f:Lcom/spotify/mobile/android/ui/cell/settings/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->b:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/cell/settings/a;->b(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->e:I

    iget v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->e:I

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->d:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_2c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->d:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->e:I

    :cond_2c
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->d:Landroid/widget/Spinner;

    iget v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->d:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->h:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public final a(Landroid/widget/SpinnerAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/ui/cell/settings/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->f:Lcom/spotify/mobile/android/ui/cell/settings/a;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEventFactory;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/ClientEventFactory;-><init>()V

    invoke-static {p1}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->c:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    return-void
.end method

.method public final a([I)V
    .registers 3

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->g:[I

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->onFinishInflate()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->d()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V

    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->d:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V

    return-void
.end method
