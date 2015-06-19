.class public Lcom/bbm/ui/c/ch;
.super Landroid/app/Fragment;
.source "GroupDetailsFragment.java"
.field private a:Landroid/widget/TextView;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Lcom/bbm/d;
.field private final e:Lcom/bbm/j/k;
.field private final f:Landroid/view/View$OnFocusChangeListener;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Landroid/app/Fragment;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/c/ch;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/ui/c/ch;->c:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/ui/c/ch;->d:Lcom/bbm/d;
new-instance v0, Lcom/bbm/ui/c/ci;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/ci;-><init>(Lcom/bbm/ui/c/ch;)V
iput-object v0, p0, Lcom/bbm/ui/c/ch;->e:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/c/cj;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/cj;-><init>(Lcom/bbm/ui/c/ch;)V
iput-object v0, p0, Lcom/bbm/ui/c/ch;->f:Landroid/view/View$OnFocusChangeListener;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/c/ch;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/ch;->c:Ljava/lang/String;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/c/ch;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/ch;->b:Ljava/lang/String;
return-object p1
.end method
.method static synthetic b(Lcom/bbm/ui/c/ch;)Lcom/bbm/d;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/ch;->d:Lcom/bbm/d;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/c/ch;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/ch;->b:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/c/ch;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/ch;->a:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/c/ch;)V
.registers 6
iget-object v0, p0, Lcom/bbm/ui/c/ch;->a:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_18
iget-object v1, p0, Lcom/bbm/ui/c/ch;->b:Ljava/lang/String;
if-eqz v1, :cond_19
iget-object v1, p0, Lcom/bbm/ui/c/ch;->b:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_19
:cond_18
:goto_18
return-void
:cond_19
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
:try_start_23
const-string v3, "uri"
iget-object v4, p0, Lcom/bbm/ui/c/ch;->c:Ljava/lang/String;
invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v1
const-string v3, "description"
invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/c/ch;->d:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
const-string v1, "group"
invoke-static {v2, v1}, Lcom/bbm/g/an;->a(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/g/cr;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
:try_end_41
.catch Lorg/json/JSONException; {:try_start_23 .. :try_end_41} :catch_42
goto :goto_18
:catch_42
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_18
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
const/4 v3, 0x0
const v0, 0x7f030089
invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/c/ch;->d:Lcom/bbm/d;
const-string v0, "onCreateView"
const-class v2, Lcom/bbm/ui/c/ch;
invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
const v0, 0x7f0a0390
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/c/ch;->a:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/c/ch;->a:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/c/ch;->f:Landroid/view/View$OnFocusChangeListener;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/c/ch;->getArguments()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_4d
invoke-virtual {p0}, Lcom/bbm/ui/c/ch;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v2, "groupUri"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_37
iput-object v0, p0, Lcom/bbm/ui/c/ch;->c:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/c/ch;->c:Ljava/lang/String;
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/bbm/ui/c/ch;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_50
:cond_45
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "GroupDetailsFragment invoked without group uri"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4d
const-string v0, ""
goto :goto_37
:cond_50
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "GDF:Group selected is "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/bbm/ui/c/ch;->c:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v2, v3, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
return-object v1
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/c/ch; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/c/ch;->e:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
const-string v0, "onPause"
const-class v1, Lcom/bbm/ui/c/ch;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
invoke-super {p0}, Landroid/app/Fragment;->onPause()V
const-string v1, " - Lcom/bbm/ui/c/ch; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/c/ch; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Fragment;->onResume()V
const-string v0, "onResume"
const-class v1, Lcom/bbm/ui/c/ch;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/c/ch;->e:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
const-string v1, " - Lcom/bbm/ui/c/ch; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method