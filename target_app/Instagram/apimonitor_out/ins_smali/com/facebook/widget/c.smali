.class final Lcom/facebook/widget/c;
.super Ljava/lang/Object;
.source "LoginButton.java"
.field private a:Lcom/facebook/cf;
.field private b:Ljava/util/List;
.field private c:Lcom/facebook/g/p;
.field private d:Lcom/facebook/widget/f;
.field private e:Lcom/facebook/cg;
.field private f:Lcom/facebook/cc;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/facebook/cf;->c:Lcom/facebook/cf;
iput-object v0, p0, Lcom/facebook/widget/c;->a:Lcom/facebook/cf;
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/facebook/widget/c;->b:Ljava/util/List;
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/widget/c;->c:Lcom/facebook/g/p;
sget-object v0, Lcom/facebook/cg;->a:Lcom/facebook/cg;
iput-object v0, p0, Lcom/facebook/widget/c;->e:Lcom/facebook/cg;
return-void
.end method
.method static synthetic a(Lcom/facebook/widget/c;)Lcom/facebook/cf;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->a:Lcom/facebook/cf;
return-object v0
.end method
.method private static a(Ljava/util/List;Lcom/facebook/g/p;Lcom/facebook/bo;)Z
.registers 5
sget-object v0, Lcom/facebook/g/p;->b:Lcom/facebook/g/p;
invoke-virtual {v0, p1}, Lcom/facebook/g/p;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
invoke-static {p0}, Lcom/facebook/g/t;->a(Ljava/util/Collection;)Z
move-result v0
if-eqz v0, :cond_16
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Permissions for publish actions cannot be null or empty."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
if-eqz p2, :cond_33
invoke-virtual {p2}, Lcom/facebook/bo;->a()Z
move-result v0
if-eqz v0, :cond_33
invoke-virtual {p2}, Lcom/facebook/bo;->e()Ljava/util/List;
move-result-object v0
invoke-static {p0, v0}, Lcom/facebook/g/t;->a(Ljava/util/Collection;Ljava/util/Collection;)Z
move-result v0
if-nez v0, :cond_33
invoke-static {}, Lcom/facebook/widget/LoginButton;->a()Ljava/lang/String;
move-result-object v0
const-string v1, "Cannot set additional permissions when session is already open."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
:goto_32
return v0
:cond_33
const/4 v0, 0x1
goto :goto_32
.end method
.method static synthetic b(Lcom/facebook/widget/c;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->b:Ljava/util/List;
return-object v0
.end method
.method static synthetic c(Lcom/facebook/widget/c;)Lcom/facebook/cg;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->e:Lcom/facebook/cg;
return-object v0
.end method
.method static synthetic d(Lcom/facebook/widget/c;)Lcom/facebook/g/p;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->c:Lcom/facebook/g/p;
return-object v0
.end method
.method static synthetic e(Lcom/facebook/widget/c;)Lcom/facebook/cc;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->f:Lcom/facebook/cc;
return-object v0
.end method
.method static synthetic f(Lcom/facebook/widget/c;)Lcom/facebook/widget/f;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->d:Lcom/facebook/widget/f;
return-object v0
.end method
.method public final a()Lcom/facebook/widget/f;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->d:Lcom/facebook/widget/f;
return-object v0
.end method
.method public final a(Lcom/facebook/cc;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/c;->f:Lcom/facebook/cc;
return-void
.end method
.method public final a(Lcom/facebook/cf;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/c;->a:Lcom/facebook/cf;
return-void
.end method
.method public final a(Lcom/facebook/cg;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/c;->e:Lcom/facebook/cg;
return-void
.end method
.method public final a(Lcom/facebook/widget/f;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/c;->d:Lcom/facebook/widget/f;
return-void
.end method
.method public final a(Ljava/util/List;Lcom/facebook/bo;)V
.registers 5
sget-object v0, Lcom/facebook/g/p;->b:Lcom/facebook/g/p;
iget-object v1, p0, Lcom/facebook/widget/c;->c:Lcom/facebook/g/p;
invoke-virtual {v0, v1}, Lcom/facebook/g/p;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Cannot call setReadPermissions after setPublishPermissions has been called."
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_12
sget-object v0, Lcom/facebook/g/p;->a:Lcom/facebook/g/p;
invoke-static {p1, v0, p2}, Lcom/facebook/widget/c;->a(Ljava/util/List;Lcom/facebook/g/p;Lcom/facebook/bo;)Z
move-result v0
if-eqz v0, :cond_20
iput-object p1, p0, Lcom/facebook/widget/c;->b:Ljava/util/List;
sget-object v0, Lcom/facebook/g/p;->a:Lcom/facebook/g/p;
iput-object v0, p0, Lcom/facebook/widget/c;->c:Lcom/facebook/g/p;
:cond_20
return-void
.end method
.method public final b()Lcom/facebook/cf;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->a:Lcom/facebook/cf;
return-object v0
.end method
.method public final b(Ljava/util/List;Lcom/facebook/bo;)V
.registers 5
sget-object v0, Lcom/facebook/g/p;->a:Lcom/facebook/g/p;
iget-object v1, p0, Lcom/facebook/widget/c;->c:Lcom/facebook/g/p;
invoke-virtual {v0, v1}, Lcom/facebook/g/p;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Cannot call setPublishPermissions after setReadPermissions has been called."
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_12
sget-object v0, Lcom/facebook/g/p;->b:Lcom/facebook/g/p;
invoke-static {p1, v0, p2}, Lcom/facebook/widget/c;->a(Ljava/util/List;Lcom/facebook/g/p;Lcom/facebook/bo;)Z
move-result v0
if-eqz v0, :cond_20
iput-object p1, p0, Lcom/facebook/widget/c;->b:Ljava/util/List;
sget-object v0, Lcom/facebook/g/p;->b:Lcom/facebook/g/p;
iput-object v0, p0, Lcom/facebook/widget/c;->c:Lcom/facebook/g/p;
:cond_20
return-void
.end method
.method final c()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->b:Ljava/util/List;
return-object v0
.end method
.method public final d()Lcom/facebook/cg;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->e:Lcom/facebook/cg;
return-object v0
.end method
.method public final e()Lcom/facebook/cc;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/c;->f:Lcom/facebook/cc;
return-object v0
.end method