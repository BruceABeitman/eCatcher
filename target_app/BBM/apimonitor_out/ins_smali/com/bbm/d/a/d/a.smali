.class public final Lcom/bbm/d/a/d/a;
.super Lcom/bbm/d/a/d/b;
.source "BbmdsImageStream.java"
.field private final a:Lcom/bbm/util/cr;
.field private final b:Landroid/content/res/Resources;
.field private final c:Ljava/lang/String;
.field private final d:Lcom/bbm/d/a/d/c;
.method public constructor <init>(Landroid/content/Context;Lcom/bbm/util/cr;Ljava/lang/String;Lcom/bbm/d/a/d/c;)V
.registers 6
invoke-direct {p0}, Lcom/bbm/d/a/d/b;-><init>()V
iput-object p2, p0, Lcom/bbm/d/a/d/a;->a:Lcom/bbm/util/cr;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/a/d/a;->b:Landroid/content/res/Resources;
iput-object p3, p0, Lcom/bbm/d/a/d/a;->c:Ljava/lang/String;
iput-object p4, p0, Lcom/bbm/d/a/d/a;->d:Lcom/bbm/d/a/d/c;
return-void
.end method
.method protected final a([B)V
.registers 4
iget-object v0, p0, Lcom/bbm/d/a/d/a;->d:Lcom/bbm/d/a/d/c;
iget-object v1, p0, Lcom/bbm/d/a/d/a;->c:Ljava/lang/String;
invoke-virtual {v0, v1, p1}, Lcom/bbm/d/a/d/c;->a(Ljava/lang/String;[B)V
new-instance v0, Lcom/bbm/d/fd;
iget-object v1, p0, Lcom/bbm/d/a/d/a;->b:Landroid/content/res/Resources;
invoke-direct {v0, v1, p1}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;[B)V
iget-object v1, p0, Lcom/bbm/d/a/d/a;->a:Lcom/bbm/util/cr;
invoke-virtual {v1, v0}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
return-void
.end method