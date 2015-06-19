.class public final Lcom/instagram/l/a/a;
.super Lcom/instagram/api/k/a/b;
.source "QuickExperimentExposeRequest.java"
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V
iput-object p1, p0, Lcom/instagram/l/a/a;->b:Ljava/lang/String;
iput-object p2, p0, Lcom/instagram/l/a/a;->c:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/l/a/a;->d:Ljava/lang/String;
return-void
.end method
.method protected final a(Lcom/instagram/api/b/a;)V
.registers 4
iget-object v0, p0, Lcom/instagram/l/a/a;->b:Ljava/lang/String;
if-eqz v0, :cond_b
const-string v0, "id"
iget-object v1, p0, Lcom/instagram/l/a/a;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_b
const-string v0, "experiment"
iget-object v1, p0, Lcom/instagram/l/a/a;->c:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/l/a/a;->d:Ljava/lang/String;
if-eqz v0, :cond_1d
const-string v0, "data"
iget-object v1, p0, Lcom/instagram/l/a/a;->d:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_1d
return-void
.end method
.method protected final d_()Ljava/lang/String;
.registers 2
const-string v0, "qe/expose/"
return-object v0
.end method