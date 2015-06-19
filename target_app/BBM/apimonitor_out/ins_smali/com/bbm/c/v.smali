.class public final Lcom/bbm/c/v;
.super Ljava/lang/Object;
.source "SetupTracker.java"
.field public final a:Lcom/bbm/j/k;
.field  b:Ljava/lang/Runnable;
.field  c:Z
.field  d:J
.field  e:J
.field  f:J
.field  g:J
.field  h:Landroid/os/Handler;
.field  i:J
.field  j:J
.field  k:Z
.field  l:Lcom/bbm/Alaska;
.method public constructor <init>(Lcom/bbm/Alaska;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/c/w;
invoke-direct {v0, p0}, Lcom/bbm/c/w;-><init>(Lcom/bbm/c/v;)V
iput-object v0, p0, Lcom/bbm/c/v;->a:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/c/x;
invoke-direct {v0, p0}, Lcom/bbm/c/x;-><init>(Lcom/bbm/c/v;)V
iput-object v0, p0, Lcom/bbm/c/v;->b:Ljava/lang/Runnable;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/bbm/c/v;->h:Landroid/os/Handler;
iput-object p1, p0, Lcom/bbm/c/v;->l:Lcom/bbm/Alaska;
return-void
.end method
.method static a()Z
.registers 1
invoke-static {}, Lcom/blackberry/ids/IDS;->ids_get_bbmdn()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method