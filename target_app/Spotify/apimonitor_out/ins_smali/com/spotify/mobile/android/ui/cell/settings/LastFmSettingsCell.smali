.class public Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;
.super Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
.source "SourceFile"
.field private c:Lcom/spotify/android/paste/widget/SwitchView;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Landroid/widget/CompoundButton$OnCheckedChangeListener;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;)V
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->d:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->e:Ljava/lang/String;
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->a(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->d:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->e:Ljava/lang/String;
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->a(Landroid/content/Context;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;)Lcom/spotify/android/paste/widget/SwitchView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
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
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->d()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V
new-instance v0, Lcom/spotify/android/paste/widget/SwitchView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->a:Lcom/spotify/android/paste/widget/ListItemView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
const/4 v3, 0x0
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
const-string v1, "lastfm_username"
invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "lastfm_password"
invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;
invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->a:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bq:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->a:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->br:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
const-string v2, "value"
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v2, "value"
const-string v3, ""
invoke-virtual {v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-class v2, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->p:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->p:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;)V
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->d:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->d:Ljava/lang/String;
return-object v0
.end method
.method protected final a(Landroid/content/ContentValues;)V
.registers 2
return-void
.end method
.method public final a(Landroid/database/Cursor;)V
.registers 5
const-string v0, "lastfm_username"
invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v0
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->d:Ljava/lang/String;
const-string v0, "lastfm_password"
invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v0
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->e:Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->d:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_54
const-string v0, "xXxXxXxXx"
iget-object v2, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->e:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_54
const/4 v0, 0x1
:goto_33
invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/SwitchView;->setChecked(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell$1;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;)V
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell$2;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->c:Lcom/spotify/android/paste/widget/SwitchView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
return-void
:cond_54
const/4 v0, 0x0
goto :goto_33
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
return-void
.end method