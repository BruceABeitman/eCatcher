.class public Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;
.super Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
.source "SourceFile"
.field private c:Lcom/spotify/android/paste/widget/SwitchView;
.field private d:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->a(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->a(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->a(Landroid/content/Context;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;)Lcom/spotify/android/paste/widget/SwitchView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
return-object v0
.end method
.method private a(Landroid/content/Context;)V
.registers 4
const-string v0, "layout_inflater"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
const v1, 0x7f0300cb
invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
invoke-super {p0}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->onFinishInflate()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->d()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V
new-instance v0, Lcom/spotify/android/paste/widget/SwitchView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V
new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell$1;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;)V
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
new-instance v1, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell$2;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell$2;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;)V
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->d:Z
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->d:Z
return v0
.end method
.method protected final a(Landroid/content/ContentValues;)V
.registers 5
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/service/aj;->a:Lcom/spotify/mobile/android/util/cz;
iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->d:Z
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
return-void
.end method
.method public final a(Landroid/database/Cursor;)V
.registers 5
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v1
const/4 v0, 0x1
sget-object v2, Lcom/spotify/mobile/android/service/aj;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/cx;->c(Lcom/spotify/mobile/android/util/cz;)Z
move-result v2
if-nez v2, :cond_17
const-string v0, "post_to_facebook"
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;Ljava/lang/String;)Z
move-result v0
:cond_17
sget-object v2, Lcom/spotify/mobile/android/service/aj;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->d:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;->d:Z
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;->setChecked(Z)V
return-void
.end method