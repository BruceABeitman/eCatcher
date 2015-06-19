.class public final Lcom/bbm/t;
.super Ljava/lang/Object;
.source "LayoutTimer.java"
.field public final a:Landroid/os/Handler;
.field public b:J
.field public c:J
.field public d:J
.field final e:Ljava/lang/String;
.field public f:Z
.field public final g:Ljava/lang/Runnable;
.method public constructor <init>(Ljava/lang/String;)V
.registers 6
const-wide/16 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/bbm/t;->a:Landroid/os/Handler;
iput-wide v2, p0, Lcom/bbm/t;->b:J
iput-wide v2, p0, Lcom/bbm/t;->c:J
iput-wide v2, p0, Lcom/bbm/t;->d:J
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/t;->f:Z
new-instance v0, Lcom/bbm/u;
invoke-direct {v0, p0}, Lcom/bbm/u;-><init>(Lcom/bbm/t;)V
iput-object v0, p0, Lcom/bbm/t;->g:Ljava/lang/Runnable;
const-wide/16 v0, 0x3e8
iput-wide v0, p0, Lcom/bbm/t;->d:J
iput-object p1, p0, Lcom/bbm/t;->e:Ljava/lang/String;
return-void
.end method