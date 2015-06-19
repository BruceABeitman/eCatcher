.class public abstract Landroid/support/v4/app/bk;
.super Ljava/lang/Object;
.source "NotificationCompat.java"
.field  d:Landroid/support/v4/app/ba;
.field  e:Ljava/lang/CharSequence;
.field  f:Ljava/lang/CharSequence;
.field  g:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/bk;->g:Z
return-void
.end method
.method public final a()Landroid/app/Notification;
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/app/bk;->d:Landroid/support/v4/app/ba;
if-eqz v1, :cond_b
iget-object v0, p0, Landroid/support/v4/app/bk;->d:Landroid/support/v4/app/ba;
invoke-virtual {v0}, Landroid/support/v4/app/ba;->d()Landroid/app/Notification;
move-result-object v0
:cond_b
return-object v0
.end method
.method public final a(Landroid/support/v4/app/ba;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/bk;->d:Landroid/support/v4/app/ba;
if-eq v0, p1, :cond_f
iput-object p1, p0, Landroid/support/v4/app/bk;->d:Landroid/support/v4/app/ba;
iget-object v0, p0, Landroid/support/v4/app/bk;->d:Landroid/support/v4/app/ba;
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v4/app/bk;->d:Landroid/support/v4/app/ba;
invoke-virtual {v0, p0}, Landroid/support/v4/app/ba;->a(Landroid/support/v4/app/bk;)Landroid/support/v4/app/ba;
:cond_f
return-void
.end method