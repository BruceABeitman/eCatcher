.class public final Landroid/support/v4/app/bb;
.super Landroid/support/v4/app/bk;
.source "NotificationCompat.java"
.field  a:Ljava/util/ArrayList;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/bk;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/bb;->a:Ljava/util/ArrayList;
return-void
.end method
.method public constructor <init>(Landroid/support/v4/app/ba;)V
.registers 3
invoke-direct {p0}, Landroid/support/v4/app/bk;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/bb;->a:Ljava/util/ArrayList;
invoke-virtual {p0, p1}, Landroid/support/v4/app/bb;->a(Landroid/support/v4/app/ba;)V
return-void
.end method
.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;
.registers 3
iput-object p1, p0, Landroid/support/v4/app/bb;->f:Ljava/lang/CharSequence;
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/bb;->g:Z
return-object p0
.end method
.method public final b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/bb;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-object p0
.end method