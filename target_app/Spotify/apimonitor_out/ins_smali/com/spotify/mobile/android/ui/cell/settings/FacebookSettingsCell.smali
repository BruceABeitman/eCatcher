.class public Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;
.super Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
.source "SourceFile"
.field private c:Lcom/spotify/android/paste/widget/SwitchView;
.field private d:Z
.field private e:Z
.field private f:Landroid/view/View$OnClickListener;
.field private g:Landroid/view/View$OnClickListener;
.field private h:Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field private i:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$1;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->f:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$2;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->g:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$3;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->h:Landroid/widget/CompoundButton$OnCheckedChangeListener;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$1;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->f:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$2;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->g:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$3;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->h:Landroid/widget/CompoundButton$OnCheckedChangeListener;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$1;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->f:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$2;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->g:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell$3;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->h:Landroid/widget/CompoundButton$OnCheckedChangeListener;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)Lcom/spotify/android/paste/widget/SwitchView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
return-object v0
.end method
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;
.registers 5
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300c9
const/4 v2, 0x0
invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->e:Z
return v0
.end method
.method private c()V
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v1}, Lcom/spotify/android/paste/widget/ListItemView;->d()V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->getContext()Landroid/content/Context;
move-result-object v2
const v3, 0x7f0f033c
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->f:Landroid/view/View$OnClickListener;
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->i:Z
if-nez v1, :cond_25
const/4 v0, 0x1
:cond_25
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->setEnabled(Z)V
return-void
.end method
.method private d()V
.registers 3
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
:cond_d
return-void
.end method
.method protected final a(Landroid/content/ContentValues;)V
.registers 5
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->d:Z
const-string v1, "Should never have registered a click handler that leads to saveSetting if we are not connected to facebook"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/SwitchView;->isChecked()Z
move-result v0
:goto_11
const-string v1, "post_to_facebook"
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bu:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {p0, v1, v0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->a(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/Object;)V
return-void
:cond_24
const/4 v0, 0x0
goto :goto_11
.end method
.method public final a(Landroid/database/Cursor;)V
.registers 5
const-string v0, "Don\'t pass null cursors to us"
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
const-string v1, "Don\'t pass empty cursors to us"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
const-string v0, "offline_mode"
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->i:Z
const-string v0, "facebook_connected"
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->d:Z
const-string v0, "post_to_facebook"
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->e:Z
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->d:Z
if-eqz v0, :cond_82
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->d()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->getContext()Landroid/content/Context;
move-result-object v1
const v2, 0x7f0f036f
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->getContext()Landroid/content/Context;
move-result-object v1
const v2, 0x7f0f036d
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V
new-instance v0, Lcom/spotify/android/paste/widget/SwitchView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->d()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->e:Z
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;->setChecked(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->g:Landroid/view/View$OnClickListener;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
if-eqz v0, :cond_81
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->h:Landroid/widget/CompoundButton$OnCheckedChangeListener;
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
:cond_81
:goto_81
return-void
:cond_82
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->d()V
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->c()V
goto :goto_81
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public final c(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->onFinishInflate()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->isInEditMode()Z
move-result v0
if-eqz v0, :cond_a
:goto_9
return-void
:cond_a
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->c()V
goto :goto_9
.end method