.class  Lcom/millennialmedia/android/y;
.super Lcom/millennialmedia/android/cf;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = null
.field private static final d:Ljava/lang/String; = "close"
.field private static final e:Ljava/lang/String; = "expandToExternalBrowser"
.field private static final f:Ljava/lang/String; = "expandWithProperties"
.field private static final g:Ljava/lang/String; = "open"
.field private static final h:Ljava/lang/String; = "setOrientation"
.field private static final i:Ljava/lang/String; = "useCustomClose"
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/millennialmedia/android/y;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/millennialmedia/android/y;->a:Ljava/lang/String;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/android/cf;-><init>()V
return-void
.end method
.method private a(Ljava/lang/String;Lcom/millennialmedia/android/OverlaySettings;)Landroid/content/Intent;
.registers 7
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
if-eqz p1, :cond_e
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
:cond_e
const-string v1, "settings"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v1, "internalId"
iget-wide v2, p2, Lcom/millennialmedia/android/OverlaySettings;->z:J
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
return-object v0
.end method
.method private a(Lcom/millennialmedia/android/cg;)Z
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
iget v0, p1, Lcom/millennialmedia/android/cg;->c:I
if-ne v0, v2, :cond_24
iget-object v0, p1, Lcom/millennialmedia/android/cg;->d:Ljava/lang/Object;
instance-of v0, v0, Ljava/lang/String;
if-eqz v0, :cond_24
iget-object v0, p1, Lcom/millennialmedia/android/cg;->d:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
const-string v3, "portrait"
invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_20
const-string v3, "landscape"
invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_22
:cond_20
move v0, v2
:goto_21
return v0
:cond_22
move v0, v1
goto :goto_21
:cond_24
move v0, v1
goto :goto_21
.end method
.method private g(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 4
const-string v0, "allowOrientationChange"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_1c
invoke-virtual {p0}, Lcom/millennialmedia/android/y;->d()Lcom/millennialmedia/android/g;
move-result-object v1
if-eqz v1, :cond_1c
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
invoke-virtual {v1, v0}, Lcom/millennialmedia/android/g;->a(Z)V
invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_1b
return-object v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method
.method private h(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 5
const-string v0, "forceOrientation"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0}, Lcom/millennialmedia/android/y;->d()Lcom/millennialmedia/android/g;
move-result-object v1
if-eqz v1, :cond_4d
const-string v2, "none"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_3a
const-string v2, "portrait"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_28
invoke-virtual {v1}, Lcom/millennialmedia/android/g;->b()V
const-string v0, "portrait"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_27
return-object v0
:cond_28
const-string v2, "landscape"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4d
invoke-virtual {v1}, Lcom/millennialmedia/android/g;->c()V
const-string v0, "landscape"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_27
:cond_3a
const-string v2, "none"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4d
const/4 v0, 0x1
invoke-virtual {v1, v0}, Lcom/millennialmedia/android/g;->a(Z)V
const-string v0, "none"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_27
:cond_4d
const/4 v0, 0x0
goto :goto_27
.end method
.method  a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 5
const/4 v0, 0x0
const-string v1, "close"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_e
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/y;->a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
:cond_d
:goto_d
return-object v0
:cond_e
const-string v1, "expandToExternalBrowser"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1b
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/y;->c(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_1b
const-string v1, "expandWithProperties"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_28
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/y;->d(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_28
const-string v1, "open"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_35
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/y;->b(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_35
const-string v1, "setOrientation"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_42
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/y;->f(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_42
const-string v1, "useCustomClose"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_d
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/y;->e(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
.end method
.method public a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/y;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_16
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->i()Lcom/millennialmedia/android/ch;
move-result-object v0
invoke-virtual {v0}, Lcom/millennialmedia/android/ch;->b()V
invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_15
return-object v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method public b(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 7
const-string v0, "url"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lcom/millennialmedia/android/y;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/Context;
if-eqz v0, :cond_38
if-eqz v1, :cond_38
new-instance v2, Landroid/content/Intent;
const-string v3, "android.intent.action.VIEW"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const-string v0, "PROPERTY_EXPANDING"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/y;->b(Ljava/lang/String;)J
move-result-wide v3
const-string v0, "browser"
invoke-static {v1, v0, v3, v4}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Ljava/lang/String;J)V
invoke-static {v1, v2}, Lcom/millennialmedia/android/dj;->c(Landroid/content/Context;Landroid/content/Intent;)V
invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_37
return-object v0
:cond_38
const/4 v0, 0x0
goto :goto_37
.end method
.method public c(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 3
invoke-virtual {p0, p1}, Lcom/millennialmedia/android/y;->b(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
return-object v0
.end method
.method public d(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 18
const-string v1, "PROPERTY_BANNER_TYPE"
move-object/from16 v0, p1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
if-eqz v1, :cond_19
invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_19
const-string v1, "Cannot expand a non banner ad"
invoke-static {v1}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v1
:goto_18
return-object v1
:cond_19
const-string v1, "url"
move-object/from16 v0, p1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v2, "transparent"
move-object/from16 v0, p1
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
const-string v3, "useCustomClose"
move-object/from16 v0, p1
invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
const-string v4, "transition"
move-object/from16 v0, p1
invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
const-string v5, "orientation"
move-object/from16 v0, p1
invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/String;
const-string v6, "transitionDuration"
move-object/from16 v0, p1
invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
const-string v7, "height"
move-object/from16 v0, p1
invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
const-string v8, "width"
move-object/from16 v0, p1
invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v8
check-cast v8, Ljava/lang/String;
const-string v9, "modal"
move-object/from16 v0, p1
invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/String;
const-string v10, "PROPERTY_EXPANDING"
move-object/from16 v0, p1
invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v10
check-cast v10, Ljava/lang/String;
const-string v11, "allowOrientationChange"
move-object/from16 v0, p1
invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v11
check-cast v11, Ljava/lang/String;
move-object/from16 v0, p0
iget-object v12, v0, Lcom/millennialmedia/android/y;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v12
check-cast v12, Landroid/content/Context;
if-eqz v12, :cond_126
new-instance v13, Lcom/millennialmedia/android/OverlaySettings;
invoke-direct {v13}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V
if-eqz v1, :cond_9c
iput-object v1, v13, Lcom/millennialmedia/android/OverlaySettings;->p:Ljava/lang/String;
:cond_9c
if-eqz v10, :cond_a6
invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v10
float-to-int v10, v10
int-to-long v14, v10
iput-wide v14, v13, Lcom/millennialmedia/android/OverlaySettings;->z:J
:cond_a6
if-eqz v2, :cond_af
invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v2
invoke-virtual {v13, v2}, Lcom/millennialmedia/android/OverlaySettings;->b(Z)V
:cond_af
if-eqz v3, :cond_b8
invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v2
invoke-virtual {v13, v2}, Lcom/millennialmedia/android/OverlaySettings;->a(Z)V
:cond_b8
if-eqz v4, :cond_bd
invoke-virtual {v13, v4}, Lcom/millennialmedia/android/OverlaySettings;->b(Ljava/lang/String;)V
:cond_bd
if-eqz v11, :cond_c5
invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v2
iput-boolean v2, v13, Lcom/millennialmedia/android/OverlaySettings;->t:Z
:cond_c5
if-nez v5, :cond_129
const-string v2, "forceOrientation"
move-object/from16 v0, p1
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
:goto_d1
if-eqz v2, :cond_d5
iput-object v2, v13, Lcom/millennialmedia/android/OverlaySettings;->o:Ljava/lang/String;
:cond_d5
if-eqz v7, :cond_de
invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v2
float-to-int v2, v2
iput v2, v13, Lcom/millennialmedia/android/OverlaySettings;->q:I
:cond_de
if-eqz v8, :cond_e7
invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v2
float-to-int v2, v2
iput v2, v13, Lcom/millennialmedia/android/OverlaySettings;->r:I
:cond_e7
if-eqz v9, :cond_ef
invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v2
iput-boolean v2, v13, Lcom/millennialmedia/android/OverlaySettings;->s:Z
:cond_ef
if-eqz v6, :cond_fb
:try_start_f1
invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
const-wide/16 v4, 0x3e8
mul-long/2addr v2, v4
invoke-virtual {v13, v2, v3}, Lcom/millennialmedia/android/OverlaySettings;->a(J)V
:goto_fb
:cond_fb
:try_end_fb
.catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_fb} :catch_11d
move-object/from16 v0, p0
invoke-direct {v0, v1, v13}, Lcom/millennialmedia/android/y;->a(Ljava/lang/String;Lcom/millennialmedia/android/OverlaySettings;)Landroid/content/Intent;
move-result-object v1
invoke-static {v12, v1}, Lcom/millennialmedia/android/dj;->a(Landroid/content/Context;Landroid/content/Intent;)V
const-string v1, "PROPERTY_EXPANDING"
move-object/from16 v0, p1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
move-object/from16 v0, p0
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/y;->b(Ljava/lang/String;)J
move-result-wide v1
invoke-static {v12, v1, v2}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;J)V
invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;
move-result-object v1
goto/16 :goto_18
:catch_11d
move-exception v2
sget-object v3, Lcom/millennialmedia/android/y;->a:Ljava/lang/String;
const-string v4, "Problem converting transitionDuration"
invoke-static {v3, v4, v2}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_fb
:cond_126
const/4 v1, 0x0
goto/16 :goto_18
:cond_129
move-object v2, v5
goto :goto_d1
.end method
.method public e(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 4
iget-object v0, p0, Lcom/millennialmedia/android/y;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
const-string v1, "useCustomClose"
invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
if-eqz v1, :cond_26
if-eqz v0, :cond_26
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->k()Lcom/millennialmedia/android/AdViewOverlayView;
move-result-object v0
if-eqz v0, :cond_26
invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->a(Z)V
invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_25
return-object v0
:cond_26
const/4 v0, 0x0
goto :goto_25
.end method
.method public f(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 4
invoke-direct {p0, p1}, Lcom/millennialmedia/android/y;->h(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
if-eqz v0, :cond_c
invoke-direct {p0, v0}, Lcom/millennialmedia/android/y;->a(Lcom/millennialmedia/android/cg;)Z
move-result v1
if-nez v1, :cond_10
:cond_c
invoke-direct {p0, p1}, Lcom/millennialmedia/android/y;->g(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
:cond_10
return-object v0
.end method