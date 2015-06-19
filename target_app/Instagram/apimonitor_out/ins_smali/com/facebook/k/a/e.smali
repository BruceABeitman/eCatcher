.class public final Lcom/facebook/k/a/e;
.super Ljava/lang/Object;
.source "FbHostnameVerifierResult.java"
.field private a:Z
.field private b:Ljava/lang/String;
.field private c:Z
.field private d:Z
.field private e:Z
.field private f:Z
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/facebook/k/a/e;->a:Z
iput-boolean v0, p0, Lcom/facebook/k/a/e;->c:Z
iput-boolean v0, p0, Lcom/facebook/k/a/e;->d:Z
iput-boolean v0, p0, Lcom/facebook/k/a/e;->e:Z
iput-boolean v0, p0, Lcom/facebook/k/a/e;->f:Z
const-string v0, ""
iput-object v0, p0, Lcom/facebook/k/a/e;->g:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/facebook/k/a/e;->h:Ljava/lang/String;
iput-object p1, p0, Lcom/facebook/k/a/e;->b:Ljava/lang/String;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/k/a/e;->g:Ljava/lang/String;
return-void
.end method
.method public final a()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/k/a/e;->a:Z
return v0
.end method
.method public final b()Lcom/facebook/k/a/e;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/k/a/e;->a:Z
return-object p0
.end method
.method public final c()Lcom/facebook/k/a/e;
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/k/a/e;->a:Z
return-object p0
.end method
.method public final d()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/k/a/e;->c:Z
return-void
.end method
.method public final e()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/k/a/e;->d:Z
return-void
.end method
.method public final f()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/k/a/e;->e:Z
return-void
.end method
.method public final g()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/k/a/e;->f:Z
return-void
.end method