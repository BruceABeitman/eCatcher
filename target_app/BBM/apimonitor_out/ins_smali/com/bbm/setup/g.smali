.class public final Lcom/bbm/setup/g;
.super Ljava/lang/Object;
.source "DeviceSwitchMonitor.java"
.field private final a:Lcom/bbm/j/k;
.field private b:Z
.field private c:Lcom/bbm/util/cr;
.field private d:Lcom/bbm/s;
.field private e:Lcom/bbm/d/a;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/setup/h;
invoke-direct {v0, p0}, Lcom/bbm/setup/h;-><init>(Lcom/bbm/setup/g;)V
iput-object v0, p0, Lcom/bbm/setup/g;->a:Lcom/bbm/j/k;
iput-boolean v1, p0, Lcom/bbm/setup/g;->b:Z
new-instance v0, Lcom/bbm/util/cr;
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/setup/g;->c:Lcom/bbm/util/cr;
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
iput-object v0, p0, Lcom/bbm/setup/g;->d:Lcom/bbm/s;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/setup/g;->e:Lcom/bbm/d/a;
return-void
.end method