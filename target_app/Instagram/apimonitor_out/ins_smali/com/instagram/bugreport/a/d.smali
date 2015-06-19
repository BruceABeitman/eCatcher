.class public Lcom/instagram/bugreport/a/d;
.super Ljava/lang/Object;
.source "FlytrapRequestBuilder.java"
.field private final a:Landroid/content/Context;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/bugreport/a/d;->a:Landroid/content/Context;
return-void
.end method
.method public final a()Lcom/instagram/bugreport/a/b;
.registers 9
iget-object v0, p0, Lcom/instagram/bugreport/a/d;->h:Ljava/lang/String;
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1c
new-instance v0, Lcom/instagram/bugreport/a/a;
iget-object v1, p0, Lcom/instagram/bugreport/a/d;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/instagram/bugreport/a/d;->b:Ljava/lang/String;
iget-object v3, p0, Lcom/instagram/bugreport/a/d;->c:Ljava/lang/String;
iget-object v4, p0, Lcom/instagram/bugreport/a/d;->d:Ljava/lang/String;
iget-object v5, p0, Lcom/instagram/bugreport/a/d;->e:Ljava/lang/String;
iget-object v6, p0, Lcom/instagram/bugreport/a/d;->h:Ljava/lang/String;
iget-object v7, p0, Lcom/instagram/bugreport/a/d;->i:Ljava/lang/String;
invoke-direct/range {v0 .. v7}, Lcom/instagram/bugreport/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:goto_1b
return-object v0
:cond_1c
new-instance v0, Lcom/instagram/bugreport/a/h;
iget-object v1, p0, Lcom/instagram/bugreport/a/d;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/instagram/bugreport/a/d;->b:Ljava/lang/String;
iget-object v3, p0, Lcom/instagram/bugreport/a/d;->c:Ljava/lang/String;
iget-object v4, p0, Lcom/instagram/bugreport/a/d;->d:Ljava/lang/String;
iget-object v5, p0, Lcom/instagram/bugreport/a/d;->e:Ljava/lang/String;
iget-object v6, p0, Lcom/instagram/bugreport/a/d;->g:Ljava/lang/String;
iget-object v7, p0, Lcom/instagram/bugreport/a/d;->f:Ljava/lang/String;
invoke-direct/range {v0 .. v7}, Lcom/instagram/bugreport/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1b
.end method
.method public final a(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;
.registers 2
iput-object p1, p0, Lcom/instagram/bugreport/a/d;->b:Ljava/lang/String;
return-object p0
.end method
.method public final b(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;
.registers 2
iput-object p1, p0, Lcom/instagram/bugreport/a/d;->c:Ljava/lang/String;
return-object p0
.end method
.method final c(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;
.registers 2
iput-object p1, p0, Lcom/instagram/bugreport/a/d;->d:Ljava/lang/String;
return-object p0
.end method
.method final d(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;
.registers 2
iput-object p1, p0, Lcom/instagram/bugreport/a/d;->e:Ljava/lang/String;
return-object p0
.end method
.method final e(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;
.registers 2
iput-object p1, p0, Lcom/instagram/bugreport/a/d;->h:Ljava/lang/String;
return-object p0
.end method
.method final f(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;
.registers 2
iput-object p1, p0, Lcom/instagram/bugreport/a/d;->f:Ljava/lang/String;
return-object p0
.end method
.method final g(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;
.registers 2
iput-object p1, p0, Lcom/instagram/bugreport/a/d;->g:Ljava/lang/String;
return-object p0
.end method
.method final h(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;
.registers 2
iput-object p1, p0, Lcom/instagram/bugreport/a/d;->i:Ljava/lang/String;
return-object p0
.end method