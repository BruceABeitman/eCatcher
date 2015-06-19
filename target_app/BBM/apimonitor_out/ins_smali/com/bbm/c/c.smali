.class public Lcom/bbm/c/c;
.super Ljava/lang/Object;
.source "EventTracker.java"
.field public static final a:Ljava/lang/String;
.field static final synthetic aL:Z
.field public A:I
.field public B:I
.field public C:I
.field public D:I
.field public E:I
.field public F:I
.field public G:I
.field public H:I
.field public I:I
.field public J:I
.field public K:I
.field public L:I
.field public M:I
.field public N:I
.field public O:I
.field public P:I
.field public Q:J
.field public R:J
.field public S:J
.field public T:I
.field public U:J
.field public V:J
.field public W:I
.field  X:I
.field  Y:I
.field  Z:I
.field public aA:I
.field public aB:I
.field public aC:I
.field public aD:I
.field public aE:Ljava/util/Set;
.field public aF:Ljava/util/Map;
.field public aG:Ljava/lang/String;
.field public final aH:Lcom/bbm/j/k;
.field public final aI:Lcom/bbm/f/ac;
.field public aJ:Lcom/bbm/c/a;
.field public aK:Lcom/bbm/c/v;
.field private final aM:Lcom/bbm/util/dc;
.field private aN:J
.field private aO:J
.field private aP:J
.field private aQ:Lcom/bbm/c/n;
.field private aR:Lcom/bbm/c/n;
.field  aa:I
.field  ab:I
.field  ac:I
.field  ad:I
.field  ae:I
.field  af:I
.field  ag:I
.field public ah:I
.field public ai:I
.field public aj:I
.field public ak:I
.field public al:I
.field public am:I
.field public an:I
.field  ao:I
.field public ap:Lcom/bbm/al;
.field public aq:I
.field public ar:I
.field public as:I
.field public at:I
.field public au:I
.field public av:I
.field public aw:I
.field public ax:I
.field public ay:I
.field public az:I
.field public final b:Lcom/c/a/a/j;
.field public c:I
.field public d:I
.field public e:I
.field public f:I
.field public g:I
.field public h:I
.field public i:I
.field public j:I
.field public k:I
.field public l:I
.field public m:I
.field public final n:Ljava/util/HashMap;
.field public o:I
.field public p:I
.field public q:J
.field public r:J
.field public s:J
.field public t:J
.field public u:I
.field public v:I
.field public w:I
.field public x:I
.field public y:I
.field public z:I
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/bbm/c/c;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_10
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/bbm/c/c;->aL:Z
const-string v0, "391da7cb4ad8ddedd89a6f2ae3bfc3a2"
sput-object v0, Lcom/bbm/c/c;->a:Ljava/lang/String;
return-void
:cond_10
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>(Lcom/bbm/Alaska;)V
.registers 8
const-wide/16 v4, 0x0
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/bbm/util/bn;->a()Lcom/bbm/util/bn;
move-result-object v0
iput-object v0, p0, Lcom/bbm/c/c;->aM:Lcom/bbm/util/dc;
iput v3, p0, Lcom/bbm/c/c;->c:I
iput v3, p0, Lcom/bbm/c/c;->d:I
iput v3, p0, Lcom/bbm/c/c;->e:I
iput v3, p0, Lcom/bbm/c/c;->f:I
iput v3, p0, Lcom/bbm/c/c;->g:I
iput v3, p0, Lcom/bbm/c/c;->h:I
iput v3, p0, Lcom/bbm/c/c;->i:I
iput v3, p0, Lcom/bbm/c/c;->j:I
iput v3, p0, Lcom/bbm/c/c;->k:I
iput v3, p0, Lcom/bbm/c/c;->l:I
iput v3, p0, Lcom/bbm/c/c;->m:I
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/c/c;->n:Ljava/util/HashMap;
iput v3, p0, Lcom/bbm/c/c;->o:I
iput v3, p0, Lcom/bbm/c/c;->p:I
iput-wide v4, p0, Lcom/bbm/c/c;->q:J
iput-wide v4, p0, Lcom/bbm/c/c;->r:J
iput-wide v4, p0, Lcom/bbm/c/c;->s:J
iput-wide v4, p0, Lcom/bbm/c/c;->t:J
iput v3, p0, Lcom/bbm/c/c;->u:I
iput v3, p0, Lcom/bbm/c/c;->T:I
iput-wide v4, p0, Lcom/bbm/c/c;->U:J
iput-wide v4, p0, Lcom/bbm/c/c;->V:J
iput v3, p0, Lcom/bbm/c/c;->W:I
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/bbm/c/c;->aE:Ljava/util/Set;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/c/c;->aF:Ljava/util/Map;
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/c/c;->aG:Ljava/lang/String;
new-instance v0, Lcom/bbm/c/d;
invoke-direct {v0, p0}, Lcom/bbm/c/d;-><init>(Lcom/bbm/c/c;)V
iput-object v0, p0, Lcom/bbm/c/c;->aH:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/c/e;
invoke-direct {v0, p0}, Lcom/bbm/c/e;-><init>(Lcom/bbm/c/c;)V
iput-object v0, p0, Lcom/bbm/c/c;->aI:Lcom/bbm/f/ac;
invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "mixpanel_time_in_app"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/bbm/c/c;->c:I
const-string v1, "mixpanel_time_in_chats"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/bbm/c/c;->d:I
const-string v1, "mixpanel_time_in_contacts"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/bbm/c/c;->e:I
const-string v1, "mixpanel_time_in_group_discussion"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/bbm/c/c;->i:I
const-string v1, "mixpanel_time_in_group_events"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/bbm/c/c;->k:I
const-string v1, "mixpanel_time_in_group_lists"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/bbm/c/c;->l:I
const-string v1, "mixpanel_time_in_group_lobby"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/bbm/c/c;->h:I
const-string v1, "mixpanel_time_in_group_photo"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/bbm/c/c;->j:I
const-string v1, "mixpanel_time_in_groups_tab"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/bbm/c/c;->f:I
const-string v1, "mixpanel_time_in_recent_updates_tab"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/bbm/c/c;->g:I
const-string v1, "mixpanel_number_of_recall_message_successes"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/bbm/c/c;->O:I
const-string v1, "mixpanel_number_of_recall_message_failures"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/bbm/c/c;->P:I
const-string v1, "mixpanel_number_of_recall_message_attempts"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/bbm/c/c;->N:I
const-string v1, "mixpanel_recall_message_total_age"
invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v1
iput-wide v1, p0, Lcom/bbm/c/c;->Q:J
const-string v1, "mixpanel_recall_message_min_age"
invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v1
iput-wide v1, p0, Lcom/bbm/c/c;->R:J
const-string v1, "mixpanel_recall_message_max_age"
invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v1
iput-wide v1, p0, Lcom/bbm/c/c;->S:J
const-string v1, "mixpanel_pending_events"
new-instance v2, Ljava/util/HashSet;
invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
move-result-object v0
iput-object v0, p0, Lcom/bbm/c/c;->aE:Ljava/util/Set;
:try_start_ef
const-string v0, "unusualError"
invoke-virtual {p1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
move-result-object v0
new-instance v1, Ljava/io/ObjectInputStream;
invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
iput-object v0, p0, Lcom/bbm/c/c;->aF:Ljava/util/Map;
invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
:goto_105
:try_end_105
.catch Ljava/lang/Exception; {:try_start_ef .. :try_end_105} :catch_11f
sget-object v0, Lcom/bbm/c/c;->a:Ljava/lang/String;
invoke-static {p1, v0}, Lcom/c/a/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/c/a/a/j;
move-result-object v0
iput-object v0, p0, Lcom/bbm/c/c;->b:Lcom/c/a/a/j;
invoke-static {p1}, Lcom/c/a/a/j;->a(Landroid/content/Context;)V
new-instance v0, Lcom/bbm/c/a;
invoke-direct {v0, p1}, Lcom/bbm/c/a;-><init>(Landroid/app/Application;)V
iput-object v0, p0, Lcom/bbm/c/c;->aJ:Lcom/bbm/c/a;
new-instance v0, Lcom/bbm/c/v;
invoke-direct {v0, p1}, Lcom/bbm/c/v;-><init>(Lcom/bbm/Alaska;)V
iput-object v0, p0, Lcom/bbm/c/c;->aK:Lcom/bbm/c/v;
return-void
:catch_11f
move-exception v0
const-string v1, "Error trying to read in unusualError private file"
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/c/c;->aF:Ljava/util/Map;
goto :goto_105
.end method
.method static synthetic a(Lcom/bbm/c/c;)I
.registers 3
iget v0, p0, Lcom/bbm/c/c;->O:I
add-int/lit8 v1, v0, 0x1
iput v1, p0, Lcom/bbm/c/c;->O:I
return v0
.end method
.method static synthetic a(Lcom/bbm/c/c;Lcom/bbm/c/m;Lorg/json/JSONObject;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/bbm/c/c;->a(Lcom/bbm/c/m;Lorg/json/JSONObject;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/c/c;Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/bbm/c/c;->b:Lcom/c/a/a/j;
iput-object p1, v0, Lcom/c/a/a/j;->b:Ljava/lang/String;
invoke-virtual {v0}, Lcom/c/a/a/j;->b()V
iget-object v0, p0, Lcom/bbm/c/c;->b:Lcom/c/a/a/j;
iget-object v0, v0, Lcom/c/a/a/j;->a:Lcom/c/a/a/l;
invoke-interface {v0, p1}, Lcom/c/a/a/k;->a(Ljava/lang/String;)V
iput-object p1, p0, Lcom/bbm/c/c;->aG:Ljava/lang/String;
return-void
.end method
.method private a(Lcom/bbm/c/n;I)V
.registers 5
sget-object v0, Lcom/bbm/c/j;->c:[I
invoke-virtual {p1}, Lcom/bbm/c/n;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_82
sget-boolean v0, Lcom/bbm/c/c;->aL:Z
if-nez v0, :cond_1a
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:pswitch_15
iget v0, p0, Lcom/bbm/c/c;->d:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->d:I
:goto_1a
:cond_1a
return-void
:pswitch_1b
iget v0, p0, Lcom/bbm/c/c;->e:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->e:I
goto :goto_1a
:pswitch_21
iget v0, p0, Lcom/bbm/c/c;->f:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->f:I
goto :goto_1a
:pswitch_27
iget v0, p0, Lcom/bbm/c/c;->g:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->g:I
goto :goto_1a
:pswitch_2d
iget v0, p0, Lcom/bbm/c/c;->h:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->h:I
goto :goto_1a
:pswitch_33
iget v0, p0, Lcom/bbm/c/c;->i:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->i:I
goto :goto_1a
:pswitch_39
iget v0, p0, Lcom/bbm/c/c;->j:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->j:I
goto :goto_1a
:pswitch_3f
iget v0, p0, Lcom/bbm/c/c;->k:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->k:I
goto :goto_1a
:pswitch_45
iget v0, p0, Lcom/bbm/c/c;->l:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->l:I
goto :goto_1a
:pswitch_4b
iget v0, p0, Lcom/bbm/c/c;->X:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->X:I
goto :goto_1a
:pswitch_51
iget v0, p0, Lcom/bbm/c/c;->Y:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->Y:I
goto :goto_1a
:pswitch_57
iget v0, p0, Lcom/bbm/c/c;->Z:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->Z:I
goto :goto_1a
:pswitch_5d
iget v0, p0, Lcom/bbm/c/c;->aa:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->aa:I
goto :goto_1a
:pswitch_63
iget v0, p0, Lcom/bbm/c/c;->ab:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->ab:I
goto :goto_1a
:pswitch_69
iget v0, p0, Lcom/bbm/c/c;->ac:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->ac:I
goto :goto_1a
:pswitch_6f
iget v0, p0, Lcom/bbm/c/c;->ad:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->ad:I
goto :goto_1a
:pswitch_75
iget v0, p0, Lcom/bbm/c/c;->ae:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->ae:I
goto :goto_1a
:pswitch_7b
iget v0, p0, Lcom/bbm/c/c;->af:I
add-int/2addr v0, p2
iput v0, p0, Lcom/bbm/c/c;->af:I
goto :goto_1a
nop
:pswitch_data_82
.packed-switch 0x1
:pswitch_15
:pswitch_1b
:pswitch_21
:pswitch_27
:pswitch_2d
:pswitch_33
:pswitch_39
:pswitch_3f
:pswitch_45
:pswitch_4b
:pswitch_51
:pswitch_57
:pswitch_5d
:pswitch_63
:pswitch_69
:pswitch_6f
:pswitch_75
:pswitch_7b
.end packed-switch
.end method
.method static synthetic b(Lcom/bbm/c/c;)I
.registers 3
iget v0, p0, Lcom/bbm/c/c;->P:I
add-int/lit8 v1, v0, 0x1
iput v1, p0, Lcom/bbm/c/c;->P:I
return v0
.end method
.method static synthetic c(Lcom/bbm/c/c;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/c/c;->aG:Ljava/lang/String;
return-object v0
.end method
.method public final a()V
.registers 6
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
iput-wide v0, p0, Lcom/bbm/c/c;->aN:J
const-string v0, "Mixpanel Start App Timer %d"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-wide v3, p0, Lcom/bbm/c/c;->aN:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public final a(I)V
.registers 3
iget v0, p0, Lcom/bbm/c/c;->ag:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/bbm/c/c;->ag:I
iput p1, p0, Lcom/bbm/c/c;->ao:I
return-void
.end method
.method public final a(Landroid/content/Context;)V
.registers 7
const/4 v4, 0x0
invoke-virtual {p0}, Lcom/bbm/c/c;->d()V
invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "mixpanel_time_in_app"
iget v2, p0, Lcom/bbm/c/c;->c:I
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v1, "mixpanel_time_in_chats"
iget v2, p0, Lcom/bbm/c/c;->d:I
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v1, "mixpanel_time_in_contacts"
iget v2, p0, Lcom/bbm/c/c;->e:I
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v1, "mixpanel_time_in_group_discussion"
iget v2, p0, Lcom/bbm/c/c;->i:I
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v1, "mixpanel_time_in_group_events"
iget v2, p0, Lcom/bbm/c/c;->k:I
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v1, "mixpanel_time_in_group_lists"
iget v2, p0, Lcom/bbm/c/c;->l:I
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v1, "mixpanel_time_in_group_lobby"
iget v2, p0, Lcom/bbm/c/c;->h:I
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v1, "mixpanel_time_in_group_photo"
iget v2, p0, Lcom/bbm/c/c;->j:I
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v1, "mixpanel_time_in_groups_tab"
iget v2, p0, Lcom/bbm/c/c;->f:I
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v1, "mixpanel_time_in_recent_updates_tab"
iget v2, p0, Lcom/bbm/c/c;->g:I
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v1, "mixpanel_number_of_recall_message_successes"
iget v2, p0, Lcom/bbm/c/c;->O:I
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v1, "mixpanel_number_of_recall_message_failures"
iget v2, p0, Lcom/bbm/c/c;->P:I
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v1, "mixpanel_number_of_recall_message_attempts"
iget v2, p0, Lcom/bbm/c/c;->N:I
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v1, "mixpanel_recall_message_total_age"
iget-wide v2, p0, Lcom/bbm/c/c;->Q:J
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string v1, "mixpanel_recall_message_min_age"
iget-wide v2, p0, Lcom/bbm/c/c;->R:J
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string v1, "mixpanel_recall_message_max_age"
iget-wide v2, p0, Lcom/bbm/c/c;->S:J
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string v1, "mixpanel_pending_events"
iget-object v2, p0, Lcom/bbm/c/c;->aE:Ljava/util/Set;
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
iget-object v0, p0, Lcom/bbm/c/c;->aF:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-lez v0, :cond_a2
:try_start_8e
const-string v0, "unusualError"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
move-result-object v0
new-instance v1, Ljava/io/ObjectOutputStream;
invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
iget-object v0, p0, Lcom/bbm/c/c;->aF:Ljava/util/Map;
invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
:cond_a2
:goto_a2
:try_end_a2
.catch Ljava/lang/Exception; {:try_start_8e .. :try_end_a2} :catch_a3
return-void
:catch_a3
move-exception v0
const-string v1, "Excepting trying to save unusual Errors. Data lost"
new-array v2, v4, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_a2
.end method
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
.registers 5
if-eqz p1, :cond_14
if-eqz p2, :cond_14
invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_14
iget-object v0, p0, Lcom/bbm/c/c;->aM:Lcom/bbm/util/dc;
new-instance v1, Lcom/bbm/c/h;
invoke-direct {v1, p0, p1, p2}, Lcom/bbm/c/h;-><init>(Lcom/bbm/c/c;Landroid/content/Context;Ljava/lang/String;)V
invoke-interface {v0, v1}, Lcom/bbm/util/dc;->a(Ljava/lang/Runnable;)V
:cond_14
return-void
.end method
.method public final a(Lcom/bbm/c/m;Lorg/json/JSONObject;)V
.registers 6
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string v1, "eventType"
invoke-virtual {p1}, Lcom/bbm/c/m;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "properties"
invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "id"
iget-object v2, p0, Lcom/bbm/c/c;->aE:Ljava/util/Set;
invoke-interface {v2}, Ljava/util/Set;->size()I
move-result v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
iget-object v1, p0, Lcom/bbm/c/c;->aE:Ljava/util/Set;
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final a(Lcom/bbm/c/n;)V
.registers 7
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
iput-object p1, p0, Lcom/bbm/c/c;->aQ:Lcom/bbm/c/n;
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
iput-wide v0, p0, Lcom/bbm/c/c;->aO:J
const-string v0, "Mixpanel Start Activity Timer %s %d"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/bbm/c/c;->aQ:Lcom/bbm/c/n;
aput-object v3, v1, v2
const/4 v2, 0x1
iget-wide v3, p0, Lcom/bbm/c/c;->aO:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_2
.end method
.method public final a(Lcom/bbm/c/p;)V
.registers 5
:try_start_0
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
sget-object v1, Lcom/bbm/c/n;->aR:Lcom/bbm/c/n;
invoke-virtual {v1}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
sget-object v1, Lcom/bbm/c/m;->m:Lcom/bbm/c/m;
invoke-virtual {p0, v1, v0}, Lcom/bbm/c/c;->b(Lcom/bbm/c/m;Lorg/json/JSONObject;)V
iget-object v1, p0, Lcom/bbm/c/c;->aG:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
:goto_18
:try_end_18
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_18} :catch_19
return-void
:catch_19
move-exception v0
const-string v1, "EventTracker.trackRateBbmEvent()"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_18
.end method
.method public final a(Lcom/bbm/c/q;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
:try_start_0
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
sget-object v1, Lcom/bbm/c/n;->P:Lcom/bbm/c/n;
invoke-virtual {v1}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
sget-object v1, Lcom/bbm/c/n;->R:Lcom/bbm/c/n;
invoke-virtual {v1}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/bbm/c/q;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
sget-object v1, Lcom/bbm/c/j;->b:[I
invoke-virtual {p1}, Lcom/bbm/c/q;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_52
:goto_26
sget-object v1, Lcom/bbm/c/m;->d:Lcom/bbm/c/m;
invoke-virtual {p0, v1, v0}, Lcom/bbm/c/c;->a(Lcom/bbm/c/m;Lorg/json/JSONObject;)V
:goto_2b
return-void
:pswitch_2c
sget-object v1, Lcom/bbm/c/n;->T:Lcom/bbm/c/n;
invoke-virtual {v1}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_35
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_35} :catch_36
goto :goto_26
:catch_36
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "EventTracker.trackStickerDetailsViewEvent() JSONException - "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_2b
nop
:pswitch_data_52
.packed-switch 0x1
:pswitch_2c
.end packed-switch
.end method
.method public final a(Lcom/bbm/c/s;)V
.registers 5
:try_start_0
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
sget-object v1, Lcom/bbm/c/n;->O:Lcom/bbm/c/n;
invoke-virtual {v1}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/bbm/c/s;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
sget-object v1, Lcom/bbm/c/m;->f:Lcom/bbm/c/m;
invoke-virtual {p0, v1, v0}, Lcom/bbm/c/c;->a(Lcom/bbm/c/m;Lorg/json/JSONObject;)V
:try_end_17
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_17} :catch_18
:goto_17
return-void
:catch_18
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "EventTracker.trackStickerStoreView() JSONException - "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_17
.end method
.method public final a(Ljava/lang/String;I)V
.registers 5
iget-object v0, p0, Lcom/bbm/c/c;->n:Ljava/util/HashMap;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final b()V
.registers 7
const-wide/16 v4, 0x0
iget-wide v0, p0, Lcom/bbm/c/c;->aN:J
cmp-long v0, v0, v4
if-gtz v0, :cond_9
:goto_8
return-void
:cond_9
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
iget-wide v2, p0, Lcom/bbm/c/c;->aN:J
sub-long/2addr v0, v2
long-to-int v0, v0
iget v1, p0, Lcom/bbm/c/c;->c:I
add-int/2addr v1, v0
iput v1, p0, Lcom/bbm/c/c;->c:I
const-string v1, "Mixpanel Stop App Timer %d"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v2, v3
invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
iput-wide v4, p0, Lcom/bbm/c/c;->aN:J
goto :goto_8
.end method
.method public final b(Landroid/content/Context;Ljava/lang/String;)V
.registers 7
if-eqz p1, :cond_15
invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/bbm/c/c;->aM:Lcom/bbm/util/dc;
new-instance v1, Lcom/bbm/c/i;
invoke-direct {v1, p0, p1, p2}, Lcom/bbm/c/i;-><init>(Lcom/bbm/c/c;Landroid/content/Context;Ljava/lang/String;)V
const-wide/32 v2, 0x1d4c0
invoke-interface {v0, v1, v2, v3}, Lcom/bbm/util/dc;->a(Ljava/lang/Runnable;J)V
:cond_15
return-void
.end method
.method public final b(Lcom/bbm/c/m;Lorg/json/JSONObject;)V
.registers 5
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
iget-object v0, p0, Lcom/bbm/c/c;->b:Lcom/c/a/a/j;
invoke-virtual {p1}, Lcom/bbm/c/m;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p2}, Lcom/c/a/a/j;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
iget-object v0, p0, Lcom/bbm/c/c;->b:Lcom/c/a/a/j;
invoke-virtual {v0}, Lcom/c/a/a/j;->a()V
goto :goto_2
.end method
.method public final b(Lcom/bbm/c/n;)V
.registers 7
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
iput-object p1, p0, Lcom/bbm/c/c;->aR:Lcom/bbm/c/n;
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
iput-wide v0, p0, Lcom/bbm/c/c;->aP:J
const-string v0, "Mixpanel Start Fragment Timer %s %d"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/bbm/c/c;->aR:Lcom/bbm/c/n;
aput-object v3, v1, v2
const/4 v2, 0x1
iget-wide v3, p0, Lcom/bbm/c/c;->aP:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_2
.end method
.method public final c()V
.registers 2
iget v0, p0, Lcom/bbm/c/c;->ak:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/bbm/c/c;->ak:I
return-void
.end method
.method public final c(Lcom/bbm/c/n;)V
.registers 11
const-wide/16 v7, 0x0
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
if-nez p1, :cond_8
:cond_7
:goto_7
return-void
:cond_8
iget-wide v0, p0, Lcom/bbm/c/c;->aO:J
cmp-long v0, v0, v7
if-lez v0, :cond_7
iget-object v0, p0, Lcom/bbm/c/c;->aQ:Lcom/bbm/c/n;
if-eq p1, v0, :cond_1f
const-string v0, "Mixpanel Stop Activity Timer Mismatch - %s != %s"
new-array v1, v6, [Ljava/lang/Object;
iget-object v2, p0, Lcom/bbm/c/c;->aQ:Lcom/bbm/c/n;
aput-object v2, v1, v4
aput-object p1, v1, v5
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_1f
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
iget-wide v2, p0, Lcom/bbm/c/c;->aO:J
sub-long/2addr v0, v2
long-to-int v0, v0
const-string v1, "Mixpanel Stop Activity Timer %s %d"
new-array v2, v6, [Ljava/lang/Object;
aput-object p1, v2, v4
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v5
invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-direct {p0, p1, v0}, Lcom/bbm/c/c;->a(Lcom/bbm/c/n;I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/c/c;->aQ:Lcom/bbm/c/n;
iput-wide v7, p0, Lcom/bbm/c/c;->aO:J
goto :goto_7
.end method
.method public final d()V
.registers 7
const-wide/16 v4, 0x0
const/4 v0, 0x1
const/4 v1, 0x0
iget-wide v2, p0, Lcom/bbm/c/c;->aN:J
cmp-long v2, v2, v4
if-lez v2, :cond_35
move v2, v0
:goto_b
if-eqz v2, :cond_13
invoke-virtual {p0}, Lcom/bbm/c/c;->b()V
invoke-virtual {p0}, Lcom/bbm/c/c;->a()V
:cond_13
iget-wide v2, p0, Lcom/bbm/c/c;->aO:J
cmp-long v2, v2, v4
if-lez v2, :cond_37
move v2, v0
:goto_1a
if-eqz v2, :cond_24
iget-object v2, p0, Lcom/bbm/c/c;->aQ:Lcom/bbm/c/n;
invoke-virtual {p0, v2}, Lcom/bbm/c/c;->c(Lcom/bbm/c/n;)V
invoke-virtual {p0, v2}, Lcom/bbm/c/c;->a(Lcom/bbm/c/n;)V
:cond_24
iget-wide v2, p0, Lcom/bbm/c/c;->aP:J
cmp-long v2, v2, v4
if-lez v2, :cond_39
:goto_2a
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/bbm/c/c;->aR:Lcom/bbm/c/n;
invoke-virtual {p0, v0}, Lcom/bbm/c/c;->d(Lcom/bbm/c/n;)V
invoke-virtual {p0, v0}, Lcom/bbm/c/c;->b(Lcom/bbm/c/n;)V
:cond_34
return-void
:cond_35
move v2, v1
goto :goto_b
:cond_37
move v2, v1
goto :goto_1a
:cond_39
move v0, v1
goto :goto_2a
.end method
.method public final d(Lcom/bbm/c/n;)V
.registers 13
const-wide/16 v9, 0x3e8
const-wide/16 v7, 0x0
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
if-nez p1, :cond_a
:cond_9
:goto_9
return-void
:cond_a
iget-wide v0, p0, Lcom/bbm/c/c;->aP:J
cmp-long v0, v0, v7
if-lez v0, :cond_9
iget-object v0, p0, Lcom/bbm/c/c;->aR:Lcom/bbm/c/n;
if-eq p1, v0, :cond_21
const-string v0, "Mixpanel Stop Fragment Timer Mismatch - %s != %s"
new-array v1, v6, [Ljava/lang/Object;
iget-object v2, p0, Lcom/bbm/c/c;->aR:Lcom/bbm/c/n;
aput-object v2, v1, v4
aput-object p1, v1, v5
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_21
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
div-long/2addr v0, v9
iget-wide v2, p0, Lcom/bbm/c/c;->aP:J
sub-long/2addr v0, v2
long-to-int v0, v0
const-string v1, "Mixpanel Stop Fragment Timer %s %d"
new-array v2, v6, [Ljava/lang/Object;
aput-object p1, v2, v4
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v2, v5
invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
div-long/2addr v0, v9
iget-wide v2, p0, Lcom/bbm/c/c;->aP:J
sub-long/2addr v0, v2
long-to-int v0, v0
invoke-direct {p0, p1, v0}, Lcom/bbm/c/c;->a(Lcom/bbm/c/n;I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/c/c;->aR:Lcom/bbm/c/n;
iput-wide v7, p0, Lcom/bbm/c/c;->aP:J
goto :goto_9
.end method