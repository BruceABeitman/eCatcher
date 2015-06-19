.class final Lcom/facebook/c;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"
.implements Ljava/io/Serializable;
.field  a:Ljava/util/List;
.field  b:Lcom/facebook/j;
.field transient c:Landroid/content/Context;
.field transient d:Lcom/facebook/u;
.field transient e:Lcom/facebook/r;
.field transient f:Lcom/facebook/l;
.field transient g:Z
.field  h:Lcom/facebook/k;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a(Ljava/lang/String;)I
.registers 3
iget-object v0, p0, Lcom/facebook/c;->c:Landroid/content/Context;
invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method static synthetic a(Lcom/facebook/c;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/c;->j()V
return-void
.end method
.method private static b(Ljava/lang/String;)Lcom/facebook/bc;
.registers 7
const/4 v1, 0x0
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string v0, "fields"
const-string v2, "id"
invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "access_token"
invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/facebook/bc;
const-string v2, "me/permissions"
sget-object v4, Lcom/facebook/aj;->a:Lcom/facebook/aj;
move-object v5, v1
invoke-direct/range {v0 .. v5}, Lcom/facebook/bc;-><init>(Lcom/facebook/bo;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/aj;Lcom/facebook/bg;)V
return-object v0
.end method
.method static synthetic b(Lcom/facebook/c;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/c;->i()V
return-void
.end method
.method private b(Lcom/facebook/k;)V
.registers 4
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
iget-object v0, p0, Lcom/facebook/c;->h:Lcom/facebook/k;
if-eqz v0, :cond_f
new-instance v0, Lcom/facebook/z;
const-string v1, "Attempted to authorize while a request is pending."
invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
invoke-virtual {p1}, Lcom/facebook/k;->i()Z
move-result v0
if-eqz v0, :cond_1b
invoke-direct {p0}, Lcom/facebook/c;->f()Z
move-result v0
if-eqz v0, :cond_2
:cond_1b
iput-object p1, p0, Lcom/facebook/c;->h:Lcom/facebook/k;
invoke-direct {p0, p1}, Lcom/facebook/c;->c(Lcom/facebook/k;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/facebook/c;->a:Ljava/util/List;
invoke-virtual {p0}, Lcom/facebook/c;->b()V
goto :goto_2
.end method
.method private static c(Ljava/lang/String;)Lcom/facebook/bc;
.registers 7
const/4 v1, 0x0
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string v0, "fields"
const-string v2, "id"
invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "access_token"
invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/facebook/bc;
const-string v2, "me"
sget-object v4, Lcom/facebook/aj;->a:Lcom/facebook/aj;
move-object v5, v1
invoke-direct/range {v0 .. v5}, Lcom/facebook/bc;-><init>(Lcom/facebook/bo;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/aj;Lcom/facebook/bg;)V
return-object v0
.end method
.method private c(Lcom/facebook/k;)Ljava/util/List;
.registers 5
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p1}, Lcom/facebook/k;->c()Lcom/facebook/cg;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/cg;->a()Z
move-result v2
if-eqz v2, :cond_2d
invoke-virtual {p1}, Lcom/facebook/k;->g()Z
move-result v2
if-nez v2, :cond_25
new-instance v2, Lcom/facebook/m;
invoke-direct {v2, p0}, Lcom/facebook/m;-><init>(Lcom/facebook/c;)V
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v2, Lcom/facebook/p;
invoke-direct {v2, p0}, Lcom/facebook/p;-><init>(Lcom/facebook/c;)V
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_25
new-instance v2, Lcom/facebook/q;
invoke-direct {v2, p0}, Lcom/facebook/q;-><init>(Lcom/facebook/c;)V
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_2d
invoke-virtual {v1}, Lcom/facebook/cg;->b()Z
move-result v1
if-eqz v1, :cond_3b
new-instance v1, Lcom/facebook/v;
invoke-direct {v1, p0}, Lcom/facebook/v;-><init>(Lcom/facebook/c;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_3b
return-object v0
.end method
.method private c(Lcom/facebook/s;)V
.registers 4
iget-object v0, p1, Lcom/facebook/s;->b:Lcom/facebook/a;
if-nez v0, :cond_c
new-instance v0, Lcom/facebook/z;
const-string v1, "Can\'t validate without a token"
invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
invoke-direct {p0, p1}, Lcom/facebook/c;->d(Lcom/facebook/s;)Lcom/facebook/bl;
move-result-object v0
invoke-direct {p0}, Lcom/facebook/c;->i()V
invoke-virtual {v0}, Lcom/facebook/bl;->h()Lcom/facebook/bk;
return-void
.end method
.method private d(Lcom/facebook/s;)Lcom/facebook/bl;
.registers 10
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v2, p1, Lcom/facebook/s;->b:Lcom/facebook/a;
invoke-virtual {v2}, Lcom/facebook/a;->a()Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/facebook/f;
invoke-direct {v3, p0, v0}, Lcom/facebook/f;-><init>(Lcom/facebook/c;Ljava/util/ArrayList;)V
iget-object v4, p0, Lcom/facebook/c;->h:Lcom/facebook/k;
invoke-virtual {v4}, Lcom/facebook/k;->h()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/facebook/c;->c(Ljava/lang/String;)Lcom/facebook/bc;
move-result-object v5
invoke-virtual {v5, v3}, Lcom/facebook/bc;->a(Lcom/facebook/bg;)V
invoke-static {v2}, Lcom/facebook/c;->c(Ljava/lang/String;)Lcom/facebook/bc;
move-result-object v2
invoke-virtual {v2, v3}, Lcom/facebook/bc;->a(Lcom/facebook/bg;)V
invoke-static {v4}, Lcom/facebook/c;->b(Ljava/lang/String;)Lcom/facebook/bc;
move-result-object v3
new-instance v4, Lcom/facebook/g;
invoke-direct {v4, p0, v1}, Lcom/facebook/g;-><init>(Lcom/facebook/c;Ljava/util/ArrayList;)V
invoke-virtual {v3, v4}, Lcom/facebook/bc;->a(Lcom/facebook/bg;)V
new-instance v4, Lcom/facebook/bl;
const/4 v6, 0x3
new-array v6, v6, [Lcom/facebook/bc;
const/4 v7, 0x0
aput-object v5, v6, v7
const/4 v5, 0x1
aput-object v2, v6, v5
const/4 v2, 0x2
aput-object v3, v6, v2
invoke-direct {v4, v6}, Lcom/facebook/bl;-><init>([Lcom/facebook/bc;)V
iget-object v2, p0, Lcom/facebook/c;->h:Lcom/facebook/k;
invoke-virtual {v2}, Lcom/facebook/k;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v2}, Lcom/facebook/bl;->a(Ljava/lang/String;)V
new-instance v2, Lcom/facebook/h;
invoke-direct {v2, p0, v0, p1, v1}, Lcom/facebook/h;-><init>(Lcom/facebook/c;Ljava/util/ArrayList;Lcom/facebook/s;Ljava/util/ArrayList;)V
invoke-virtual {v4, v2}, Lcom/facebook/bl;->a(Lcom/facebook/bm;)V
return-object v4
.end method
.method private d()V
.registers 3
iget-object v0, p0, Lcom/facebook/c;->h:Lcom/facebook/k;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;
if-nez v0, :cond_10
:cond_8
new-instance v0, Lcom/facebook/z;
const-string v1, "Attempted to continue authorization without a pending request."
invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;
invoke-virtual {v0}, Lcom/facebook/j;->a()Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;
invoke-virtual {v0}, Lcom/facebook/j;->c()V
invoke-direct {p0}, Lcom/facebook/c;->h()Z
:cond_20
return-void
.end method
.method private e(Lcom/facebook/s;)V
.registers 3
iget-object v0, p0, Lcom/facebook/c;->e:Lcom/facebook/r;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/facebook/c;->e:Lcom/facebook/r;
invoke-interface {v0, p1}, Lcom/facebook/r;->a(Lcom/facebook/s;)V
:cond_9
return-void
.end method
.method private e()Z
.registers 2
iget-object v0, p0, Lcom/facebook/c;->h:Lcom/facebook/k;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private f()Z
.registers 4
const/4 v0, 0x1
iget-boolean v1, p0, Lcom/facebook/c;->g:Z
if-eqz v1, :cond_6
:goto_5
return v0
:cond_6
const-string v1, "android.permission.INTERNET"
invoke-direct {p0, v1}, Lcom/facebook/c;->a(Ljava/lang/String;)I
move-result v1
if-eqz v1, :cond_27
iget-object v0, p0, Lcom/facebook/c;->c:Landroid/content/Context;
sget v1, Lcom/facebook/az;->com_facebook_internet_permission_error_title:I
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/c;->c:Landroid/content/Context;
sget v2, Lcom/facebook/az;->com_facebook_internet_permission_error_message:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/facebook/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/s;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/facebook/c;->b(Lcom/facebook/s;)V
const/4 v0, 0x0
goto :goto_5
:cond_27
iput-boolean v0, p0, Lcom/facebook/c;->g:Z
goto :goto_5
.end method
.method private g()V
.registers 3
const-string v0, "Login attempt failed."
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/facebook/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/s;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/facebook/c;->b(Lcom/facebook/s;)V
return-void
.end method
.method private h()Z
.registers 3
iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;
invoke-virtual {v0}, Lcom/facebook/j;->b()Z
move-result v0
if-eqz v0, :cond_10
invoke-direct {p0}, Lcom/facebook/c;->f()Z
move-result v0
if-nez v0, :cond_10
const/4 v0, 0x0
:goto_f
return v0
:cond_10
iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;
iget-object v1, p0, Lcom/facebook/c;->h:Lcom/facebook/k;
invoke-virtual {v0, v1}, Lcom/facebook/j;->a(Lcom/facebook/k;)Z
move-result v0
goto :goto_f
.end method
.method private i()V
.registers 2
iget-object v0, p0, Lcom/facebook/c;->f:Lcom/facebook/l;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/facebook/c;->f:Lcom/facebook/l;
invoke-interface {v0}, Lcom/facebook/l;->a()V
:cond_9
return-void
.end method
.method private j()V
.registers 2
iget-object v0, p0, Lcom/facebook/c;->f:Lcom/facebook/l;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/facebook/c;->f:Lcom/facebook/l;
invoke-interface {v0}, Lcom/facebook/l;->b()V
:cond_9
return-void
.end method
.method final a()V
.registers 2
iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;
invoke-virtual {v0}, Lcom/facebook/j;->c()V
:cond_9
return-void
.end method
.method final a(Landroid/app/Activity;)V
.registers 3
iput-object p1, p0, Lcom/facebook/c;->c:Landroid/content/Context;
new-instance v0, Lcom/facebook/d;
invoke-direct {v0, p0, p1}, Lcom/facebook/d;-><init>(Lcom/facebook/c;Landroid/app/Activity;)V
iput-object v0, p0, Lcom/facebook/c;->d:Lcom/facebook/u;
return-void
.end method
.method final a(Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/facebook/c;->c:Landroid/content/Context;
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/c;->d:Lcom/facebook/u;
return-void
.end method
.method final a(Lcom/facebook/k;)V
.registers 3
invoke-direct {p0}, Lcom/facebook/c;->e()Z
move-result v0
if-eqz v0, :cond_a
invoke-direct {p0}, Lcom/facebook/c;->d()V
:goto_9
return-void
:cond_a
invoke-direct {p0, p1}, Lcom/facebook/c;->b(Lcom/facebook/k;)V
goto :goto_9
.end method
.method final a(Lcom/facebook/l;)V
.registers 2
iput-object p1, p0, Lcom/facebook/c;->f:Lcom/facebook/l;
return-void
.end method
.method final a(Lcom/facebook/r;)V
.registers 2
iput-object p1, p0, Lcom/facebook/c;->e:Lcom/facebook/r;
return-void
.end method
.method final a(Lcom/facebook/s;)V
.registers 3
iget-object v0, p1, Lcom/facebook/s;->b:Lcom/facebook/a;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/facebook/c;->h:Lcom/facebook/k;
invoke-virtual {v0}, Lcom/facebook/k;->i()Z
move-result v0
if-eqz v0, :cond_10
invoke-direct {p0, p1}, Lcom/facebook/c;->c(Lcom/facebook/s;)V
:goto_f
return-void
:cond_10
invoke-virtual {p0, p1}, Lcom/facebook/c;->b(Lcom/facebook/s;)V
goto :goto_f
.end method
.method final a(IILandroid/content/Intent;)Z
.registers 5
iget-object v0, p0, Lcom/facebook/c;->h:Lcom/facebook/k;
invoke-virtual {v0}, Lcom/facebook/k;->d()I
move-result v0
if-ne p1, v0, :cond_f
iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;
invoke-virtual {v0, p2, p3}, Lcom/facebook/j;->a(ILandroid/content/Intent;)Z
move-result v0
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method final b()V
.registers 3
:cond_0
iget-object v0, p0, Lcom/facebook/c;->a:Ljava/util/List;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/facebook/c;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_1e
iget-object v0, p0, Lcom/facebook/c;->a:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/j;
iput-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;
invoke-direct {p0}, Lcom/facebook/c;->h()Z
move-result v0
if-eqz v0, :cond_0
:goto_1d
:cond_1d
return-void
:cond_1e
iget-object v0, p0, Lcom/facebook/c;->h:Lcom/facebook/k;
if-eqz v0, :cond_1d
invoke-direct {p0}, Lcom/facebook/c;->g()V
goto :goto_1d
.end method
.method final b(Lcom/facebook/s;)V
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/c;->a:Ljava/util/List;
iput-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/j;
iput-object v0, p0, Lcom/facebook/c;->h:Lcom/facebook/k;
invoke-direct {p0, p1}, Lcom/facebook/c;->e(Lcom/facebook/s;)V
return-void
.end method
.method final c()Lcom/facebook/u;
.registers 2
iget-object v0, p0, Lcom/facebook/c;->d:Lcom/facebook/u;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/facebook/c;->d:Lcom/facebook/u;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/facebook/c;->h:Lcom/facebook/k;
if-eqz v0, :cond_11
new-instance v0, Lcom/facebook/e;
invoke-direct {v0, p0}, Lcom/facebook/e;-><init>(Lcom/facebook/c;)V
goto :goto_6
:cond_11
const/4 v0, 0x0
goto :goto_6
.end method