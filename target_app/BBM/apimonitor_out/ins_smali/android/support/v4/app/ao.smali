.class public abstract Landroid/support/v4/app/ao;
.super Ljava/lang/Object;
.source "NotificationCompat.java"
.field  d:Landroid/support/v4/app/ag;
.field  e:Ljava/lang/CharSequence;
.field  f:Ljava/lang/CharSequence;
.field  g:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/ao;->g:Z
return-void
.end method
.method public final a(Landroid/support/v4/app/ag;)V
.registers 3
:goto_0
iget-object v0, p0, Landroid/support/v4/app/ao;->d:Landroid/support/v4/app/ag;
if-eq v0, p1, :cond_19
iput-object p1, p0, Landroid/support/v4/app/ao;->d:Landroid/support/v4/app/ag;
iget-object v0, p0, Landroid/support/v4/app/ao;->d:Landroid/support/v4/app/ag;
if-eqz v0, :cond_19
iget-object p1, p0, Landroid/support/v4/app/ao;->d:Landroid/support/v4/app/ag;
iget-object v0, p1, Landroid/support/v4/app/ag;->l:Landroid/support/v4/app/ao;
if-eq v0, p0, :cond_19
iput-object p0, p1, Landroid/support/v4/app/ag;->l:Landroid/support/v4/app/ao;
iget-object v0, p1, Landroid/support/v4/app/ag;->l:Landroid/support/v4/app/ao;
if-eqz v0, :cond_19
iget-object p0, p1, Landroid/support/v4/app/ag;->l:Landroid/support/v4/app/ao;
goto :goto_0
:cond_19
return-void
.end method