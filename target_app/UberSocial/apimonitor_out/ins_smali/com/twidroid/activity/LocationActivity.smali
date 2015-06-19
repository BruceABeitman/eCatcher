.class public Lcom/twidroid/activity/LocationActivity;
.super Landroid/app/Activity;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "longitude"
.field public static final b:Ljava/lang/String; = "latitude"
.field  c:Landroid/widget/ImageView;
.field private d:D
.field private e:D
.field private f:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/activity/LocationActivity;->f:Z
return-void
.end method
.method public static a(I)D
.registers 5
int-to-double v0, p0
const-wide v2, 0x412e848000000000L
div-double/2addr v0, v2
return-wide v0
.end method
.method public static a(D)I
.registers 4
const-wide v0, 0x412e848000000000L
mul-double/2addr v0, p0
double-to-int v0, v0
return v0
.end method
.method public static a(DDII)Ljava/lang/String;
.registers 8
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://maps.googleapis.com/maps/api/staticmap?center="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "&zoom=14&size="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "&sensor=false"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "&markers=color:red%7C"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(Landroid/content/Intent;)V
.registers 5
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_29
const-string v1, "latitude"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_29
const-string v1, "longitude"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_29
const-string v1, "latitude"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D
move-result-wide v1
iput-wide v1, p0, Lcom/twidroid/activity/LocationActivity;->d:D
const-string v1, "longitude"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/activity/LocationActivity;->e:D
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/activity/LocationActivity;->f:Z
:cond_29
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 10
const-string v1, " + Lcom/twidroid/activity/LocationActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03007c
invoke-virtual {p0, v0}, Lcom/twidroid/activity/LocationActivity;->setContentView(I)V
const v0, 0x7f0901a2
invoke-virtual {p0, v0}, Lcom/twidroid/activity/LocationActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/twidroid/activity/LocationActivity;->c:Landroid/widget/ImageView;
invoke-virtual {p0}, Lcom/twidroid/activity/LocationActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/activity/LocationActivity;->a(Landroid/content/Intent;)V
const-string v0, "window"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/LocationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-wide v1, p0, Lcom/twidroid/activity/LocationActivity;->d:D
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/twidroid/activity/LocationActivity;->e:D
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
iget-wide v0, p0, Lcom/twidroid/activity/LocationActivity;->d:D
iget-wide v2, p0, Lcom/twidroid/activity/LocationActivity;->e:D
invoke-virtual {v6}, Landroid/view/Display;->getWidth()I
move-result v4
const/16 v5, 0xc8
invoke-static {p0, v5}, Lcom/twidroid/d/u;->a(Landroid/content/Context;I)I
move-result v5
invoke-static/range {v0 .. v5}, Lcom/twidroid/activity/LocationActivity;->a(DDII)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/LocationActivity;->c:Landroid/widget/ImageView;
new-instance v3, Landroid/os/Handler;
invoke-direct {v3}, Landroid/os/Handler;-><init>()V
invoke-virtual {v6}, Landroid/view/Display;->getWidth()I
move-result v4
const/4 v5, 0x0
move-object v0, v7
invoke-static/range {v0 .. v5}, Lcom/twidroid/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/os/Handler;IZ)V
const-string v1, " - Lcom/twidroid/activity/LocationActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onNewIntent(Landroid/content/Intent;)V
.registers 2
invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V
invoke-direct {p0, p1}, Lcom/twidroid/activity/LocationActivity;->a(Landroid/content/Intent;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/LocationActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
const-string v1, " - Lcom/twidroid/activity/LocationActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method