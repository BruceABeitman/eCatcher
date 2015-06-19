.class public final Lcom/bbm/util/d/a;
.super Lcom/bbm/j/u;
.source "DeleteChatDialogMonitor.java"
.field private final a:Lcom/bbm/d/a;
.field private final b:Landroid/content/Context;
.field private final c:Z
.field private final d:Lcom/bbm/util/d/c;
.method public constructor <init>(Landroid/content/Context;ZLcom/bbm/util/d/c;)V
.registers 5
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/d/a;->a:Lcom/bbm/d/a;
iput-object p1, p0, Lcom/bbm/util/d/a;->b:Landroid/content/Context;
iput-boolean p2, p0, Lcom/bbm/util/d/a;->c:Z
iput-object p3, p0, Lcom/bbm/util/d/a;->d:Lcom/bbm/util/d/c;
return-void
.end method
.method static synthetic a(Lcom/bbm/util/d/a;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/util/d/a;->b:Landroid/content/Context;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/util/d/a;)Lcom/bbm/util/d/c;
.registers 2
iget-object v0, p0, Lcom/bbm/util/d/a;->d:Lcom/bbm/util/d/c;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/util/d/a;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/util/d/a;->c:Z
return v0
.end method
.method protected final b()Z
.registers 4
iget-object v0, p0, Lcom/bbm/util/d/a;->a:Lcom/bbm/d/a;
const-string v1, "keepChatHistory"
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
iget-object v1, v0, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_5e
iget-object v0, v0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v1, "value"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/bbm/util/d/a;->d:Lcom/bbm/util/d/c;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/bbm/util/d/a;->d:Lcom/bbm/util/d/c;
invoke-interface {v0}, Lcom/bbm/util/d/c;->a()V
:cond_21
iget-object v1, p0, Lcom/bbm/util/d/a;->b:Landroid/content/Context;
iget-object v2, p0, Lcom/bbm/util/d/a;->b:Landroid/content/Context;
iget-boolean v0, p0, Lcom/bbm/util/d/a;->c:Z
if-eqz v0, :cond_35
const v0, 0x7f0e02cf
:goto_2c
invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
:goto_33
const/4 v0, 0x1
:goto_34
return v0
:cond_35
const v0, 0x7f0e02cd
goto :goto_2c
:cond_39
new-instance v0, Lcom/bbm/ui/b/o;
iget-object v1, p0, Lcom/bbm/util/d/a;->b:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v1, 0x7f0e028b
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V
const v1, 0x7f0e028a
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->e(I)V
const v1, 0x7f0e06a7
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(I)V
new-instance v1, Lcom/bbm/util/d/b;
invoke-direct {v1, p0, v0}, Lcom/bbm/util/d/b;-><init>(Lcom/bbm/util/d/a;Lcom/bbm/ui/b/o;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V
goto :goto_33
:cond_5e
const/4 v0, 0x0
goto :goto_34
.end method