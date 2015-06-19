.class public final Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field private static final c:I
.field  a:[Ljava/lang/String;
.field final b:[I
.field private d:Landroid/content/Context;
.field private e:Landroid/content/res/Resources;
.field private f:Landroid/database/Cursor;
.field private g:Ljava/util/ArrayList;
.field private final h:Ljava/util/ArrayList;
.field private i:Lcom/spotify/mobile/android/ui/cell/settings/a;
.field private j:I
.field private final k:Z
.field private l:Z
.field private final m:Z
.field private final n:Z
.field private o:Z
.field private p:Z
.field private q:Ljava/lang/String;
.field private r:Ljava/lang/String;
.field private s:Ljava/lang/String;
.field private t:Ljava/lang/String;
.field private u:Lcom/spotify/mobile/android/ui/actions/a;
.field private v:Lcom/spotify/mobile/android/ui/actions/d;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->values()[Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;
move-result-object v0
array-length v0, v0
sput v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->c:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 8
const/4 v5, 0x3
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->g:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$1;-><init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->i:Lcom/spotify/mobile/android/ui/cell/settings/a;
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->u:Lcom/spotify/mobile/android/ui/actions/a;
const-class v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->v:Lcom/spotify/mobile/android/ui/actions/d;
const-string v0, "Must have a valid context"
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const-string v3, "expected non-null resources returned by system"
invoke-static {v0, v3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/res/Resources;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ClientInfo;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientInfo;->b()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->r:Ljava/lang/String;
const-string v3, "com.spotify.music.canary"
iget-object v4, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_7a
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->r:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " ()"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->r:Ljava/lang/String;
:cond_7a
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientInfo;->c()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->q:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->s:Ljava/lang/String;
new-array v0, v5, [Ljava/lang/String;
const v3, 0x7f0f0361
invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v0, v2
const v3, 0x7f0f0360
invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v0, v1
const/4 v3, 0x2
const v4, 0x7f0f035f
invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v4
aput-object v4, v0, v3
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a:[Ljava/lang/String;
new-array v0, v5, [I
fill-array-data v0, :array_17e
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->b:[I
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-nez v0, :cond_177
move v0, v1
:goto_b4
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->k:Z
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->i:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->m:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
new-instance v3, Landroid/content/Intent;
const-string v4, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"
invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const/high16 v4, 0x1
invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_17a
:goto_d7
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->n:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->f:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->g:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->h:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->i:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->j:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->k:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->l:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->m:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->n:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->o:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->p:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->q:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->r:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->e:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->s:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->t:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->u:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->v:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->b()V
return-void
:cond_177
move v0, v2
goto/16 :goto_b4
:cond_17a
move v1, v2
goto/16 :goto_d7
nop
:array_17e
.array-data 0x4
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x6t 0x0t 0x0t 0x0t
.end array-data
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
return-object v0
.end method
.method private a(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
.registers 4
if-nez p2, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;
move-result-object p2
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_13
invoke-virtual {p2}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->c()V
:cond_13
return-object p2
.end method
.method private a(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;I)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
.registers 6
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;Landroid/content/Intent;)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
move-result-object v0
return-object v0
.end method
.method private a(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;Landroid/content/Intent;)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
.registers 5
if-nez p2, :cond_8
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/cell/settings/NopSettingsCell;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/ui/cell/settings/NopSettingsCell;
move-result-object p2
:cond_8
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$3;
invoke-direct {v0, p0, p3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$3;-><init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;Landroid/content/Intent;)V
invoke-virtual {p2, v0}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-object p2
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)Lcom/spotify/mobile/android/ui/actions/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->u:Lcom/spotify/mobile/android/ui/actions/a;
return-object v0
.end method
.method private b(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
.registers 8
if-nez p2, :cond_3f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;
move-result-object v1
new-instance v2, Landroid/widget/ArrayAdapter;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v3, 0x1090003
iget-object v4, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a:[Ljava/lang/String;
invoke-direct {v2, v0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V
const v0, 0x1090009
invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V
const v0, 0x7f0a01e3
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->setId(I)V
move-object v0, v1
check-cast v0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->a(Landroid/widget/SpinnerAdapter;)V
move-object v0, v1
check-cast v0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->i:Lcom/spotify/mobile/android/ui/cell/settings/a;
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/a;)V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_3e
move-object v0, v1
check-cast v0, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->b:[I
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/cell/settings/SpinnerSettingsCell;->a([I)V
:cond_3e
:goto_3e
return-object v1
:cond_3f
move-object v1, p2
goto :goto_3e
.end method
.method private b()V
.registers 5
const-class v0, Lcom/spotify/mobile/android/service/flow/login/g;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/r;
iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->k:Z
iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->l:Z
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/adapter/r;-><init>(ZZ)V
new-instance v1, Lcom/spotify/mobile/android/ui/adapter/q;
iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->n:Z
iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->m:Z
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/q;-><init>(ZZ)V
invoke-static {v0, v1}, Lcom/google/common/base/Predicates;->a(Lcom/google/common/base/j;Lcom/google/common/base/j;)Lcom/google/common/base/j;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->h:Ljava/util/ArrayList;
invoke-static {v1, v0}, Lcom/google/common/collect/h;->b(Ljava/lang/Iterable;Lcom/google/common/base/j;)Ljava/lang/Iterable;
move-result-object v0
invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->g:Ljava/util/ArrayList;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->notifyDataSetChanged()V
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->t:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->u:Lcom/spotify/mobile/android/ui/actions/a;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->p:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->B:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const-class v2, Lcom/spotify/music/MainActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "extra_manual_login"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-static {v2, v0}, Lcom/spotify/mobile/android/service/LoginActivity;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->finish()V
return-void
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->a(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->b(Landroid/content/Context;)V
:goto_d
return-void
:cond_e
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->v:Lcom/spotify/mobile/android/ui/actions/d;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
check-cast v0, Landroid/app/Activity;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/app/Activity;)V
goto :goto_d
.end method
.method public final a(I)I
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lt p1, v0, :cond_f
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->g:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->ordinal()I
move-result v0
:goto_e
return v0
:cond_f
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$9;->a:[I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->g:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->ordinal()I
move-result v0
aget v0, v1, v0
packed-switch v0, :pswitch_data_62
:pswitch_22
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->g:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->ordinal()I
move-result v0
goto :goto_e
:pswitch_29
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->ordinal()I
move-result v0
goto :goto_e
:pswitch_30
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->ordinal()I
move-result v0
goto :goto_e
:pswitch_37
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->ordinal()I
move-result v0
goto :goto_e
:pswitch_3e
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->e:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->ordinal()I
move-result v0
goto :goto_e
:pswitch_45
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->i:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_54
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->ordinal()I
move-result v0
goto :goto_e
:cond_54
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->g:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->ordinal()I
move-result v0
goto :goto_e
:pswitch_5b
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->f:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Group;->ordinal()I
move-result v0
goto :goto_e
:pswitch_data_62
.packed-switch 0x1
:pswitch_29
:pswitch_30
:pswitch_37
:pswitch_29
:pswitch_29
:pswitch_3e
:pswitch_37
:pswitch_37
:pswitch_30
:pswitch_30
:pswitch_29
:pswitch_37
:pswitch_22
:pswitch_5b
:pswitch_5b
:pswitch_5b
:pswitch_5b
:pswitch_5b
:pswitch_22
:pswitch_22
:pswitch_22
:pswitch_45
.end packed-switch
.end method
.method public final a(Landroid/database/Cursor;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->f:Landroid/database/Cursor;
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->b()V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
if-nez p1, :cond_a
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->t:Ljava/lang/String;
:goto_6
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->b()V
return-void
:cond_a
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->t:Ljava/lang/String;
goto :goto_6
.end method
.method public final a(Z)V
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->l:Z
if-eq v0, p1, :cond_11
const/4 v0, 0x1
:goto_5
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->o:Z
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->o:Z
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->p:Z
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->l:Z
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->b()V
return-void
:cond_11
const/4 v0, 0x0
goto :goto_5
.end method
.method public final a()[Ljava/lang/String;
.registers 5
const/4 v0, 0x7
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v3, 0x7f0f0368
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v3, 0x7f0f036a
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v3, 0x7f0f0369
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v3, 0x7f0f0366
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v3, 0x7f0f0358
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x5
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v3, 0x7f0f0365
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x6
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v3, 0x7f0f0367
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
return-object v0
.end method
.method public final areAllItemsEnabled()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final b(I)V
.registers 3
div-int/lit16 v0, p1, 0xe10
iput v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->j:I
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->b()V
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 3
if-nez p1, :cond_a
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->s:Ljava/lang/String;
:goto_6
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->b()V
return-void
:cond_a
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->s:Ljava/lang/String;
goto :goto_6
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public final getItem(I)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public final getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public final getItemViewType(I)I
.registers 5
const/4 v1, -0x1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lt p1, v0, :cond_10
const-string v0, "Unknown position when fetching item view type"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
move v0, v1
:goto_f
return v0
:cond_10
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$9;->a:[I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->g:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->ordinal()I
move-result v0
aget v0, v2, v0
packed-switch v0, :pswitch_data_70
const-string v0, "Unknown position when fetching item view type"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
move v0, v1
goto :goto_f
:pswitch_2a
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->ordinal()I
move-result v0
goto :goto_f
:pswitch_31
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->h:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->ordinal()I
move-result v0
goto :goto_f
:pswitch_38
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->i:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->ordinal()I
move-result v0
goto :goto_f
:pswitch_3f
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->ordinal()I
move-result v0
goto :goto_f
:pswitch_46
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->ordinal()I
move-result v0
goto :goto_f
:pswitch_4d
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->e:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->ordinal()I
move-result v0
goto :goto_f
:pswitch_54
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->f:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->ordinal()I
move-result v0
goto :goto_f
:pswitch_5b
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->g:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->ordinal()I
move-result v0
goto :goto_f
:pswitch_62
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->k:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->ordinal()I
move-result v0
goto :goto_f
:pswitch_69
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$ViewType;->ordinal()I
move-result v0
goto :goto_f
:pswitch_data_70
.packed-switch 0x1
:pswitch_2a
:pswitch_2a
:pswitch_2a
:pswitch_2a
:pswitch_31
:pswitch_38
:pswitch_3f
:pswitch_3f
:pswitch_46
:pswitch_4d
:pswitch_54
:pswitch_5b
:pswitch_62
:pswitch_69
:pswitch_69
:pswitch_69
:pswitch_69
:pswitch_69
:pswitch_69
:pswitch_69
:pswitch_69
:pswitch_69
.end packed-switch
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 12
const/4 v3, 0x1
const/4 v5, 0x0
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(II)I
const-string v2, ""
if-eqz p2, :cond_3c7
instance-of v0, p2, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
if-eqz v0, :cond_3c7
check-cast p2, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
:goto_16
sget-object v4, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$9;->a:[I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->g:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->ordinal()I
move-result v0
aget v0, v4, v0
packed-switch v0, :pswitch_data_3ca
const-string v0, "Got unexpected position"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
:goto_2e
return-object v1
:pswitch_2f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v1, 0x7f0f035d
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v1, 0x7f0f035c
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->f:Landroid/database/Cursor;
if-eqz v1, :cond_4d
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->f:Landroid/database/Cursor;
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-nez v1, :cond_7c
:cond_4d
move-object v2, v0
:goto_4e
const-string v3, "offline_mode"
invoke-direct {p0, p3, p2}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
move-result-object v1
const v0, 0x7f0a01e1
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->setId(I)V
move-object v0, v1
check-cast v0, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;
new-instance v5, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$2;
invoke-direct {v5, p0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$2;-><init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)V
invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/ui/cell/settings/ToggleButtonSettingsCell;->a(Lcom/spotify/mobile/android/ui/cell/settings/b;)V
move-object v0, v4
move-object p2, v1
move-object v1, v3
:cond_68
:goto_68
invoke-virtual {p2, v1}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->a(Ljava/lang/String;)V
invoke-virtual {p2, v0}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->b(Ljava/lang/String;)V
invoke-virtual {p2, v2}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->c(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->f:Landroid/database/Cursor;
if-eqz v0, :cond_7a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->f:Landroid/database/Cursor;
invoke-virtual {p2, v0}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->a(Landroid/database/Cursor;)V
:cond_7a
move-object v1, p2
goto :goto_2e
:cond_7c
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->f:Landroid/database/Cursor;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->f:Landroid/database/Cursor;
const-string v6, "offline_mode"
invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v2
invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v1
if-eqz v1, :cond_ba
move v1, v3
:goto_8d
if-eqz v1, :cond_b8
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->f:Landroid/database/Cursor;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->f:Landroid/database/Cursor;
const-string v6, "seconds_to_offline_expiry"
invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v2
invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v1
if-ltz v1, :cond_a1
div-int/lit16 v1, v1, 0xe10
:cond_a1
const/16 v2, 0x18
if-lt v1, v2, :cond_bc
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v2, 0x7f0f035a
new-array v3, v3, [Ljava/lang/Object;
div-int/lit8 v1, v1, 0x18
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v3, v5
invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:cond_b8
:goto_b8
move-object v2, v0
goto :goto_4e
:cond_ba
move v1, v5
goto :goto_8d
:cond_bc
if-le v1, v3, :cond_d0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v2, 0x7f0f035b
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v3, v5
invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_b8
:cond_d0
if-nez v1, :cond_b8
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v1, 0x7f0f0359
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_b8
:pswitch_dc
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v1, 0x7f0f035e
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v2, 0x7f0e0019
iget v4, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->j:I
new-array v3, v3, [Ljava/lang/Object;
iget v6, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->j:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v3, v5
invoke-virtual {v1, v2, v4, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
const-string v1, "private_session"
invoke-direct {p0, p3, p2}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
move-result-object p2
goto/16 :goto_68
:pswitch_102
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v2, 0x7f0f033b
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v3, 0x7f0f033a
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
if-nez p2, :cond_68
new-instance p2, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-direct {p2, v3}, Lcom/spotify/mobile/android/ui/cell/settings/BroadcastSettingsCell;-><init>(Landroid/content/Context;)V
goto/16 :goto_68
:pswitch_11f
const-string v1, ""
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v2, 0x7f0f0358
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v3, 0x7f0f0357
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
sget-object v4, Lcom/spotify/mobile/android/util/ViewUri;->aW:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v4}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v3
invoke-direct {p0, p3, p2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;Landroid/content/Intent;)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
move-result-object p2
goto/16 :goto_68
:pswitch_145
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v2, 0x7f0f033d
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v3, 0x7f0f0160
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
const-string v3, "\n"
const-string v4, " "
invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
new-instance v3, Landroid/content/Intent;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const-class v5, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-direct {p0, p3, p2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;Landroid/content/Intent;)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
move-result-object p2
const v3, 0x7f0a01dc
invoke-virtual {p2, v3}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->setId(I)V
goto/16 :goto_68
:pswitch_174
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v1, 0x7f0f0344
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v2, 0x7f0f0343
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
const-string v1, "download_over_3g"
invoke-direct {p0, p3, p2}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
move-result-object p2
goto/16 :goto_68
:pswitch_18e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v2, 0x7f0f036c
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v2, 0x7f0f036b
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
const-string v0, "stream_quality"
iget-boolean v4, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->o:Z
if-eqz v4, :cond_3c4
iput-boolean v5, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->o:Z
:goto_1a8
invoke-direct {p0, p3, v1}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->b(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
move-result-object p2
move-object v1, v0
move-object v0, v3
goto/16 :goto_68
:pswitch_1b0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v2, 0x7f0f0346
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v2, 0x7f0f0345
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
const-string v0, "download_quality"
iget-boolean v4, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->p:Z
if-eqz v4, :cond_3c1
iput-boolean v5, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->p:Z
:goto_1ca
invoke-direct {p0, p3, v1}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->b(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
move-result-object p2
move-object v1, v0
move-object v0, v3
goto/16 :goto_68
:pswitch_1d2
if-nez p2, :cond_3bd
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-static {v0, p3}, Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/ui/cell/settings/FacebookSettingsCell;
move-result-object p2
move-object v2, v1
move-object v0, v1
goto/16 :goto_68
:pswitch_1de
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v2, 0x7f0f034b
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v3, 0x7f0f0349
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
if-nez p2, :cond_68
new-instance p2, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-direct {p2, v3}, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;-><init>(Landroid/content/Context;)V
goto/16 :goto_68
:pswitch_1fb
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v1, 0x7f0f0354
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v3, 0x7f0f0353
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const-string v4, "spotify:internal:licenses"
invoke-static {v3, v4}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v3
invoke-direct {p0, p3, p2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;Landroid/content/Intent;)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
move-result-object p2
move-object v7, v2
move-object v2, v1
move-object v1, v7
goto/16 :goto_68
:pswitch_21e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v1, 0x7f0f0352
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v3, 0x7f0f0351
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
const v3, 0x7f0f010b
invoke-direct {p0, p3, p2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;I)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
move-result-object p2
move-object v7, v2
move-object v2, v1
move-object v1, v7
goto/16 :goto_68
:pswitch_23c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v1, 0x7f0f034e
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v3, 0x7f0f034d
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
const v3, 0x7f0f0108
invoke-direct {p0, p3, p2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;I)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
move-result-object p2
move-object v7, v2
move-object v2, v1
move-object v1, v7
goto/16 :goto_68
:pswitch_25a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v1, 0x7f0f0350
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v3, 0x7f0f034f
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
const v3, 0x7f0f0109
invoke-direct {p0, p3, p2, v3}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;I)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
move-result-object p2
move-object v7, v2
move-object v2, v1
move-object v1, v7
goto/16 :goto_68
:pswitch_278
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v3, 0x7f0f0370
invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->r:Ljava/lang/String;
if-nez p2, :cond_28b
iget-object v4, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-static {v4, p3}, Lcom/spotify/mobile/android/ui/cell/settings/NopSettingsCell;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/ui/cell/settings/NopSettingsCell;
move-result-object p2
:cond_28b
invoke-virtual {p2, v1}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object v1, v2
move-object v2, v0
move-object v0, v3
goto/16 :goto_68
:pswitch_293
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v1, 0x7f0f0342
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v3, 0x7f0f0341
invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
if-nez p2, :cond_2ad
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-static {v3, p3}, Lcom/spotify/mobile/android/ui/cell/settings/NopSettingsCell;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/ui/cell/settings/NopSettingsCell;
move-result-object p2
:cond_2ad
new-instance v3, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$4;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$4;-><init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)V
invoke-virtual {p2, v3}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v3, 0x7f0a01de
invoke-virtual {p2, v3}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->setId(I)V
move-object v7, v2
move-object v2, v1
move-object v1, v7
goto/16 :goto_68
:pswitch_2c0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v1, 0x7f0f0356
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->s:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_2fb
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v4, 0x7f0f0355
new-array v3, v3, [Ljava/lang/Object;
iget-object v6, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->s:Ljava/lang/String;
aput-object v6, v3, v5
invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
:goto_2e0
if-nez p2, :cond_2e8
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-static {v3, p3}, Lcom/spotify/mobile/android/ui/cell/settings/NopSettingsCell;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/ui/cell/settings/NopSettingsCell;
move-result-object p2
:cond_2e8
new-instance v3, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$5;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$5;-><init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)V
invoke-virtual {p2, v3}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v3, 0x7f0a01e0
invoke-virtual {p2, v3}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->setId(I)V
move-object v7, v2
move-object v2, v1
move-object v1, v7
goto/16 :goto_68
:cond_2fb
const-string v1, ""
goto :goto_2e0
:pswitch_2fe
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v1, 0x7f0f0363
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v3, 0x7f0f0362
invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
if-nez p2, :cond_318
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-static {v3, p3}, Lcom/spotify/mobile/android/ui/cell/settings/NopSettingsCell;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/ui/cell/settings/NopSettingsCell;
move-result-object p2
:cond_318
new-instance v3, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6;-><init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)V
invoke-virtual {p2, v3}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v3, 0x7f0a01e2
invoke-virtual {p2, v3}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->setId(I)V
move-object v7, v2
move-object v2, v1
move-object v1, v7
goto/16 :goto_68
:pswitch_32b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v1, 0x7f0f0338
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v3, 0x7f0f0339
invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
if-nez p2, :cond_345
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-static {v3, p3}, Lcom/spotify/mobile/android/ui/cell/settings/NopSettingsCell;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/ui/cell/settings/NopSettingsCell;
move-result-object p2
:cond_345
new-instance v3, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$7;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$7;-><init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)V
invoke-virtual {p2, v3}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object v7, v2
move-object v2, v1
move-object v1, v7
goto/16 :goto_68
:pswitch_352
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v1, 0x7f0f01da
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
const v3, 0x7f0f01d9
invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
if-nez p2, :cond_36c
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-static {v3, p3}, Lcom/spotify/mobile/android/ui/cell/settings/NopSettingsCell;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/ui/cell/settings/NopSettingsCell;
move-result-object p2
:cond_36c
new-instance v3, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$8;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$8;-><init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)V
invoke-virtual {p2, v3}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object v7, v2
move-object v2, v1
move-object v1, v7
goto/16 :goto_68
:pswitch_379
const-string v1, "gapless"
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v2, 0x7f0f0348
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v3, 0x7f0f0347
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-direct {p0, p3, p2}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;)Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
move-result-object p2
const v3, 0x7f0a01df
invoke-virtual {p2, v3}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->setId(I)V
goto/16 :goto_68
:pswitch_399
const-string v1, "crossfade"
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v2, 0x7f0f0340
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->e:Landroid/content/res/Resources;
const v3, 0x7f0f033e
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
if-nez p2, :cond_3b5
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d:Landroid/content/Context;
invoke-static {v3, p3}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
move-result-object p2
:cond_3b5
const v3, 0x7f0a01dd
invoke-virtual {p2, v3}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->setId(I)V
goto/16 :goto_68
:cond_3bd
move-object v2, v1
move-object v0, v1
goto/16 :goto_68
:cond_3c1
move-object v1, p2
goto/16 :goto_1ca
:cond_3c4
move-object v1, p2
goto/16 :goto_1a8
:cond_3c7
move-object p2, v1
goto/16 :goto_16
:pswitch_data_3ca
.packed-switch 0x1
:pswitch_2f
:pswitch_dc
:pswitch_174
:pswitch_379
:pswitch_102
:pswitch_11f
:pswitch_18e
:pswitch_1b0
:pswitch_1d2
:pswitch_1de
:pswitch_399
:pswitch_32b
:pswitch_352
:pswitch_1fb
:pswitch_21e
:pswitch_25a
:pswitch_23c
:pswitch_278
:pswitch_293
:pswitch_2c0
:pswitch_2fe
:pswitch_145
.end packed-switch
.end method
.method public final getViewTypeCount()I
.registers 2
sget v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->c:I
return v0
.end method
.method public final isEnabled(I)Z
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->g:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->n:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
if-eq v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method