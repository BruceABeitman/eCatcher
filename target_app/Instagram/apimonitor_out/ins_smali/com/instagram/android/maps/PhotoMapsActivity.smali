.class public Lcom/instagram/android/maps/PhotoMapsActivity;
.super Lcom/google/android/maps/MapActivity;
.source "PhotoMapsActivity.java"
.implements Lcom/instagram/a/b;
.field private static w:Lcom/instagram/android/maps/PhotoMapsActivity;
.field private a:Lcom/instagram/android/maps/ui/i;
.field private b:Lcom/google/android/maps/MapController;
.field private c:Lcom/instagram/android/maps/b/b;
.field private d:Ljava/util/List;
.field private e:Lcom/instagram/android/maps/b/i;
.field private f:I
.field private g:Landroid/os/Handler;
.field private h:Lcom/instagram/android/maps/ui/m;
.field private i:Ljava/util/ArrayList;
.field private j:Lcom/instagram/android/maps/ad;
.field private k:Lcom/instagram/android/maps/ui/a/b;
.field private l:Lcom/instagram/android/maps/e/d;
.field private m:Lcom/instagram/android/maps/e/e;
.field private n:Z
.field private o:Z
.field private p:Z
.field private final q:Landroid/content/BroadcastReceiver;
.field private r:Landroid/content/BroadcastReceiver;
.field private final s:Ljava/util/Set;
.field private final t:Lcom/instagram/common/h/d;
.field private u:Ljava/util/List;
.field private v:Z
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Ljava/util/List;
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->e:Lcom/instagram/android/maps/b/i;
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->f:I
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->g:Landroid/os/Handler;
iput-boolean v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->n:Z
iput-boolean v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->o:Z
iput-boolean v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->p:Z
new-instance v0, Lcom/instagram/android/maps/b;
invoke-direct {v0, p0}, Lcom/instagram/android/maps/b;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->q:Landroid/content/BroadcastReceiver;
new-instance v0, Lcom/instagram/android/maps/s;
invoke-direct {v0, p0}, Lcom/instagram/android/maps/s;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->r:Landroid/content/BroadcastReceiver;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->s:Ljava/util/Set;
new-instance v0, Lcom/instagram/android/maps/u;
invoke-direct {v0, p0}, Lcom/instagram/android/maps/u;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->t:Lcom/instagram/common/h/d;
iput-boolean v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->v:Z
return-void
.end method
.method private static a(IDDDD)I
.registers 19
const-wide v0, 0x40b8e30000000000L
const-wide v2, 0x404ca5dcc63f1412L
div-double v2, p1, v2
invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D
move-result-wide v2
const-wide v4, 0x404ca5dcc63f1412L
div-double v4, p3, v4
invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D
move-result-wide v4
mul-double/2addr v2, v4
const-wide v4, 0x404ca5dcc63f1412L
div-double v4, p1, v4
invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D
move-result-wide v4
const-wide v6, 0x404ca5dcc63f1412L
div-double v6, p3, v6
invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D
move-result-wide v6
mul-double/2addr v4, v6
const-wide v6, 0x404ca5dcc63f1412L
div-double v6, p7, v6
const-wide v8, 0x404ca5dcc63f1412L
div-double v8, p5, v8
sub-double/2addr v6, v8
invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D
move-result-wide v6
mul-double/2addr v4, v6
add-double/2addr v2, v4
invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D
move-result-wide v2
mul-double/2addr v0, v2
const-wide/high16 v2, 0x4020
const-wide v4, 0x3ffa504816f0068eL
mul-double/2addr v0, v4
mul-int v4, p0, p0
mul-int/lit8 v4, v4, 0x2
int-to-double v4, v4
invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v4
div-double/2addr v0, v4
invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D
move-result-wide v0
const-wide/high16 v4, 0x4000
invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D
move-result-wide v4
div-double/2addr v0, v4
sub-double v0, v2, v0
invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D
move-result-wide v0
cmpl-double v2, p1, p3
if-nez v2, :cond_7a
cmpl-double v2, p1, p3
if-nez v2, :cond_7a
const-wide/high16 v0, 0x4026
:cond_7a
double-to-int v0, v0
return v0
.end method
.method static synthetic a(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/m;
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->h:Lcom/instagram/android/maps/ui/m;
return-object p1
.end method
.method static synthetic a(Lcom/instagram/android/maps/PhotoMapsActivity;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->k()V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ad;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/ad;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;Ljava/lang/Runnable;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/maps/PhotoMapsActivity;Ljava/util/List;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Ljava/util/List;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/maps/PhotoMapsActivity;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Z)V
return-void
.end method
.method private a(Lcom/instagram/android/maps/ad;)V
.registers 5
const/4 v2, 0x0
:goto_1
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_21
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Ljava/util/List;
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/maps/ad;
invoke-virtual {v0}, Lcom/instagram/android/maps/ad;->a()I
move-result v0
invoke-virtual {p1}, Lcom/instagram/android/maps/ad;->a()I
move-result v1
if-lt v0, v1, :cond_21
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Ljava/util/List;
invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
goto :goto_1
:cond_21
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->j:Lcom/instagram/android/maps/ad;
if-eqz v0, :cond_34
invoke-virtual {p1}, Lcom/instagram/android/maps/ad;->a()I
move-result v0
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->j:Lcom/instagram/android/maps/ad;
invoke-virtual {v1}, Lcom/instagram/android/maps/ad;->a()I
move-result v1
if-ge v0, v1, :cond_34
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->j:Lcom/instagram/android/maps/ad;
:cond_34
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_4e
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Ljava/util/List;
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/maps/ad;
invoke-virtual {v0}, Lcom/instagram/android/maps/ad;->a()I
move-result v0
invoke-virtual {p1}, Lcom/instagram/android/maps/ad;->a()I
move-result v1
if-gt v0, v1, :cond_59
:cond_4e
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->j:Lcom/instagram/android/maps/ad;
if-eqz v0, :cond_59
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->d:Ljava/util/List;
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->j:Lcom/instagram/android/maps/ad;
invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V
:cond_59
iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->j:Lcom/instagram/android/maps/ad;
return-void
.end method
.method private a(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;Ljava/lang/Runnable;)V
.registers 8
new-instance v0, Lcom/google/android/maps/GeoPoint;
invoke-virtual {p2}, Lcom/instagram/android/maps/b/h;->d()I
move-result v1
invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->d()I
move-result v2
add-int/2addr v1, v2
div-int/lit8 v1, v1, 0x2
invoke-virtual {p2}, Lcom/instagram/android/maps/b/h;->e()I
move-result v2
invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->e()I
move-result v3
add-int/2addr v2, v3
div-int/lit8 v2, v2, 0x2
invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V
if-eqz p3, :cond_23
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/google/android/maps/MapController;
invoke-virtual {v1, v0, p3}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;)V
:goto_22
return-void
:cond_23
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/google/android/maps/MapController;
invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V
goto :goto_22
.end method
.method private a(Ljava/util/List;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Ljava/util/List;Z)V
return-void
.end method
.method private a(Ljava/util/List;Z)V
.registers 13
const/4 v9, 0x0
const/4 v8, 0x1
invoke-static {}, Lcom/instagram/android/maps/b/b;->a()Lcom/instagram/android/maps/b/b;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/instagram/android/maps/b/b;
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->k:Lcom/instagram/android/maps/ui/a/b;
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/i;->setOnPanListener(Lcom/instagram/android/maps/ui/a/b;)V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_13
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_32
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/instagram/android/maps/b/a;
iget-object v7, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/instagram/android/maps/b/b;
new-instance v0, Lcom/instagram/android/maps/b/h;
invoke-interface {v5}, Lcom/instagram/android/maps/b/a;->b()D
move-result-wide v1
invoke-interface {v5}, Lcom/instagram/android/maps/b/a;->c()D
move-result-wide v3
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/b/h;-><init>(DDLjava/lang/Comparable;)V
invoke-virtual {v7, v0}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/h;)Z
goto :goto_13
:cond_32
iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->u:Ljava/util/List;
invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->i()Z
move-result v0
if-eqz v0, :cond_41
iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->u:Ljava/util/List;
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->u:Ljava/util/List;
invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->l()V
:cond_41
invoke-direct {p0, v8}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Z)V
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_9c
invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->i()Z
move-result v0
if-eqz v0, :cond_a4
if-eqz p2, :cond_9c
new-instance v0, Lcom/instagram/ui/dialog/b;
sget v1, Lcom/facebook/aw;->photo_maps_dialog:I
sget v2, Lcom/facebook/ba;->IgDialogFull:I
invoke-direct {v0, p0, v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;II)V
sget v1, Lcom/facebook/az;->ok:I
new-instance v2, Lcom/instagram/android/maps/ab;
invoke-direct {v2, p0}, Lcom/instagram/android/maps/ab;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v1
new-instance v0, Lcom/instagram/android/maps/ac;
invoke-direct {v0, p0}, Lcom/instagram/android/maps/ac;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
sget v0, Lcom/facebook/av;->dialog_map_title:I
invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget v2, Lcom/facebook/az;->photo_map:I
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V
sget v0, Lcom/facebook/av;->dialog_map_bullet_1:I
invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget v2, Lcom/facebook/az;->popup_photomaps_empty_map_line_1:I
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V
sget v0, Lcom/facebook/av;->dialog_map_bullet_2:I
invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget v2, Lcom/facebook/az;->popup_photomaps_empty_map_line_2:I
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V
invoke-virtual {v1}, Landroid/app/Dialog;->show()V
:goto_9c
:cond_9c
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/a/e;->c()V
return-void
:cond_a4
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;
move-result-object v1
invoke-interface {v1, v0}, Lcom/instagram/user/c/h;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;
move-result-object v1
const/4 v0, 0x0
if-eqz v1, :cond_c5
const-string v0, "@%s"
new-array v2, v8, [Ljava/lang/Object;
invoke-virtual {v1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v1
aput-object v1, v2, v9
invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:cond_c5
if-eqz v0, :cond_eb
sget v1, Lcom/facebook/az;->user_has_no_geotagged_photos:I
new-array v2, v8, [Ljava/lang/Object;
aput-object v0, v2, v9
invoke-virtual {p0, v1, v2}, Lcom/instagram/android/maps/PhotoMapsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_d1
new-instance v1, Lcom/instagram/ui/dialog/b;
invoke-direct {v1, p0}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v0}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;
sget v0, Lcom/facebook/az;->return_to_profile:I
new-instance v2, Lcom/instagram/android/maps/c;
invoke-direct {v2, p0}, Lcom/instagram/android/maps/c;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
invoke-virtual {v1, v0, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
invoke-virtual {v1}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
goto :goto_9c
:cond_eb
sget v0, Lcom/facebook/az;->could_not_load_photo_map_information:I
invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_d1
.end method
.method private a(Z)V
.registers 16
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/instagram/android/maps/b/b;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->e:Lcom/instagram/android/maps/b/i;
if-nez v0, :cond_cc
invoke-static {}, Lcom/instagram/android/maps/b/i;->c()Lcom/instagram/android/maps/b/i;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->e:Lcom/instagram/android/maps/b/i;
:goto_f
:cond_f
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getZoomLevel()I
move-result v0
iget v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->f:I
if-le v0, v1, :cond_11b
const/4 v0, 0x1
move v2, v0
:goto_1b
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getZoomLevel()I
move-result v0
iput v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->f:I
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getOverlays()Ljava/util/List;
move-result-object v7
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getProjection()Lcom/google/android/maps/Projection;
move-result-object v9
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/at;->clustering_distance:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/instagram/android/maps/b/b;
iget-object v3, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->e:Lcom/instagram/android/maps/b/i;
invoke-virtual {v1, v3, v0, v9}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/i;ILcom/google/android/maps/Projection;)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->i:Ljava/util/ArrayList;
const-string v0, "PhotoMap"
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Clusters: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->i:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v4
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->i:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_71
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_124
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/maps/b/f;
new-instance v10, Lcom/instagram/android/maps/ui/ah;
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v3
invoke-direct {v10, v0, v1, v3}, Lcom/instagram/android/maps/ui/ah;-><init>(Lcom/instagram/android/maps/b/f;Lcom/instagram/android/maps/ui/i;Landroid/content/Context;)V
new-instance v1, Lcom/instagram/android/maps/i;
invoke-direct {v1, p0, v10}, Lcom/instagram/android/maps/i;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ui/ah;)V
invoke-virtual {v10, v1}, Lcom/instagram/android/maps/ui/ah;->a(Lcom/instagram/android/maps/ui/a/c;)V
new-instance v1, Lcom/instagram/android/maps/j;
invoke-direct {v1, p0, v10}, Lcom/instagram/android/maps/j;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ui/ah;)V
invoke-virtual {v10, v1}, Lcom/instagram/android/maps/ui/ah;->a(Lcom/instagram/android/maps/ui/a/a;)V
const/4 v3, 0x0
invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v11
:cond_9d
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_1b0
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/maps/Overlay;
instance-of v12, v1, Lcom/instagram/android/maps/ui/ah;
if-eqz v12, :cond_9d
check-cast v1, Lcom/instagram/android/maps/ui/ah;
invoke-virtual {v0}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;
move-result-object v12
invoke-virtual {v1}, Lcom/instagram/android/maps/ui/ah;->a()Lcom/instagram/android/maps/b/f;
move-result-object v13
invoke-virtual {v13}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;
move-result-object v13
invoke-virtual {v12, v13}, Lcom/instagram/android/maps/b/h;->a(Lcom/instagram/android/maps/b/h;)Z
move-result v12
if-eqz v12, :cond_9d
:goto_c1
if-eqz v1, :cond_11f
iput-wide v4, v1, Lcom/instagram/android/maps/ui/ah;->a:J
invoke-virtual {v1, v0}, Lcom/instagram/android/maps/ui/ah;->a(Lcom/instagram/android/maps/b/f;)V
invoke-virtual {v1}, Lcom/instagram/android/maps/ui/ah;->d()V
goto :goto_71
:cond_cc
if-nez p1, :cond_f3
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getZoomLevel()I
move-result v0
const/4 v1, 0x5
if-gt v0, v1, :cond_f3
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->e:Lcom/instagram/android/maps/b/i;
invoke-virtual {v0}, Lcom/instagram/android/maps/b/i;->d()Z
move-result v0
if-nez v0, :cond_e7
invoke-static {}, Lcom/instagram/android/maps/b/i;->c()Lcom/instagram/android/maps/b/i;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->e:Lcom/instagram/android/maps/b/i;
goto/16 :goto_f
:cond_e7
iget v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->f:I
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getZoomLevel()I
move-result v1
if-ne v0, v1, :cond_f
goto/16 :goto_4
:cond_f3
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getMapCenter()Lcom/google/android/maps/GeoPoint;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getLatitudeSpan()I
move-result v1
iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v2}, Lcom/instagram/android/maps/ui/i;->getLongitudeSpan()I
move-result v2
invoke-static {v0, v1, v2}, Lcom/instagram/android/maps/b/i;->a(Lcom/google/android/maps/GeoPoint;II)Lcom/instagram/android/maps/b/i;
move-result-object v0
if-nez p1, :cond_113
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->e:Lcom/instagram/android/maps/b/i;
invoke-virtual {v1, v0}, Lcom/instagram/android/maps/b/i;->b(Lcom/instagram/android/maps/b/i;)Z
move-result v1
if-nez v1, :cond_4
:cond_113
invoke-virtual {v0}, Lcom/instagram/android/maps/b/i;->b()Lcom/instagram/android/maps/b/i;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->e:Lcom/instagram/android/maps/b/i;
goto/16 :goto_f
:cond_11b
const/4 v0, 0x0
move v2, v0
goto/16 :goto_1b
:cond_11f
invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto/16 :goto_71
:cond_124
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
long-to-double v3, v4
invoke-virtual {v0, v3, v4}, Lcom/instagram/android/maps/ui/i;->a(D)V
if-eqz v2, :cond_1a2
invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v10
:cond_130
:goto_130
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1a2
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
move-object v1, v0
check-cast v1, Lcom/instagram/android/maps/ui/ah;
const-wide/16 v2, 0x0
const/4 v6, 0x0
invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v11
:goto_144
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_17c
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/maps/Overlay;
instance-of v4, v0, Lcom/instagram/android/maps/ui/ah;
if-eqz v4, :cond_1ae
check-cast v0, Lcom/instagram/android/maps/ui/ah;
invoke-virtual {v1}, Lcom/instagram/android/maps/ui/ah;->a()Lcom/instagram/android/maps/b/f;
move-result-object v4
invoke-virtual {v4}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;
move-result-object v4
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/ah;->a()Lcom/instagram/android/maps/b/f;
move-result-object v5
invoke-virtual {v5}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;
move-result-object v5
invoke-static {v4, v5}, Lcom/instagram/android/maps/b/h;->a(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)D
move-result-wide v4
const-wide v12, 0x415312d000000000L
cmpg-double v12, v4, v12
if-gez v12, :cond_1ae
if-eqz v6, :cond_179
cmpg-double v12, v4, v2
if-gez v12, :cond_1ae
:cond_179
move-wide v2, v4
:goto_17a
move-object v6, v0
goto :goto_144
:cond_17c
if-eqz v6, :cond_130
invoke-virtual {v6}, Lcom/instagram/android/maps/ui/ah;->a()Lcom/instagram/android/maps/b/f;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;
move-result-object v0
invoke-virtual {v1}, Lcom/instagram/android/maps/ui/ah;->a()Lcom/instagram/android/maps/b/f;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;
invoke-static {v0, v9}, Lcom/instagram/android/maps/b/h;->a(Lcom/instagram/android/maps/b/h;Lcom/google/android/maps/Projection;)D
move-result-wide v2
const-wide/high16 v4, 0x4079
cmpg-double v0, v2, v4
if-gez v0, :cond_130
invoke-virtual {v6}, Lcom/instagram/android/maps/ui/ah;->a()Lcom/instagram/android/maps/b/f;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;
move-result-object v0
iput-object v0, v1, Lcom/instagram/android/maps/ui/ah;->d:Lcom/instagram/android/maps/b/h;
goto :goto_130
:cond_1a2
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0, v8}, Lcom/instagram/android/maps/ui/i;->a(Ljava/util/Collection;)V
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->invalidate()V
goto/16 :goto_4
:cond_1ae
move-object v0, v6
goto :goto_17a
:cond_1b0
move-object v1, v3
goto/16 :goto_c1
.end method
.method static synthetic a(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/b/f;Lcom/instagram/android/maps/ui/ah;)Z
.registers 4
invoke-direct {p0, p1, p2}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/b/f;Lcom/instagram/android/maps/ui/ah;)Z
move-result v0
return v0
.end method
.method private a(Lcom/instagram/android/maps/b/f;Lcom/instagram/android/maps/ui/ah;)Z
.registers 10
const/4 v6, 0x0
invoke-static {p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->c(Lcom/instagram/android/maps/b/f;)Ljava/util/List;
move-result-object v3
invoke-direct {p0, v3}, Lcom/instagram/android/maps/PhotoMapsActivity;->b(Ljava/util/List;)V
new-instance v0, Lcom/instagram/android/maps/ui/m;
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->d()Lcom/instagram/android/maps/ui/af;
move-result-object v2
iget-object v4, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
move-object v1, p0
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/ui/m;-><init>(Landroid/content/Context;Lcom/instagram/android/maps/ui/af;Ljava/util/List;Landroid/view/View;Lcom/instagram/android/maps/ui/ah;)V
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->h:Lcom/instagram/android/maps/ui/m;
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->h:Lcom/instagram/android/maps/ui/m;
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
const/16 v2, 0x33
invoke-virtual {v0, v1, v2, v6, v6}, Lcom/instagram/android/maps/ui/m;->showAtLocation(Landroid/view/View;III)V
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->h:Lcom/instagram/android/maps/ui/m;
new-instance v1, Lcom/instagram/android/maps/n;
invoke-direct {v1, p0}, Lcom/instagram/android/maps/n;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/m;->a(Lcom/instagram/android/maps/ui/d;)V
const/4 v0, 0x1
return v0
.end method
.method private static a(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)Z
.registers 13
const/4 v9, 0x1
const/4 v10, 0x0
new-array v8, v9, [F
invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->c()D
move-result-wide v0
invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->f()D
move-result-wide v2
invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->c()D
move-result-wide v4
invoke-virtual {p0}, Lcom/instagram/android/maps/b/h;->f()D
move-result-wide v6
invoke-static/range {v0 .. v8}, Ldroidbox/android/location/Location;->distanceBetween(DDDD[F)V
aget v0, v8, v10
const-string v1, "PhotoMap"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Distance = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const/high16 v1, 0x43fa
cmpl-float v0, v0, v1
if-lez v0, :cond_35
move v0, v9
:goto_34
return v0
:cond_35
move v0, v10
goto :goto_34
.end method
.method static synthetic b(Lcom/instagram/android/maps/b/f;)Ljava/util/List;
.registers 2
invoke-static {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->c(Lcom/instagram/android/maps/b/f;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method static synthetic b(Lcom/instagram/android/maps/PhotoMapsActivity;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->j()V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/maps/PhotoMapsActivity;Ljava/util/List;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->b(Ljava/util/List;)V
return-void
.end method
.method private b(Ljava/util/List;)V
.registers 5
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/h/b;
iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->s:Ljava/util/Set;
invoke-virtual {v0}, Lcom/instagram/android/h/b;->f()Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_4
:cond_1a
return-void
.end method
.method static synthetic b(Lcom/instagram/android/maps/PhotoMapsActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->p:Z
return p1
.end method
.method private static c(Lcom/instagram/android/maps/b/f;)Ljava/util/List;
.registers 4
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_23
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/maps/b/h;
invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->g()Ljava/lang/Comparable;
move-result-object v0
check-cast v0, Lcom/instagram/android/h/b;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_d
:cond_23
return-object v1
.end method
.method static synthetic c(Lcom/instagram/android/maps/PhotoMapsActivity;)Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->s:Ljava/util/Set;
return-object v0
.end method
.method static synthetic d(Lcom/instagram/android/maps/PhotoMapsActivity;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->u:Ljava/util/List;
return-object v0
.end method
.method public static e()Lcom/instagram/android/maps/PhotoMapsActivity;
.registers 1
sget-object v0, Lcom/instagram/android/maps/PhotoMapsActivity;->w:Lcom/instagram/android/maps/PhotoMapsActivity;
return-object v0
.end method
.method static synthetic e(Lcom/instagram/android/maps/PhotoMapsActivity;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->o:Z
return v0
.end method
.method static synthetic f(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/m;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->h:Lcom/instagram/android/maps/ui/m;
return-object v0
.end method
.method static synthetic g(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
return-object v0
.end method
.method private static g()Ljava/lang/String;
.registers 1
invoke-static {}, Lcom/instagram/d/a;->d()Lcom/instagram/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/d/a;->a()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic h(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->g:Landroid/os/Handler;
return-object v0
.end method
.method private h()V
.registers 7
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->i:Ljava/util/ArrayList;
if-eqz v0, :cond_a4
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->i:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
move-object v1, v2
:goto_c
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/maps/b/f;
if-eqz v1, :cond_2c
invoke-virtual {v0}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;
move-result-object v4
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
invoke-virtual {v1}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;
move-result-object v5
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
if-le v4, v5, :cond_a6
:goto_2c
:cond_2c
move-object v1, v0
goto :goto_c
:cond_2e
if-eqz v1, :cond_a4
invoke-virtual {v1}, Lcom/instagram/android/maps/b/f;->b()Lcom/instagram/android/maps/b/h;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->a()Lcom/google/android/maps/GeoPoint;
move-result-object v2
move-object v4, v2
:goto_39
if-nez v4, :cond_7e
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/instagram/android/maps/b/b;
invoke-virtual {v0}, Lcom/instagram/android/maps/b/b;->d()Lcom/instagram/android/maps/b/h;
move-result-object v0
if-eqz v0, :cond_7e
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/instagram/android/maps/b/b;
invoke-virtual {v0}, Lcom/instagram/android/maps/b/b;->c()Lcom/instagram/android/maps/b/h;
move-result-object v0
if-eqz v0, :cond_7e
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/instagram/android/maps/b/b;
invoke-virtual {v0}, Lcom/instagram/android/maps/b/b;->d()Lcom/instagram/android/maps/b/h;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->d()I
move-result v0
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/instagram/android/maps/b/b;
invoke-virtual {v1}, Lcom/instagram/android/maps/b/b;->c()Lcom/instagram/android/maps/b/h;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/maps/b/h;->d()I
move-result v1
add-int/2addr v0, v1
div-int/lit8 v0, v0, 0x2
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/instagram/android/maps/b/b;
invoke-virtual {v1}, Lcom/instagram/android/maps/b/b;->d()Lcom/instagram/android/maps/b/h;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/maps/b/h;->e()I
move-result v1
iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/instagram/android/maps/b/b;
invoke-virtual {v2}, Lcom/instagram/android/maps/b/b;->c()Lcom/instagram/android/maps/b/h;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/android/maps/b/h;->e()I
move-result v2
add-int/2addr v1, v2
div-int/lit8 v1, v1, 0x2
new-instance v4, Lcom/google/android/maps/GeoPoint;
invoke-direct {v4, v0, v1}, Lcom/google/android/maps/GeoPoint;-><init>(II)V
:cond_7e
if-eqz v4, :cond_85
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/google/android/maps/MapController;
invoke-virtual {v0, v4}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V
:cond_85
new-instance v0, Lcom/instagram/android/maps/ad;
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getLatitudeSpan()I
move-result v2
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getLongitudeSpan()I
move-result v3
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v1}, Lcom/instagram/android/maps/ui/i;->getZoomLevel()I
move-result v5
move-object v1, p0
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/ad;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;IILcom/google/android/maps/GeoPoint;I)V
invoke-direct {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/ad;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->v:Z
return-void
:cond_a4
move-object v4, v2
goto :goto_39
:cond_a6
move-object v0, v1
goto :goto_2c
.end method
.method static synthetic i(Lcom/instagram/android/maps/PhotoMapsActivity;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->h()V
return-void
.end method
.method private i()Z
.registers 3
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method private j()V
.registers 3
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->j()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_1f
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_1f
invoke-direct {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Ljava/util/List;)V
iget-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->v:Z
if-eqz v0, :cond_1b
iget-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->n:Z
if-eqz v0, :cond_1e
:cond_1b
invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->h()V
:goto_1e
:cond_1e
return-void
:cond_1f
iget-boolean v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->n:Z
if-eqz v1, :cond_31
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->n:Z
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->g:Landroid/os/Handler;
new-instance v1, Lcom/instagram/android/maps/y;
invoke-direct {v1, p0}, Lcom/instagram/android/maps/y;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_1e
:cond_31
if-eqz v0, :cond_1e
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-direct {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Ljava/util/List;)V
goto :goto_1e
.end method
.method static synthetic j(Lcom/instagram/android/maps/PhotoMapsActivity;)Z
.registers 2
invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->i()Z
move-result v0
return v0
.end method
.method static synthetic k(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/google/android/maps/MapController;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/google/android/maps/MapController;
return-object v0
.end method
.method private k()V
.registers 4
new-instance v0, Lcom/instagram/android/c/a/b;
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->b()Landroid/support/v4/app/k;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/k;->e()Landroid/support/v4/app/an;
move-result-object v1
new-instance v2, Lcom/instagram/android/maps/z;
invoke-direct {v2, p0}, Lcom/instagram/android/maps/z;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
invoke-direct {v0, p0, v1, v2}, Lcom/instagram/android/c/a/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/c/a/b;->a(Ljava/lang/String;)V
return-void
.end method
.method private l()V
.registers 3
new-instance v0, Lcom/instagram/android/maps/d;
invoke-direct {v0, p0}, Lcom/instagram/android/maps/d;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->l:Lcom/instagram/android/maps/e/d;
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->l:Lcom/instagram/android/maps/e/d;
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Lcom/instagram/android/maps/e/d;)V
new-instance v0, Lcom/instagram/android/maps/e;
invoke-direct {v0, p0}, Lcom/instagram/android/maps/e;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->m:Lcom/instagram/android/maps/e/e;
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->m:Lcom/instagram/android/maps/e/e;
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Lcom/instagram/android/maps/e/e;)V
return-void
.end method
.method static synthetic l(Lcom/instagram/android/maps/PhotoMapsActivity;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->m()V
return-void
.end method
.method static synthetic m(Lcom/instagram/android/maps/PhotoMapsActivity;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->i:Ljava/util/ArrayList;
return-object v0
.end method
.method private m()V
.registers 7
const/4 v3, 0x0
const/4 v5, 0x1
sget v0, Lcom/facebook/az;->edit_photos_on_map:I
invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getString(I)Ljava/lang/String;
move-result-object v1
sget v0, Lcom/facebook/az;->view_all_photos_on_map:I
invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getString(I)Ljava/lang/String;
move-result-object v2
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->c:Lcom/instagram/android/maps/b/b;
if-eqz v0, :cond_3d
invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->i()Z
move-result v0
if-eqz v0, :cond_3d
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/CharSequence;
aput-object v1, v0, v3
aput-object v2, v0, v5
:goto_1f
new-instance v3, Lcom/instagram/ui/dialog/b;
invoke-direct {v3, p0}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
new-instance v4, Lcom/instagram/android/maps/t;
invoke-direct {v4, p0, v1, v0, v2}, Lcom/instagram/android/maps/t;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/String;)V
invoke-virtual {v3, v0, v4}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0, v5}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
:cond_3d
new-array v0, v5, [Ljava/lang/CharSequence;
aput-object v2, v0, v3
goto :goto_1f
.end method
.method public final a()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->n:Z
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getParent()Landroid/app/Activity;
move-result-object v0
check-cast v0, Landroid/support/v4/app/k;
invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;
move-result-object v0
invoke-static {v1, v0}, Lcom/instagram/android/maps/d/l;->a(Ljava/lang/String;Landroid/support/v4/app/s;)V
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 6
const/4 v1, 0x1
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z
move-result v0
if-eqz v0, :cond_16
sget v0, Lcom/facebook/az;->edit_photos_on_map:I
new-instance v1, Lcom/instagram/android/maps/q;
invoke-direct {v1, p0}, Lcom/instagram/android/maps/q;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;
:goto_15
return-void
:cond_16
invoke-interface {p1, v1}, Lcom/instagram/a/a;->a(Z)V
sget v0, Lcom/facebook/az;->photo_map:I
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->f()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_52
sget-object v0, Lcom/instagram/a/j;->b:Lcom/instagram/a/j;
new-instance v1, Lcom/instagram/android/maps/r;
invoke-direct {v1, p0}, Lcom/instagram/android/maps/r;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->a(Lcom/instagram/a/j;Landroid/view/View$OnClickListener;)Landroid/view/View;
:goto_2e
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/as;->grey_medium:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/as;->action_bar_semi_transparent_white:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
sget v3, Lcom/facebook/as;->grey_1:I
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
sget-object v3, Lcom/instagram/a/d;->c:Lcom/instagram/a/d;
invoke-interface {p1, v0, v1, v2, v3}, Lcom/instagram/a/a;->a(IIILcom/instagram/a/d;)V
goto :goto_15
:cond_52
invoke-interface {p1, v1}, Lcom/instagram/a/a;->b(Z)V
iget-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->p:Z
invoke-interface {p1, v0}, Lcom/instagram/a/a;->c(Z)V
goto :goto_2e
.end method
.method public final a(Lcom/instagram/android/maps/b/f;)Z
.registers 16
invoke-virtual {p1}, Lcom/instagram/android/maps/b/f;->e()Lcom/instagram/android/maps/b/h;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/android/maps/b/f;->d()Lcom/instagram/android/maps/b/h;
move-result-object v7
invoke-virtual {p1}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;
move-result-object v9
new-instance v10, Lcom/google/android/maps/GeoPoint;
invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->d()I
move-result v1
invoke-virtual {v7}, Lcom/instagram/android/maps/b/h;->d()I
move-result v2
add-int/2addr v1, v2
div-int/lit8 v1, v1, 0x2
invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->e()I
move-result v2
invoke-virtual {v7}, Lcom/instagram/android/maps/b/h;->e()I
move-result v3
add-int/2addr v2, v3
div-int/lit8 v2, v2, 0x2
invoke-direct {v10, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V
invoke-static {v0, v7}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)Z
move-result v11
if-eqz v11, :cond_76
invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D
move-result-wide v1
invoke-virtual {v7}, Lcom/instagram/android/maps/b/h;->c()D
move-result-wide v3
invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D
move-result-wide v1
invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->c()D
move-result-wide v3
invoke-virtual {v7}, Lcom/instagram/android/maps/b/h;->c()D
move-result-wide v5
invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D
move-result-wide v3
invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->f()D
move-result-wide v5
invoke-virtual {v7}, Lcom/instagram/android/maps/b/h;->f()D
move-result-wide v12
invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->min(DD)D
move-result-wide v5
invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->f()D
move-result-wide v12
invoke-virtual {v7}, Lcom/instagram/android/maps/b/h;->f()D
move-result-wide v7
invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(DD)D
move-result-wide v7
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getWidth()I
move-result v0
invoke-static/range {v0 .. v8}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(IDDDD)I
move-result v0
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/google/android/maps/MapController;
invoke-virtual {v9}, Lcom/instagram/android/maps/b/h;->a()Lcom/google/android/maps/GeoPoint;
move-result-object v2
new-instance v3, Lcom/instagram/android/maps/f;
invoke-direct {v3, p0, v0, v10}, Lcom/instagram/android/maps/f;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;ILcom/google/android/maps/GeoPoint;)V
invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;)V
:goto_75
return v11
:cond_76
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/google/android/maps/MapController;
invoke-virtual {v0, v10}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V
goto :goto_75
.end method
.method public final b()Landroid/support/v4/app/k;
.registers 2
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getParent()Landroid/app/Activity;
move-result-object v0
check-cast v0, Landroid/support/v4/app/k;
return-object v0
.end method
.method public final c()Landroid/support/v4/app/s;
.registers 2
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->b()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;
move-result-object v0
return-object v0
.end method
.method public final d()Lcom/instagram/android/maps/ui/af;
.registers 2
new-instance v0, Lcom/instagram/android/maps/p;
invoke-direct {v0, p0}, Lcom/instagram/android/maps/p;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
return-object v0
.end method
.method public final f()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->u:Ljava/util/List;
return-object v0
.end method
.method protected isRouteDisplayed()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public onBackPressed()V
.registers 4
const-string v0, "BROADCAST_PHOTOMAPS_BACK_PRESSED"
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_19
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->h:Lcom/instagram/android/maps/ui/m;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->h:Lcom/instagram/android/maps/ui/m;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->isShowing()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->h:Lcom/instagram/android/maps/ui/m;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->a()V
:cond_19
:goto_19
return-void
:cond_1a
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z
move-result v0
if-eqz v0, :cond_39
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v1
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z
move-result v0
if-nez v0, :cond_37
const/4 v0, 0x1
:goto_33
invoke-virtual {v1, v0}, Lcom/instagram/android/maps/e/a;->a(Z)V
goto :goto_19
:cond_37
const/4 v0, 0x0
goto :goto_33
:cond_39
invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getParent()Landroid/app/Activity;
move-result-object v1
const-string v2, "back"
invoke-virtual {v0, v1, v2}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V
invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onBackPressed()V
goto :goto_19
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/instagram/android/maps/PhotoMapsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x1
const/4 v3, 0x0
const/4 v2, -0x1
invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V
sget v0, Lcom/facebook/aw;->layout_maps:I
invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->setContentView(I)V
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z
move-result v0
if-eqz v0, :cond_2b
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/instagram/android/maps/e/a;->a(Z)V
:cond_2b
new-instance v0, Lcom/instagram/android/maps/ui/i;
invoke-static {}, Lcom/instagram/android/maps/PhotoMapsActivity;->g()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/instagram/android/maps/ui/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0, v3}, Lcom/instagram/android/maps/ui/i;->setBuiltInZoomControls(Z)V
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
new-instance v1, Lcom/instagram/android/maps/v;
invoke-direct {v1, p0}, Lcom/instagram/android/maps/v;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/i;->setDetachWindowListener(Lcom/instagram/android/maps/ui/l;)V
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0, v4}, Lcom/instagram/android/maps/ui/i;->setClickable(Z)V
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0, v4}, Lcom/instagram/android/maps/ui/i;->setEnabled(Z)V
new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v1, v0}, Lcom/instagram/android/maps/ui/i;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
sget v0, Lcom/facebook/av;->layout_maps_container:I
invoke-virtual {p0, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->a:Lcom/instagram/android/maps/ui/i;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getController()Lcom/google/android/maps/MapController;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/google/android/maps/MapController;
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/google/android/maps/MapController;
new-instance v1, Lcom/google/android/maps/GeoPoint;
const v2, 0x25353cb
const v3, -0x1dede0d
invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V
invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->b:Lcom/google/android/maps/MapController;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I
new-instance v0, Lcom/instagram/android/maps/w;
invoke-direct {v0, p0}, Lcom/instagram/android/maps/w;-><init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
iput-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->k:Lcom/instagram/android/maps/ui/a/b;
invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;
move-result-object v0
const-class v1, Lcom/instagram/feed/d/q;
iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->t:Lcom/instagram/common/h/d;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->a(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;
invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->k()V
const-string v1, " - Lcom/instagram/android/maps/PhotoMapsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 4
const-string v1, " + Lcom/instagram/android/maps/PhotoMapsActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2c
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->l:Lcom/instagram/android/maps/e/d;
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Lcom/instagram/android/maps/e/d;)V
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->m:Lcom/instagram/android/maps/e/e;
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Lcom/instagram/android/maps/e/e;)V
:cond_2c
invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;
move-result-object v0
const-class v1, Lcom/instagram/feed/d/q;
iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->t:Lcom/instagram/common/h/d;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->b(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;
const/4 v0, 0x0
sput-object v0, Lcom/instagram/android/maps/PhotoMapsActivity;->w:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V
const-string v1, " - Lcom/instagram/android/maps/PhotoMapsActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/instagram/android/maps/PhotoMapsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->q:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->h:Lcom/instagram/android/maps/ui/m;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->h:Lcom/instagram/android/maps/ui/m;
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->b()V
:cond_12
invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->r:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V
invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V
const-string v1, " - Lcom/instagram/android/maps/PhotoMapsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 6
const-string v1, " + Lcom/instagram/android/maps/PhotoMapsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v1, "ActionBarService.action_bar_updated"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v1, "ActionBarService.action_bar_refresh_click"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->q:Landroid/content/BroadcastReceiver;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/instagram/a/e;->a(Lcom/instagram/a/b;)V
sput v4, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->f:I
invoke-static {}, Lcom/instagram/android/maps/ui/ah;->h()V
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->i()Z
move-result v0
if-eqz v0, :cond_50
invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->r:Landroid/content/BroadcastReceiver;
new-instance v2, Landroid/content/IntentFilter;
const-string v3, "com.instagram.android.maps.manager.MapReviewed"
invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->j()V
:cond_50
iget-boolean v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->o:Z
if-eqz v0, :cond_5e
iput-boolean v4, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->o:Z
iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity;->u:Ljava/util/List;
invoke-direct {p0, v0, v4}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Ljava/util/List;Z)V
invoke-direct {p0}, Lcom/instagram/android/maps/PhotoMapsActivity;->h()V
:cond_5e
sput-object p0, Lcom/instagram/android/maps/PhotoMapsActivity;->w:Lcom/instagram/android/maps/PhotoMapsActivity;
const-string v1, " - Lcom/instagram/android/maps/PhotoMapsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method