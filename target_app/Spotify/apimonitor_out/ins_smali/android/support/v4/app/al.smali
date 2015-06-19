.class public final Landroid/support/v4/app/al;
.super Ljava/lang/Object;
.source "SourceFile"
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
.field  l:Landroid/support/v4/app/at;
.field  m:Ljava/lang/CharSequence;
.field  n:I
.field  o:I
.field  p:Z
.field  q:Ljava/util/ArrayList;
.field  r:Landroid/app/Notification;
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/al;->q:Ljava/util/ArrayList;
new-instance v0, Landroid/app/Notification;
invoke-direct {v0}, Landroid/app/Notification;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;
iput-object p1, p0, Landroid/support/v4/app/al;->a:Landroid/content/Context;
iget-object v0, p0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iput-wide v1, v0, Landroid/app/Notification;->when:J
iget-object v0, p0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;
const/4 v1, -0x1
iput v1, v0, Landroid/app/Notification;->audioStreamType:I
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/app/al;->j:I
return-void
.end method
.method private a(I)V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;
iget v1, v0, Landroid/app/Notification;->flags:I
or-int/2addr v1, p1
iput v1, v0, Landroid/app/Notification;->flags:I
return-void
.end method
.method public final a()Landroid/support/v4/app/al;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;
const v1, 0x7f02018d
iput v1, v0, Landroid/app/Notification;->icon:I
return-object p0
.end method
.method public final a(III)Landroid/support/v4/app/al;
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;
iput p1, v0, Landroid/app/Notification;->ledARGB:I
iget-object v0, p0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;
iput p2, v0, Landroid/app/Notification;->ledOnMS:I
iget-object v0, p0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;
iput p3, v0, Landroid/app/Notification;->ledOffMS:I
iget-object v0, p0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;
iget v0, v0, Landroid/app/Notification;->ledOnMS:I
if-eqz v0, :cond_2a
iget-object v0, p0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;
iget v0, v0, Landroid/app/Notification;->ledOffMS:I
if-eqz v0, :cond_2a
move v0, v1
:goto_1b
iget-object v3, p0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;
iget-object v4, p0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;
iget v4, v4, Landroid/app/Notification;->flags:I
and-int/lit8 v4, v4, -0x2
if-eqz v0, :cond_2c
:goto_25
or-int v0, v4, v1
iput v0, v3, Landroid/app/Notification;->flags:I
return-object p0
:cond_2a
move v0, v2
goto :goto_1b
:cond_2c
move v1, v2
goto :goto_25
.end method
.method public final a(J)Landroid/support/v4/app/al;
.registers 4
iget-object v0, p0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;
iput-wide p1, v0, Landroid/app/Notification;->when:J
return-object p0
.end method
.method public final a(Landroid/app/PendingIntent;)Landroid/support/v4/app/al;
.registers 2
iput-object p1, p0, Landroid/support/v4/app/al;->d:Landroid/app/PendingIntent;
return-object p0
.end method
.method public final a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/al;
.registers 2
iput-object p1, p0, Landroid/support/v4/app/al;->g:Landroid/graphics/Bitmap;
return-object p0
.end method
.method public final a(Landroid/support/v4/app/at;)Landroid/support/v4/app/al;
.registers 4
iget-object v0, p0, Landroid/support/v4/app/al;->l:Landroid/support/v4/app/at;
if-eq v0, p1, :cond_1b
iput-object p1, p0, Landroid/support/v4/app/al;->l:Landroid/support/v4/app/at;
iget-object v0, p0, Landroid/support/v4/app/al;->l:Landroid/support/v4/app/at;
if-eqz v0, :cond_1b
iget-object v0, p0, Landroid/support/v4/app/al;->l:Landroid/support/v4/app/at;
iget-object v1, v0, Landroid/support/v4/app/at;->d:Landroid/support/v4/app/al;
if-eq v1, p0, :cond_1b
iput-object p0, v0, Landroid/support/v4/app/at;->d:Landroid/support/v4/app/al;
iget-object v1, v0, Landroid/support/v4/app/at;->d:Landroid/support/v4/app/al;
if-eqz v1, :cond_1b
iget-object v1, v0, Landroid/support/v4/app/at;->d:Landroid/support/v4/app/al;
invoke-virtual {v1, v0}, Landroid/support/v4/app/al;->a(Landroid/support/v4/app/at;)Landroid/support/v4/app/al;
:cond_1b
return-object p0
.end method
.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;
.registers 2
iput-object p1, p0, Landroid/support/v4/app/al;->b:Ljava/lang/CharSequence;
return-object p0
.end method
.method public final b()Landroid/support/v4/app/al;
.registers 2
const/4 v0, 0x2
invoke-direct {p0, v0}, Landroid/support/v4/app/al;->a(I)V
return-object p0
.end method
.method public final b(Landroid/app/PendingIntent;)Landroid/support/v4/app/al;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;
iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;
return-object p0
.end method
.method public final b(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;
.registers 2
iput-object p1, p0, Landroid/support/v4/app/al;->c:Ljava/lang/CharSequence;
return-object p0
.end method
.method public final c()Landroid/support/v4/app/al;
.registers 2
const/16 v0, 0x8
invoke-direct {p0, v0}, Landroid/support/v4/app/al;->a(I)V
return-object p0
.end method
.method public final c(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;
iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;
return-object p0
.end method
.method public final d()Landroid/support/v4/app/al;
.registers 2
const/16 v0, 0x10
invoke-direct {p0, v0}, Landroid/support/v4/app/al;->a(I)V
return-object p0
.end method
.method public final e()Landroid/support/v4/app/al;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;
const/4 v1, -0x1
iput v1, v0, Landroid/app/Notification;->defaults:I
iget-object v0, p0, Landroid/support/v4/app/al;->r:Landroid/app/Notification;
iget v1, v0, Landroid/app/Notification;->flags:I
or-int/lit8 v1, v1, 0x1
iput v1, v0, Landroid/app/Notification;->flags:I
return-object p0
.end method
.method public final f()Landroid/support/v4/app/al;
.registers 2
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/app/al;->j:I
return-object p0
.end method
.method public final g()Landroid/app/Notification;
.registers 2
invoke-static {}, Landroid/support/v4/app/ah;->a()Landroid/support/v4/app/an;
move-result-object v0
invoke-interface {v0, p0}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/al;)Landroid/app/Notification;
move-result-object v0
return-object v0
.end method