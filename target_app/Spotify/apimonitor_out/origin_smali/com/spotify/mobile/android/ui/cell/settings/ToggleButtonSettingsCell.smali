.class public Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;
.super Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
.source "SourceFile"


# instance fields
.field protected c:Z

.field protected d:Lcom/spotify/android/paste/widget/SwitchView;

.field private e:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

.field private f:I

.field private g:Landroid/view/View$OnClickListener;

.field private h:Lcom/spotify/mobile/android/ui/cell/settings/b;

.field private i:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->f:I

    new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$1;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->g:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$2;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->f:I

    new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$1;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->g:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell$2;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->f:I

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;
    .registers 5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;)Lcom/spotify/mobile/android/ui/cell/settings/b;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->h:Lcom/spotify/mobile/android/ui/cell/settings/b;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/content/ContentValues;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->d:Lcom/spotify/android/paste/widget/SwitchView;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/SwitchView;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->e:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->a(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->d:Lcom/spotify/android/paste/widget/SwitchView;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->c:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->d:Lcom/spotify/android/paste/widget/SwitchView;

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->c:Z

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;->setChecked(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->d:Lcom/spotify/android/paste/widget/SwitchView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_2c
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public final a(Lcom/spotify/mobile/android/ui/cell/settings/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->h:Lcom/spotify/mobile/android/ui/cell/settings/b;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEventFactory;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/ClientEventFactory;-><init>()V

    invoke-static {p1}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->e:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->f:I

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->onFinishInflate()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->d()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V

    new-instance v0, Lcom/spotify/android/paste/widget/SwitchView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->d:Lcom/spotify/android/paste/widget/SwitchView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->d:Lcom/spotify/android/paste/widget/SwitchView;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V

    return-void
.end method
