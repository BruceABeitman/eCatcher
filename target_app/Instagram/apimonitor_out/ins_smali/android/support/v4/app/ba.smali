.class public final Landroid/support/v4/app/ba;
.super Ljava/lang/Object;
.source "NotificationCompat.java"
.field  a:Landroid/content/Context;
.field  b:Ljava/lang/CharSequence;
.field  c:Ljava/lang/CharSequence;
.field  d:Landroid/app/PendingIntent;
.field  e:Landroid/app/PendingIntent;
.field  f:Landroid/widget/RemoteViews;
.field  g:Landroid/graphics/Bitmap;
.field  h:Ljava/lang/CharSequence;
.field  i:I
.field  j:I
.field  k:Z
.field  l:Landroid/support/v4/app/bk;
.field  m:Ljava/lang/CharSequence;
.field  n:I
.field  o:I
.field  p:Z
.field  q:Ljava/lang/String;
.field  r:Z
.field  s:Ljava/lang/String;
.field  t:Ljava/util/ArrayList;
.field  u:Z
.field  v:Landroid/os/Bundle;
.field  w:Landroid/app/Notification;
.method public constructor <init>(Landroid/content/Context;)V
.registers 6
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/ba;->t:Ljava/util/ArrayList;
iput-boolean v3, p0, Landroid/support/v4/app/ba;->u:Z
new-instance v0, Landroid/app/Notification;
invoke-direct {v0}, Landroid/app/Notification;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;
iput-object p1, p0, Landroid/support/v4/app/ba;->a:Landroid/content/Context;
iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iput-wide v1, v0, Landroid/app/Notification;->when:J
iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;
const/4 v1, -0x1
iput v1, v0, Landroid/app/Notification;->audioStreamType:I
iput v3, p0, Landroid/support/v4/app/ba;->j:I
return-void
.end method
.method private a(IZ)V
.registers 6
if-eqz p2, :cond_a
iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;
iget v1, v0, Landroid/app/Notification;->flags:I
or-int/2addr v1, p1
iput v1, v0, Landroid/app/Notification;->flags:I
:goto_9
return-void
:cond_a
iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;
iget v1, v0, Landroid/app/Notification;->flags:I
xor-int/lit8 v2, p1, -0x1
and-int/2addr v1, v2
iput v1, v0, Landroid/app/Notification;->flags:I
goto :goto_9
.end method
.method public final a()Landroid/support/v4/app/ba;
.registers 3
const/16 v0, 0x10
const/4 v1, 0x1
invoke-direct {p0, v0, v1}, Landroid/support/v4/app/ba;->a(IZ)V
return-object p0
.end method
.method public final a(I)Landroid/support/v4/app/ba;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;
iput p1, v0, Landroid/app/Notification;->icon:I
return-object p0
.end method
.method public final a(J)Landroid/support/v4/app/ba;
.registers 4
iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;
iput-wide p1, v0, Landroid/app/Notification;->when:J
return-object p0
.end method
.method public final a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ba;
.registers 2
iput-object p1, p0, Landroid/support/v4/app/ba;->d:Landroid/app/PendingIntent;
return-object p0
.end method
.method public final a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ba;
.registers 2
iput-object p1, p0, Landroid/support/v4/app/ba;->g:Landroid/graphics/Bitmap;
return-object p0
.end method
.method public final a(Landroid/support/v4/app/bk;)Landroid/support/v4/app/ba;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/ba;->l:Landroid/support/v4/app/bk;
if-eq v0, p1, :cond_f
iput-object p1, p0, Landroid/support/v4/app/ba;->l:Landroid/support/v4/app/bk;
iget-object v0, p0, Landroid/support/v4/app/ba;->l:Landroid/support/v4/app/bk;
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v4/app/ba;->l:Landroid/support/v4/app/bk;
invoke-virtual {v0, p0}, Landroid/support/v4/app/bk;->a(Landroid/support/v4/app/ba;)V
:cond_f
return-object p0
.end method
.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;
.registers 2
iput-object p1, p0, Landroid/support/v4/app/ba;->b:Ljava/lang/CharSequence;
return-object p0
.end method
.method public final a(Z)Landroid/support/v4/app/ba;
.registers 3
const/4 v0, 0x2
invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ba;->a(IZ)V
return-object p0
.end method
.method public final b()Landroid/support/v4/app/ba;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/ba;->u:Z
return-object p0
.end method
.method public final b(Landroid/app/PendingIntent;)Landroid/support/v4/app/ba;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;
iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;
return-object p0
.end method
.method public final b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;
.registers 2
iput-object p1, p0, Landroid/support/v4/app/ba;->c:Ljava/lang/CharSequence;
return-object p0
.end method
.method public final c()Landroid/support/v4/app/ba;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;
const/4 v1, 0x1
iput v1, v0, Landroid/app/Notification;->defaults:I
return-object p0
.end method
.method public final c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;
.registers 2
iput-object p1, p0, Landroid/support/v4/app/ba;->h:Ljava/lang/CharSequence;
return-object p0
.end method
.method public final d()Landroid/app/Notification;
.registers 2
invoke-static {}, Landroid/support/v4/app/av;->a()Landroid/support/v4/app/bc;
move-result-object v0
invoke-interface {v0, p0}, Landroid/support/v4/app/bc;->a(Landroid/support/v4/app/ba;)Landroid/app/Notification;
move-result-object v0
return-object v0
.end method
.method public final d(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;
iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;
return-object p0
.end method