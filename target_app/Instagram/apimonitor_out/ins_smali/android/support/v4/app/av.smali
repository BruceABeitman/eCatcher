.class public final Landroid/support/v4/app/av;
.super Ljava/lang/Object;
.source "NotificationCompat.java"
.field private static final a:Landroid/support/v4/app/bc;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x14
if-lt v0, v1, :cond_e
new-instance v0, Landroid/support/v4/app/bd;
invoke-direct {v0}, Landroid/support/v4/app/bd;-><init>()V
sput-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;
:goto_d
return-void
:cond_e
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-lt v0, v1, :cond_1c
new-instance v0, Landroid/support/v4/app/bj;
invoke-direct {v0}, Landroid/support/v4/app/bj;-><init>()V
sput-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;
goto :goto_d
:cond_1c
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_2a
new-instance v0, Landroid/support/v4/app/bi;
invoke-direct {v0}, Landroid/support/v4/app/bi;-><init>()V
sput-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;
goto :goto_d
:cond_2a
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_38
new-instance v0, Landroid/support/v4/app/bh;
invoke-direct {v0}, Landroid/support/v4/app/bh;-><init>()V
sput-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;
goto :goto_d
:cond_38
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_46
new-instance v0, Landroid/support/v4/app/bg;
invoke-direct {v0}, Landroid/support/v4/app/bg;-><init>()V
sput-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;
goto :goto_d
:cond_46
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x9
if-lt v0, v1, :cond_54
new-instance v0, Landroid/support/v4/app/bf;
invoke-direct {v0}, Landroid/support/v4/app/bf;-><init>()V
sput-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;
goto :goto_d
:cond_54
new-instance v0, Landroid/support/v4/app/be;
invoke-direct {v0}, Landroid/support/v4/app/be;-><init>()V
sput-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;
goto :goto_d
.end method
.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
.registers 2
sget-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;
invoke-interface {v0, p0}, Landroid/support/v4/app/bc;->a(Landroid/app/Notification;)Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method static synthetic a()Landroid/support/v4/app/bc;
.registers 1
sget-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;
return-object v0
.end method
.method static synthetic a(Landroid/support/v4/app/at;Ljava/util/ArrayList;)V
.registers 2
invoke-static {p0, p1}, Landroid/support/v4/app/av;->b(Landroid/support/v4/app/at;Ljava/util/ArrayList;)V
return-void
.end method
.method static synthetic a(Landroid/support/v4/app/au;Landroid/support/v4/app/bk;)V
.registers 2
invoke-static {p0, p1}, Landroid/support/v4/app/av;->b(Landroid/support/v4/app/au;Landroid/support/v4/app/bk;)V
return-void
.end method
.method private static b(Landroid/support/v4/app/at;Ljava/util/ArrayList;)V
.registers 4
invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_14
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/aw;
invoke-interface {p0, v0}, Landroid/support/v4/app/at;->a(Landroid/support/v4/app/bo;)V
goto :goto_4
:cond_14
return-void
.end method
.method private static b(Landroid/support/v4/app/au;Landroid/support/v4/app/bk;)V
.registers 9
if-eqz p1, :cond_13
instance-of v0, p1, Landroid/support/v4/app/az;
if-eqz v0, :cond_14
check-cast p1, Landroid/support/v4/app/az;
iget-object v0, p1, Landroid/support/v4/app/az;->e:Ljava/lang/CharSequence;
iget-boolean v1, p1, Landroid/support/v4/app/az;->g:Z
iget-object v2, p1, Landroid/support/v4/app/az;->f:Ljava/lang/CharSequence;
iget-object v3, p1, Landroid/support/v4/app/az;->a:Ljava/lang/CharSequence;
invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/bt;->a(Landroid/support/v4/app/au;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
:cond_13
:goto_13
return-void
:cond_14
instance-of v0, p1, Landroid/support/v4/app/bb;
if-eqz v0, :cond_26
check-cast p1, Landroid/support/v4/app/bb;
iget-object v0, p1, Landroid/support/v4/app/bb;->e:Ljava/lang/CharSequence;
iget-boolean v1, p1, Landroid/support/v4/app/bb;->g:Z
iget-object v2, p1, Landroid/support/v4/app/bb;->f:Ljava/lang/CharSequence;
iget-object v3, p1, Landroid/support/v4/app/bb;->a:Ljava/util/ArrayList;
invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/bt;->a(Landroid/support/v4/app/au;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V
goto :goto_13
:cond_26
instance-of v0, p1, Landroid/support/v4/app/ay;
if-eqz v0, :cond_13
check-cast p1, Landroid/support/v4/app/ay;
iget-object v1, p1, Landroid/support/v4/app/ay;->e:Ljava/lang/CharSequence;
iget-boolean v2, p1, Landroid/support/v4/app/ay;->g:Z
iget-object v3, p1, Landroid/support/v4/app/ay;->f:Ljava/lang/CharSequence;
iget-object v4, p1, Landroid/support/v4/app/ay;->a:Landroid/graphics/Bitmap;
iget-object v5, p1, Landroid/support/v4/app/ay;->b:Landroid/graphics/Bitmap;
iget-boolean v6, p1, Landroid/support/v4/app/ay;->c:Z
move-object v0, p0
invoke-static/range {v0 .. v6}, Landroid/support/v4/app/bt;->a(Landroid/support/v4/app/au;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
goto :goto_13
.end method