.class final Lcom/bbm/ui/f/i;
.super Lcom/bbm/j/u;
.source "ChannelNotificationItem.java"
.implements Lcom/bbm/ui/f/e;
.field  a:Lcom/bbm/d/ei;
.field private final b:Landroid/content/Context;
.field private final c:Lcom/bbm/d/a;
.field private final d:Lcom/bbm/ui/f/l;
.field private final e:Ljava/lang/String;
.field private f:Lcom/bbm/d/ec;
.field private g:Lcom/bbm/d/eo;
.field private n:Ljava/lang/String;
.field private o:Lcom/bbm/d/gp;
.field private p:Landroid/graphics/Bitmap;
.field private q:Lcom/bbm/d/ej;
.method public constructor <init>(Lcom/bbm/ui/f/l;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
iput-object p1, p0, Lcom/bbm/ui/f/i;->d:Lcom/bbm/ui/f/l;
iput-object p2, p0, Lcom/bbm/ui/f/i;->e:Ljava/lang/String;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/f/i;->c:Lcom/bbm/d/a;
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/f/i;->b:Landroid/content/Context;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/f/i;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/f/i;->p:Landroid/graphics/Bitmap;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/f/i;)Lcom/bbm/d/ec;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/f/i;->f:Lcom/bbm/d/ec;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/f/i;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/f/i;->b:Landroid/content/Context;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/f/i;)Lcom/bbm/d/ei;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/f/i;->a:Lcom/bbm/d/ei;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/f/i;)Lcom/bbm/ui/f/l;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/f/i;->d:Lcom/bbm/ui/f/l;
return-object v0
.end method
.method private l()Z
.registers 3
iget-object v0, p0, Lcom/bbm/ui/f/i;->q:Lcom/bbm/d/ej;
sget-object v1, Lcom/bbm/d/ej;->c:Lcom/bbm/d/ej;
if-ne v0, v1, :cond_e
iget-object v0, p0, Lcom/bbm/ui/f/i;->g:Lcom/bbm/d/eo;
iget-boolean v0, v0, Lcom/bbm/d/eo;->c:Z
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method protected final b()Z
.registers 7
const/16 v5, 0x7c
const/4 v0, 0x0
iget-object v1, p0, Lcom/bbm/ui/f/i;->c:Lcom/bbm/d/a;
iget-object v2, p0, Lcom/bbm/ui/f/i;->e:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->R(Ljava/lang/String;)Lcom/bbm/d/ei;
move-result-object v1
iput-object v1, p0, Lcom/bbm/ui/f/i;->a:Lcom/bbm/d/ei;
iget-object v1, p0, Lcom/bbm/ui/f/i;->a:Lcom/bbm/d/ei;
iget-object v1, v1, Lcom/bbm/d/ei;->g:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_16
:cond_15
:goto_15
return v0
:cond_16
iget-object v1, p0, Lcom/bbm/ui/f/i;->a:Lcom/bbm/d/ei;
iget-object v1, v1, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;
const-string v2, "postId"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/bbm/ui/f/i;->n:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/f/i;->a:Lcom/bbm/d/ei;
iget-object v1, v1, Lcom/bbm/d/ei;->f:Lcom/bbm/d/ej;
iput-object v1, p0, Lcom/bbm/ui/f/i;->q:Lcom/bbm/d/ej;
iget-object v1, p0, Lcom/bbm/ui/f/i;->c:Lcom/bbm/d/a;
iget-object v2, p0, Lcom/bbm/ui/f/i;->a:Lcom/bbm/d/ei;
iget-object v2, v2, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;
const-string v3, "channelUri"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v1
iput-object v1, p0, Lcom/bbm/ui/f/i;->f:Lcom/bbm/d/ec;
iget-object v1, p0, Lcom/bbm/ui/f/i;->f:Lcom/bbm/d/ec;
iget-object v1, v1, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-eq v1, v2, :cond_15
iget-object v1, p0, Lcom/bbm/ui/f/i;->q:Lcom/bbm/d/ej;
sget-object v2, Lcom/bbm/d/ej;->a:Lcom/bbm/d/ej;
if-eq v1, v2, :cond_9f
iget-object v1, p0, Lcom/bbm/ui/f/i;->a:Lcom/bbm/d/ei;
iget-object v1, v1, Lcom/bbm/d/ei;->d:Lorg/json/JSONObject;
const-string v2, "triggerCommentId"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/f/i;->c:Lcom/bbm/d/a;
new-instance v3, Ljava/lang/StringBuffer;
iget-object v4, p0, Lcom/bbm/ui/f/i;->f:Lcom/bbm/d/ec;
iget-object v4, v4, Lcom/bbm/d/ec;->O:Ljava/lang/String;
invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/f/i;->n:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Lcom/bbm/d/a;->O(Ljava/lang/String;)Lcom/bbm/d/eo;
move-result-object v1
iput-object v1, p0, Lcom/bbm/ui/f/i;->g:Lcom/bbm/d/eo;
iget-object v1, p0, Lcom/bbm/ui/f/i;->g:Lcom/bbm/d/eo;
iget-object v1, v1, Lcom/bbm/d/eo;->q:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-eq v1, v2, :cond_15
invoke-direct {p0}, Lcom/bbm/ui/f/i;->l()Z
move-result v1
if-eqz v1, :cond_9f
iget-object v1, p0, Lcom/bbm/ui/f/i;->c:Lcom/bbm/d/a;
iget-object v2, p0, Lcom/bbm/ui/f/i;->g:Lcom/bbm/d/eo;
iget-object v2, v2, Lcom/bbm/d/eo;->p:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v1
iput-object v1, p0, Lcom/bbm/ui/f/i;->o:Lcom/bbm/d/gp;
iget-object v1, p0, Lcom/bbm/ui/f/i;->o:Lcom/bbm/d/gp;
if-eqz v1, :cond_15
iget-object v1, p0, Lcom/bbm/ui/f/i;->o:Lcom/bbm/d/gp;
iget-object v1, v1, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-eq v1, v2, :cond_15
:cond_9f
invoke-direct {p0}, Lcom/bbm/ui/f/i;->l()Z
move-result v1
if-nez v1, :cond_b2
new-instance v1, Lcom/bbm/ui/f/j;
invoke-direct {v1, p0}, Lcom/bbm/ui/f/j;-><init>(Lcom/bbm/ui/f/i;)V
new-array v0, v0, [Ljava/lang/Void;
invoke-virtual {v1, v0}, Lcom/bbm/util/b;->c([Ljava/lang/Object;)Lcom/bbm/util/b;
:goto_af
const/4 v0, 0x1
goto/16 :goto_15
:cond_b2
iget-object v0, p0, Lcom/bbm/ui/f/i;->c:Lcom/bbm/d/a;
iget-object v1, p0, Lcom/bbm/ui/f/i;->o:Lcom/bbm/d/gp;
iget-object v1, v1, Lcom/bbm/d/gp;->A:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/f/i;->o:Lcom/bbm/d/gp;
iget-object v2, v2, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/fd;
iget-object v0, v0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
invoke-static {v0}, Lcom/bbm/util/b/h;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/f/i;->p:Landroid/graphics/Bitmap;
iget-object v0, p0, Lcom/bbm/ui/f/i;->d:Lcom/bbm/ui/f/l;
iget-object v1, p0, Lcom/bbm/ui/f/i;->a:Lcom/bbm/d/ei;
iget-object v1, v1, Lcom/bbm/d/ei;->b:Ljava/lang/String;
invoke-virtual {p0}, Lcom/bbm/ui/f/i;->k()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/f/l;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_af
.end method
.method public final b_()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/f/i;->f:Lcom/bbm/d/ec;
if-nez v0, :cond_f
const-string v0, "Channel notification has null channel"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, ""
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Lcom/bbm/ui/f/i;->f:Lcom/bbm/d/ec;
iget-object v0, v0, Lcom/bbm/d/ec;->k:Ljava/lang/String;
goto :goto_e
.end method
.method public final c_()Landroid/graphics/Bitmap;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/f/i;->p:Landroid/graphics/Bitmap;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/bbm/ui/f/i;->p:Landroid/graphics/Bitmap;
:goto_6
return-object v0
:cond_7
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/Alaska;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0200d6
invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_6
.end method
.method public final d()Ljava/lang/String;
.registers 7
const-wide/16 v3, 0x1
const/4 v2, 0x1
const/4 v5, 0x0
sget-object v0, Lcom/bbm/ui/f/k;->a:[I
iget-object v1, p0, Lcom/bbm/ui/f/i;->q:Lcom/bbm/d/ej;
invoke-virtual {v1}, Lcom/bbm/d/ej;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_a6
const-string v0, ""
:goto_13
return-object v0
:pswitch_14
iget-object v0, p0, Lcom/bbm/ui/f/i;->a:Lcom/bbm/d/ei;
iget-wide v0, v0, Lcom/bbm/d/ei;->a:J
cmp-long v0, v0, v3
if-gtz v0, :cond_2a
iget-object v0, p0, Lcom/bbm/ui/f/i;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0548
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_13
:cond_2a
iget-object v0, p0, Lcom/bbm/ui/f/i;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0549
new-array v2, v2, [Ljava/lang/Object;
iget-object v3, p0, Lcom/bbm/ui/f/i;->a:Lcom/bbm/d/ei;
iget-wide v3, v3, Lcom/bbm/d/ei;->a:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v2, v5
invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_13
:pswitch_44
iget-object v0, p0, Lcom/bbm/ui/f/i;->a:Lcom/bbm/d/ei;
iget-wide v0, v0, Lcom/bbm/d/ei;->a:J
cmp-long v0, v0, v3
if-gtz v0, :cond_5a
iget-object v0, p0, Lcom/bbm/ui/f/i;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0537
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_13
:cond_5a
iget-object v0, p0, Lcom/bbm/ui/f/i;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0536
new-array v2, v2, [Ljava/lang/Object;
iget-object v3, p0, Lcom/bbm/ui/f/i;->a:Lcom/bbm/d/ei;
iget-wide v3, v3, Lcom/bbm/d/ei;->a:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v2, v5
invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_13
:pswitch_74
iget-object v0, p0, Lcom/bbm/ui/f/i;->a:Lcom/bbm/d/ei;
iget-wide v0, v0, Lcom/bbm/d/ei;->a:J
cmp-long v0, v0, v3
if-gtz v0, :cond_8a
iget-object v0, p0, Lcom/bbm/ui/f/i;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0535
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_13
:cond_8a
iget-object v0, p0, Lcom/bbm/ui/f/i;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0534
new-array v2, v2, [Ljava/lang/Object;
iget-object v3, p0, Lcom/bbm/ui/f/i;->a:Lcom/bbm/d/ei;
iget-wide v3, v3, Lcom/bbm/d/ei;->a:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v2, v5
invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_13
nop
:pswitch_data_a6
.packed-switch 0x1
:pswitch_14
:pswitch_44
:pswitch_74
.end packed-switch
.end method
.method public final f()I
.registers 2
const/4 v0, -0x1
return v0
.end method
.method public final g()Ljava/lang/Long;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/f/i;->a:Lcom/bbm/d/ei;
iget-wide v0, v0, Lcom/bbm/d/ei;->e:J
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
return-object v0
.end method
.method public final h()Landroid/app/PendingIntent;
.registers 10
const/4 v1, 0x0
const/high16 v8, 0x400
iget-object v2, p0, Lcom/bbm/ui/f/i;->b:Landroid/content/Context;
iget-object v3, p0, Lcom/bbm/ui/f/i;->n:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/f/i;->f:Lcom/bbm/d/ec;
iget-object v4, v0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/f/i;->q:Lcom/bbm/d/ej;
sget-object v5, Lcom/bbm/d/ej;->a:Lcom/bbm/d/ej;
if-eq v0, v5, :cond_57
const/4 v0, 0x1
:goto_12
if-eqz v3, :cond_6c
if-eqz v4, :cond_6c
new-instance v5, Landroid/content/Intent;
const-class v6, Lcom/bbm/ui/activities/MainActivity;
invoke-direct {v5, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v6, "active_section"
const v7, 0x7f0a007a
invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v6, "com.bbm.ui.activities.action.SECTION_CHANGED"
invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
invoke-static {v2}, Landroid/support/v4/app/ar;->a(Landroid/content/Context;)Landroid/support/v4/app/ar;
move-result-object v6
invoke-virtual {v6, v5}, Landroid/support/v4/app/ar;->a(Landroid/content/Intent;)Landroid/support/v4/app/ar;
if-eqz v0, :cond_59
new-instance v0, Landroid/content/Intent;
const-class v5, Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "bbm_channel_uri"
invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v2, "PostKey"
invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v2, "startComment"
invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
invoke-virtual {v6, v0}, Landroid/support/v4/app/ar;->a(Landroid/content/Intent;)Landroid/support/v4/app/ar;
:goto_52
invoke-virtual {v6}, Landroid/support/v4/app/ar;->a()Landroid/app/PendingIntent;
move-result-object v0
:goto_56
return-object v0
:cond_57
move v0, v1
goto :goto_12
:cond_59
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "bbm_channel_uri"
invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
invoke-virtual {v6, v0}, Landroid/support/v4/app/ar;->a(Landroid/content/Intent;)Landroid/support/v4/app/ar;
goto :goto_52
:cond_6c
const/4 v0, 0x0
goto :goto_56
.end method
.method public final i()Lcom/bbm/ui/f/f;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final j()I
.registers 2
const/16 v0, 0x20
return v0
.end method
.method final k()Ljava/lang/String;
.registers 3
sget-object v0, Lcom/bbm/ui/f/k;->a:[I
iget-object v1, p0, Lcom/bbm/ui/f/i;->q:Lcom/bbm/d/ej;
invoke-virtual {v1}, Lcom/bbm/d/ej;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_18
const/4 v0, 0x0
:goto_e
return-object v0
:pswitch_f
iget-object v0, p0, Lcom/bbm/ui/f/i;->f:Lcom/bbm/d/ec;
iget-object v0, v0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
goto :goto_e
:pswitch_14
iget-object v0, p0, Lcom/bbm/ui/f/i;->n:Ljava/lang/String;
goto :goto_e
nop
:pswitch_data_18
.packed-switch 0x1
:pswitch_f
:pswitch_14
.end packed-switch
.end method