.class  Lcom/glympse/android/hal/at;
.super Ljava/lang/Object;
.source "LocationProvider.java"
.implements Lcom/glympse/android/core/GLocationProvider;
.field public static final co:I = 0x0
.field public static final cp:I = 0x0
.field public static final cq:I = 0x0
.field public static final cr:I = 0x0
.field public static final cs:I = 0x0
.field public static final ct:I = 0x0
.field private static final cu:I = 0x1d4c0
.field private aV:Landroid/os/Handler;
.field private bZ:Lcom/glympse/android/core/GLocationListener;
.field private ca:Landroid/location/LocationManager;
.field private cb:I
.field private cc:I
.field private cd:I
.field private ce:Lcom/glympse/android/core/GLocationProfile;
.field private cf:Z
.field private cg:Z
.field private ch:Z
.field private ci:Lcom/glympse/android/hal/aw;
.field private cj:Lcom/glympse/android/hal/av;
.field private ck:Lcom/glympse/android/hal/ax;
.field private cl:Lcom/glympse/android/hal/au;
.field private cm:Landroid/location/Location;
.field private cn:Z
.field private e:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/hal/at;->e:Landroid/content/Context;
iput v0, p0, Lcom/glympse/android/hal/at;->cb:I
iput v0, p0, Lcom/glympse/android/hal/at;->cc:I
iput v0, p0, Lcom/glympse/android/hal/at;->cd:I
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/glympse/android/hal/at;->aV:Landroid/os/Handler;
iput-object v1, p0, Lcom/glympse/android/hal/at;->cm:Landroid/location/Location;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/hal/at;->cn:Z
invoke-virtual {p0, v1}, Lcom/glympse/android/hal/at;->applyProfile(Lcom/glympse/android/core/GLocationProfile;)V
return-void
.end method
.method private A()V
.registers 5
const/4 v3, 0x3
const/4 v2, 0x1
iget v0, p0, Lcom/glympse/android/hal/at;->cc:I
iget v1, p0, Lcom/glympse/android/hal/at;->cd:I
if-ne v0, v1, :cond_e
iget v0, p0, Lcom/glympse/android/hal/at;->cd:I
invoke-direct {p0, v0}, Lcom/glympse/android/hal/at;->c(I)V
:goto_d
return-void
:cond_e
iget v0, p0, Lcom/glympse/android/hal/at;->cc:I
if-eq v3, v0, :cond_16
iget v0, p0, Lcom/glympse/android/hal/at;->cd:I
if-ne v3, v0, :cond_1a
:cond_16
invoke-direct {p0, v3}, Lcom/glympse/android/hal/at;->c(I)V
goto :goto_d
:cond_1a
iget v0, p0, Lcom/glympse/android/hal/at;->cc:I
if-eq v2, v0, :cond_22
iget v0, p0, Lcom/glympse/android/hal/at;->cd:I
if-ne v2, v0, :cond_26
:cond_22
invoke-direct {p0, v2}, Lcom/glympse/android/hal/at;->c(I)V
goto :goto_d
:cond_26
const/4 v0, 0x4
invoke-direct {p0, v0}, Lcom/glympse/android/hal/at;->c(I)V
goto :goto_d
.end method
.method static synthetic a(Lcom/glympse/android/hal/at;I)I
.registers 2
iput p1, p0, Lcom/glympse/android/hal/at;->cc:I
return p1
.end method
.method public static a(Landroid/location/Location;)Lcom/glympse/android/core/GLocation;
.registers 13
const/high16 v11, 0x7fc0
new-instance v0, Lcom/glympse/android/lib/Location;
invoke-static {p0}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
move-result-wide v1
invoke-static {p0}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v3
invoke-static {p0}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v5
invoke-static {p0}, Ldroidbox/android/location/Location;->hasSpeed(Landroid/location/Location;)Z
move-result v7
if-eqz v7, :cond_3d
invoke-static {p0}, Ldroidbox/android/location/Location;->getSpeed(Landroid/location/Location;)F
move-result v7
:goto_1a
invoke-static {p0}, Ldroidbox/android/location/Location;->hasBearing(Landroid/location/Location;)Z
move-result v8
if-eqz v8, :cond_3f
invoke-static {p0}, Ldroidbox/android/location/Location;->getBearing(Landroid/location/Location;)F
move-result v8
:goto_24
invoke-static {p0}, Ldroidbox/android/location/Location;->hasAltitude(Landroid/location/Location;)Z
move-result v9
if-eqz v9, :cond_41
invoke-static {p0}, Ldroidbox/android/location/Location;->getAltitude(Landroid/location/Location;)D
move-result-wide v9
double-to-float v9, v9
:goto_2f
invoke-static {p0}, Ldroidbox/android/location/Location;->hasAccuracy(Landroid/location/Location;)Z
move-result v10
if-eqz v10, :cond_43
invoke-static {p0}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v10
:goto_39
invoke-direct/range {v0 .. v11}, Lcom/glympse/android/lib/Location;-><init>(JDDFFFFF)V
return-object v0
:cond_3d
move v7, v11
goto :goto_1a
:cond_3f
move v8, v11
goto :goto_24
:cond_41
move v9, v11
goto :goto_2f
:cond_43
move v10, v11
goto :goto_39
.end method
.method static synthetic a(Lcom/glympse/android/hal/at;Lcom/glympse/android/hal/au;)Lcom/glympse/android/hal/au;
.registers 2
iput-object p1, p0, Lcom/glympse/android/hal/at;->cl:Lcom/glympse/android/hal/au;
return-object p1
.end method
.method static synthetic a(Lcom/glympse/android/hal/at;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/glympse/android/hal/at;->cn:Z
return p1
.end method
.method static synthetic b(Lcom/glympse/android/hal/at;I)I
.registers 2
iput p1, p0, Lcom/glympse/android/hal/at;->cd:I
return p1
.end method
.method public static b(I)Lcom/glympse/android/core/GLocationProfile;
.registers 8
const/16 v3, 0x64
const/4 v2, 0x3
const-wide/16 v4, 0x0
const/4 v6, 0x0
packed-switch p0, :pswitch_data_28
const/4 v0, 0x0
:goto_a
return-object v0
:pswitch_b
const/4 v1, 0x1
move v0, p0
invoke-static/range {v0 .. v6}, Lcom/glympse/android/core/CoreFactory;->createProfile(IIIIDI)Lcom/glympse/android/core/GLocationProfile;
move-result-object v0
goto :goto_a
:pswitch_12
move v0, p0
move v1, v6
invoke-static/range {v0 .. v6}, Lcom/glympse/android/core/CoreFactory;->createProfile(IIIIDI)Lcom/glympse/android/core/GLocationProfile;
move-result-object v0
goto :goto_a
:pswitch_19
move v0, p0
move v1, v6
invoke-static/range {v0 .. v6}, Lcom/glympse/android/core/CoreFactory;->createProfile(IIIIDI)Lcom/glympse/android/core/GLocationProfile;
move-result-object v0
goto :goto_a
:pswitch_20
move v0, p0
move v1, v6
invoke-static/range {v0 .. v6}, Lcom/glympse/android/core/CoreFactory;->createProfile(IIIIDI)Lcom/glympse/android/core/GLocationProfile;
move-result-object v0
goto :goto_a
nop
:pswitch_data_28
.packed-switch 0x0
:pswitch_b
:pswitch_12
:pswitch_19
:pswitch_20
.end packed-switch
.end method
.method private b(Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
if-nez p1, :cond_8
if-nez p2, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
:cond_8
invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method private c(I)V
.registers 4
iget v0, p0, Lcom/glympse/android/hal/at;->cb:I
if-eq p1, v0, :cond_11
iput p1, p0, Lcom/glympse/android/hal/at;->cb:I
iget-object v0, p0, Lcom/glympse/android/hal/at;->bZ:Lcom/glympse/android/core/GLocationListener;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/glympse/android/hal/at;->bZ:Lcom/glympse/android/core/GLocationListener;
iget v1, p0, Lcom/glympse/android/hal/at;->cb:I
invoke-interface {v0, v1}, Lcom/glympse/android/core/GLocationListener;->stateChanged(I)V
:cond_11
return-void
.end method
.method protected B()V
.registers 4
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/glympse/android/hal/at;->cn:Z
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/glympse/android/hal/at;->ci:Lcom/glympse/android/hal/aw;
if-nez v0, :cond_1c
iget-boolean v0, p0, Lcom/glympse/android/hal/at;->cf:Z
if-eqz v0, :cond_1c
new-instance v0, Lcom/glympse/android/hal/aw;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/glympse/android/hal/aw;-><init>(Lcom/glympse/android/hal/at;Lcom/glympse/android/hal/at$1;)V
iput-object v0, p0, Lcom/glympse/android/hal/at;->ci:Lcom/glympse/android/hal/aw;
iget-object v0, p0, Lcom/glympse/android/hal/at;->ci:Lcom/glympse/android/hal/aw;
iget-object v1, p0, Lcom/glympse/android/hal/at;->ca:Landroid/location/LocationManager;
invoke-virtual {v0, v1, v2, v2}, Lcom/glympse/android/hal/aw;->a(Landroid/location/LocationManager;II)Z
:cond_1c
return-void
.end method
.method protected C()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/hal/at;->ci:Lcom/glympse/android/hal/aw;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/glympse/android/hal/at;->ci:Lcom/glympse/android/hal/aw;
iget-object v1, p0, Lcom/glympse/android/hal/at;->ca:Landroid/location/LocationManager;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/aw;->a(Landroid/location/LocationManager;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/at;->ci:Lcom/glympse/android/hal/aw;
:cond_e
return-void
.end method
.method protected D()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/hal/at;->ck:Lcom/glympse/android/hal/ax;
if-nez v0, :cond_18
iget-boolean v0, p0, Lcom/glympse/android/hal/at;->ch:Z
if-eqz v0, :cond_18
new-instance v0, Lcom/glympse/android/hal/ax;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/glympse/android/hal/ax;-><init>(Lcom/glympse/android/hal/at;Lcom/glympse/android/hal/at$1;)V
iput-object v0, p0, Lcom/glympse/android/hal/at;->ck:Lcom/glympse/android/hal/ax;
iget-object v0, p0, Lcom/glympse/android/hal/at;->ck:Lcom/glympse/android/hal/ax;
iget-object v1, p0, Lcom/glympse/android/hal/at;->ca:Landroid/location/LocationManager;
invoke-virtual {v0, v1, v2, v2}, Lcom/glympse/android/hal/ax;->a(Landroid/location/LocationManager;II)Z
:cond_18
return-void
.end method
.method protected E()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/hal/at;->ck:Lcom/glympse/android/hal/ax;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/glympse/android/hal/at;->ck:Lcom/glympse/android/hal/ax;
iget-object v1, p0, Lcom/glympse/android/hal/at;->ca:Landroid/location/LocationManager;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/ax;->a(Landroid/location/LocationManager;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/at;->ck:Lcom/glympse/android/hal/ax;
:cond_e
return-void
.end method
.method protected F()V
.registers 6
iget-object v0, p0, Lcom/glympse/android/hal/at;->cj:Lcom/glympse/android/hal/av;
if-nez v0, :cond_2c
iget-boolean v0, p0, Lcom/glympse/android/hal/at;->cg:Z
if-eqz v0, :cond_2c
const-wide/16 v1, 0x0
const/4 v0, 0x0
iget-object v3, p0, Lcom/glympse/android/hal/at;->ce:Lcom/glympse/android/core/GLocationProfile;
if-eqz v3, :cond_1d
iget-object v0, p0, Lcom/glympse/android/hal/at;->ce:Lcom/glympse/android/core/GLocationProfile;
invoke-interface {v0}, Lcom/glympse/android/core/GLocationProfile;->getFrequency()I
move-result v0
int-to-long v1, v0
iget-object v0, p0, Lcom/glympse/android/hal/at;->ce:Lcom/glympse/android/core/GLocationProfile;
invoke-interface {v0}, Lcom/glympse/android/core/GLocationProfile;->getDistance()D
move-result-wide v3
double-to-float v0, v3
:cond_1d
new-instance v3, Lcom/glympse/android/hal/av;
const/4 v4, 0x0
invoke-direct {v3, p0, v4}, Lcom/glympse/android/hal/av;-><init>(Lcom/glympse/android/hal/at;Lcom/glympse/android/hal/at$1;)V
iput-object v3, p0, Lcom/glympse/android/hal/at;->cj:Lcom/glympse/android/hal/av;
iget-object v3, p0, Lcom/glympse/android/hal/at;->cj:Lcom/glympse/android/hal/av;
iget-object v4, p0, Lcom/glympse/android/hal/at;->ca:Landroid/location/LocationManager;
invoke-virtual {v3, v4, v1, v2, v0}, Lcom/glympse/android/hal/av;->a(Landroid/location/LocationManager;JF)Z
:cond_2c
return-void
.end method
.method protected G()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/hal/at;->cj:Lcom/glympse/android/hal/av;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/glympse/android/hal/at;->cj:Lcom/glympse/android/hal/av;
iget-object v1, p0, Lcom/glympse/android/hal/at;->ca:Landroid/location/LocationManager;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/av;->a(Landroid/location/LocationManager;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/at;->cj:Lcom/glympse/android/hal/av;
:cond_e
return-void
.end method
.method protected H()V
.registers 6
const/4 v4, 0x0
iget-object v0, p0, Lcom/glympse/android/hal/at;->cl:Lcom/glympse/android/hal/au;
if-nez v0, :cond_20
const/4 v0, 0x1
const-string v1, "[LocationProvider] Starting location timer"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
new-instance v0, Lcom/glympse/android/hal/au;
invoke-direct {v0, p0, v4}, Lcom/glympse/android/hal/au;-><init>(Lcom/glympse/android/hal/at;Lcom/glympse/android/hal/at$1;)V
iput-object v0, p0, Lcom/glympse/android/hal/at;->cl:Lcom/glympse/android/hal/au;
iget-object v0, p0, Lcom/glympse/android/hal/at;->aV:Landroid/os/Handler;
iget-object v1, p0, Lcom/glympse/android/hal/at;->cl:Lcom/glympse/android/hal/au;
const-wide/16 v2, 0x2710
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
move-result v0
if-nez v0, :cond_20
iput-object v4, p0, Lcom/glympse/android/hal/at;->cl:Lcom/glympse/android/hal/au;
:cond_20
return-void
.end method
.method protected I()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/hal/at;->cl:Lcom/glympse/android/hal/au;
if-eqz v0, :cond_14
const/4 v0, 0x1
const-string v1, "[LocationProvider] Stopping location timer"
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/hal/at;->aV:Landroid/os/Handler;
iget-object v1, p0, Lcom/glympse/android/hal/at;->cl:Lcom/glympse/android/hal/au;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/at;->cl:Lcom/glympse/android/hal/au;
:cond_14
return-void
.end method
.method protected J()V
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/hal/at;->G()V
invoke-virtual {p0}, Lcom/glympse/android/hal/at;->C()V
invoke-virtual {p0}, Lcom/glympse/android/hal/at;->E()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/at;->cm:Landroid/location/Location;
iget-object v0, p0, Lcom/glympse/android/hal/at;->ca:Landroid/location/LocationManager;
if-eqz v0, :cond_19
invoke-virtual {p0}, Lcom/glympse/android/hal/at;->F()V
invoke-virtual {p0}, Lcom/glympse/android/hal/at;->B()V
invoke-virtual {p0}, Lcom/glympse/android/hal/at;->D()V
:cond_19
return-void
.end method
.method protected a(Landroid/location/Location;Landroid/location/Location;)Z
.registers 11
const/4 v2, 0x0
const/4 v1, 0x1
if-nez p2, :cond_5
:goto_4
:cond_4
return v1
:cond_5
invoke-static {p1}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
move-result-wide v3
invoke-static {p2}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
move-result-wide v5
sub-long v4, v3, v5
const-wide/32 v6, 0x1d4c0
cmp-long v0, v4, v6
if-lez v0, :cond_2c
move v3, v1
:goto_17
const-wide/32 v6, -0x1d4c0
cmp-long v0, v4, v6
if-gez v0, :cond_2e
move v0, v1
:goto_1f
const-wide/16 v6, 0x0
cmp-long v4, v4, v6
if-lez v4, :cond_30
move v5, v1
:goto_26
if-nez v3, :cond_4
if-eqz v0, :cond_32
move v1, v2
goto :goto_4
:cond_2c
move v3, v2
goto :goto_17
:cond_2e
move v0, v2
goto :goto_1f
:cond_30
move v5, v2
goto :goto_26
:cond_32
invoke-static {p1}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v0
invoke-static {p2}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v3
sub-float/2addr v0, v3
float-to-int v0, v0
if-lez v0, :cond_61
move v4, v1
:goto_3f
if-gez v0, :cond_63
move v3, v1
:goto_42
const/16 v6, 0xc8
if-le v0, v6, :cond_65
move v0, v1
:goto_47
invoke-static {p1}, Ldroidbox/android/location/Location;->getProvider(Landroid/location/Location;)Ljava/lang/String;
move-result-object v6
invoke-static {p2}, Ldroidbox/android/location/Location;->getProvider(Landroid/location/Location;)Ljava/lang/String;
move-result-object v7
invoke-direct {p0, v6, v7}, Lcom/glympse/android/hal/at;->b(Ljava/lang/String;Ljava/lang/String;)Z
move-result v6
if-nez v3, :cond_4
if-eqz v5, :cond_59
if-eqz v4, :cond_4
:cond_59
if-eqz v5, :cond_5f
if-nez v0, :cond_5f
if-nez v6, :cond_4
:cond_5f
move v1, v2
goto :goto_4
:cond_61
move v4, v2
goto :goto_3f
:cond_63
move v3, v2
goto :goto_42
:cond_65
move v0, v2
goto :goto_47
.end method
.method protected a(Ljava/lang/String;Landroid/location/Location;)Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/glympse/android/hal/at;->bZ:Lcom/glympse/android/core/GLocationListener;
if-nez v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
iget-object v1, p0, Lcom/glympse/android/hal/at;->cm:Landroid/location/Location;
invoke-virtual {p0, p2, v1}, Lcom/glympse/android/hal/at;->a(Landroid/location/Location;Landroid/location/Location;)Z
move-result v1
if-eqz v1, :cond_5
iput-object p2, p0, Lcom/glympse/android/hal/at;->cm:Landroid/location/Location;
invoke-static {p2}, Lcom/glympse/android/hal/at;->a(Landroid/location/Location;)Lcom/glympse/android/core/GLocation;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/hal/at;->bZ:Lcom/glympse/android/core/GLocationListener;
invoke-interface {v1, v0}, Lcom/glympse/android/core/GLocationListener;->locationChanged(Lcom/glympse/android/core/GLocation;)V
const/4 v0, 0x1
goto :goto_5
.end method
.method public applyProfile(Lcom/glympse/android/core/GLocationProfile;)V
.registers 6
const/4 v2, 0x0
const/4 v1, 0x1
iput-object p1, p0, Lcom/glympse/android/hal/at;->ce:Lcom/glympse/android/core/GLocationProfile;
iget-object v0, p0, Lcom/glympse/android/hal/at;->ce:Lcom/glympse/android/core/GLocationProfile;
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/glympse/android/hal/at;->ce:Lcom/glympse/android/core/GLocationProfile;
invoke-interface {v0}, Lcom/glympse/android/core/GLocationProfile;->getSource()I
move-result v3
and-int/lit8 v0, v3, 0x1
if-eqz v0, :cond_26
move v0, v1
:goto_13
iput-boolean v0, p0, Lcom/glympse/android/hal/at;->cf:Z
and-int/lit8 v0, v3, 0x2
if-eqz v0, :cond_28
move v0, v1
:goto_1a
iput-boolean v0, p0, Lcom/glympse/android/hal/at;->cg:Z
and-int/lit8 v0, v3, 0x4
if-eqz v0, :cond_2a
:goto_20
iput-boolean v1, p0, Lcom/glympse/android/hal/at;->ch:Z
:goto_22
invoke-virtual {p0}, Lcom/glympse/android/hal/at;->J()V
return-void
:cond_26
move v0, v2
goto :goto_13
:cond_28
move v0, v2
goto :goto_1a
:cond_2a
move v1, v2
goto :goto_20
:cond_2c
iput-boolean v1, p0, Lcom/glympse/android/hal/at;->cf:Z
iput-boolean v1, p0, Lcom/glympse/android/hal/at;->cg:Z
iput-boolean v2, p0, Lcom/glympse/android/hal/at;->ch:Z
goto :goto_22
.end method
.method protected d(I)V
.registers 4
iget v0, p0, Lcom/glympse/android/hal/at;->cc:I
if-eq p1, v0, :cond_c
const/4 v0, 0x1
if-ne p1, v0, :cond_d
iget v0, p0, Lcom/glympse/android/hal/at;->cc:I
const/4 v1, 0x3
if-ne v0, v1, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iput p1, p0, Lcom/glympse/android/hal/at;->cc:I
invoke-direct {p0}, Lcom/glympse/android/hal/at;->A()V
goto :goto_c
.end method
.method protected e(I)V
.registers 4
iget v0, p0, Lcom/glympse/android/hal/at;->cd:I
if-eq p1, v0, :cond_c
const/4 v0, 0x1
if-ne p1, v0, :cond_d
iget v0, p0, Lcom/glympse/android/hal/at;->cd:I
const/4 v1, 0x3
if-ne v0, v1, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iput p1, p0, Lcom/glympse/android/hal/at;->cd:I
invoke-direct {p0}, Lcom/glympse/android/hal/at;->A()V
goto :goto_c
.end method
.method public getLastKnownLocation()Lcom/glympse/android/core/GLocation;
.registers 7
const/4 v3, 0x0
:try_start_1
iget-object v0, p0, Lcom/glympse/android/hal/at;->e:Landroid/content/Context;
const-string v1, "location"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
const/4 v1, 0x1
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->getProviders(Landroid/location/LocationManager;Z)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
:try_end_13
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_13} :catch_2f
move-result-object v4
move-object v2, v3
:try_start_15
:goto_15
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_31
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v1
if-eqz v1, :cond_3c
invoke-virtual {p0, v1, v2}, Lcom/glympse/android/hal/at;->a(Landroid/location/Location;Landroid/location/Location;)Z
:try_end_2a
.catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_2a} :catch_3a
move-result v5
if-eqz v5, :cond_3c
:goto_2d
move-object v2, v1
goto :goto_15
:catch_2f
move-exception v0
move-object v2, v3
:goto_31
:cond_31
if-nez v2, :cond_35
move-object v0, v3
:goto_34
return-object v0
:cond_35
invoke-static {v2}, Lcom/glympse/android/hal/at;->a(Landroid/location/Location;)Lcom/glympse/android/core/GLocation;
move-result-object v0
goto :goto_34
:catch_3a
move-exception v0
goto :goto_31
:cond_3c
move-object v1, v2
goto :goto_2d
.end method
.method public isStarted()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/at;->ca:Landroid/location/LocationManager;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public setLocationListener(Lcom/glympse/android/core/GLocationListener;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/hal/at;->bZ:Lcom/glympse/android/core/GLocationListener;
return-void
.end method
.method public start()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/hal/at;->ca:Landroid/location/LocationManager;
if-nez v0, :cond_19
:try_start_4
iget-object v0, p0, Lcom/glympse/android/hal/at;->e:Landroid/content/Context;
const-string v1, "location"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
iput-object v0, p0, Lcom/glympse/android/hal/at;->ca:Landroid/location/LocationManager;
invoke-virtual {p0}, Lcom/glympse/android/hal/at;->F()V
invoke-virtual {p0}, Lcom/glympse/android/hal/at;->B()V
invoke-virtual {p0}, Lcom/glympse/android/hal/at;->D()V
:try_end_19
.catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_19} :catch_1a
:cond_19
:goto_19
return-void
:catch_1a
move-exception v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
invoke-virtual {p0}, Lcom/glympse/android/hal/at;->stop()V
goto :goto_19
.end method
.method public stop()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/hal/at;->ca:Landroid/location/LocationManager;
if-eqz v0, :cond_10
:try_start_4
invoke-virtual {p0}, Lcom/glympse/android/hal/at;->C()V
invoke-virtual {p0}, Lcom/glympse/android/hal/at;->G()V
invoke-virtual {p0}, Lcom/glympse/android/hal/at;->E()V
:try_end_d
.catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_11
:goto_d
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/hal/at;->ca:Landroid/location/LocationManager;
:cond_10
return-void
:catch_11
move-exception v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_d
.end method
.method public toString()Ljava/lang/String;
.registers 2
const-string v0, "com.glympse.android.hal.LocationProvider"
return-object v0
.end method