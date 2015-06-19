.class public final Lcom/bbm/util/s;
.super Ljava/lang/Object;
.source "ChannelJoinUtil.java"
.field private static a:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/bbm/util/s;->a:Z
return-void
.end method
.method public static a(Lcom/bbm/d/ec;Landroid/app/Activity;Landroid/widget/ImageView;)V
.registers 4
sget-object v0, Lcom/bbm/d/az;->h:Lcom/bbm/d/az;
invoke-static {p0, p1, p2, v0}, Lcom/bbm/util/s;->c(Lcom/bbm/d/ec;Landroid/app/Activity;Landroid/widget/ImageView;Lcom/bbm/d/az;)V
return-void
.end method
.method public static a(Lcom/bbm/d/ec;Landroid/app/Activity;Landroid/widget/ImageView;Lcom/bbm/d/az;)V
.registers 4
invoke-static {p0, p1, p2, p3}, Lcom/bbm/util/s;->c(Lcom/bbm/d/ec;Landroid/app/Activity;Landroid/widget/ImageView;Lcom/bbm/d/az;)V
return-void
.end method
.method public static a(Lcom/bbm/d/ec;Landroid/widget/ImageView;Landroid/app/Activity;Z)V
.registers 8
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/bbm/d/ec;->I:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v1
invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
new-instance v2, Lcom/bbm/d/ba;
invoke-direct {v2, v1}, Lcom/bbm/d/ba;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Lcom/bbm/d/ba;->a(Ljava/lang/String;)Lcom/bbm/d/ba;
new-instance v1, Lcom/bbm/util/y;
invoke-direct {v1, p2, p0, p1, p3}, Lcom/bbm/util/y;-><init>(Landroid/app/Activity;Lcom/bbm/d/ec;Landroid/widget/ImageView;Z)V
iput-object p2, v1, Lcom/bbm/ui/d/g;->a:Ljava/lang/Object;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v3
iget-object v3, v3, Lcom/bbm/d/a;->c:Lcom/bbm/ui/d/d;
invoke-virtual {v3, v0, v1, p2}, Lcom/bbm/ui/d/d;->a(Ljava/lang/String;Lcom/bbm/ui/d/c;Ljava/lang/Object;)V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
return-void
.end method
.method static synthetic a()Z
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/bbm/util/s;->a:Z
return v0
.end method
.method static synthetic b(Lcom/bbm/d/ec;Landroid/app/Activity;Landroid/widget/ImageView;Lcom/bbm/d/az;)V
.registers 4
invoke-static {p0, p1, p2, p3}, Lcom/bbm/util/s;->d(Lcom/bbm/d/ec;Landroid/app/Activity;Landroid/widget/ImageView;Lcom/bbm/d/az;)V
return-void
.end method
.method private static c(Lcom/bbm/d/ec;Landroid/app/Activity;Landroid/widget/ImageView;Lcom/bbm/d/az;)V
.registers 10
invoke-static {}, Lcom/bbm/util/ac;->b()Z
move-result v0
if-eqz v0, :cond_1a
new-instance v5, Lcom/bbm/ui/b/a;
invoke-direct {v5, p1}, Lcom/bbm/ui/b/a;-><init>(Landroid/app/Activity;)V
new-instance v0, Lcom/bbm/util/t;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
invoke-direct/range {v0 .. v5}, Lcom/bbm/util/t;-><init>(Lcom/bbm/d/ec;Landroid/app/Activity;Landroid/widget/ImageView;Lcom/bbm/d/az;Lcom/bbm/ui/b/a;)V
iput-object v0, v5, Lcom/bbm/ui/b/a;->a:Lcom/bbm/ui/b/f;
invoke-virtual {v5}, Lcom/bbm/ui/b/a;->show()V
:goto_19
return-void
:cond_1a
invoke-static {p0, p1, p2, p3}, Lcom/bbm/util/s;->d(Lcom/bbm/d/ec;Landroid/app/Activity;Landroid/widget/ImageView;Lcom/bbm/d/az;)V
goto :goto_19
.end method
.method private static d(Lcom/bbm/d/ec;Landroid/app/Activity;Landroid/widget/ImageView;Lcom/bbm/d/az;)V
.registers 8
sget-boolean v0, Lcom/bbm/util/s;->a:Z
if-nez v0, :cond_41
const/4 v0, 0x1
sput-boolean v0, Lcom/bbm/util/s;->a:Z
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/bbm/d/ec;->I:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v1
invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
invoke-static {v1, p3}, Lcom/bbm/d/z;->a(Ljava/lang/String;Lcom/bbm/d/az;)Lcom/bbm/d/ay;
move-result-object v1
iget-wide v2, p0, Lcom/bbm/d/ec;->z:J
invoke-virtual {v1, v2, v3}, Lcom/bbm/d/ay;->a(J)Lcom/bbm/d/ay;
invoke-virtual {v1, v0}, Lcom/bbm/d/ay;->a(Ljava/lang/String;)Lcom/bbm/d/ay;
new-instance v2, Lcom/bbm/util/u;
iget-object v3, p0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
invoke-direct {v2, v3, p0, p2, p1}, Lcom/bbm/util/u;-><init>(Ljava/lang/String;Lcom/bbm/d/ec;Landroid/widget/ImageView;Landroid/app/Activity;)V
invoke-virtual {v2, v0, p1}, Lcom/bbm/ui/d/e;->a(Ljava/lang/String;Ljava/lang/Object;)V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
:cond_41
return-void
.end method