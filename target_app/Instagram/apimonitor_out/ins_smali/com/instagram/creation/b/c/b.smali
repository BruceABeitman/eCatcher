.class final Lcom/instagram/creation/b/c/b;
.super Ljava/lang/Object;
.source "PendingMediaManager.java"
.implements Lcom/instagram/common/a/f/j;
.field final synthetic b:Lcom/instagram/creation/b/a/b;
.field final synthetic c:Lcom/instagram/creation/b/c/a;
.method constructor <init>(Lcom/instagram/creation/b/c/a;Lcom/instagram/creation/b/a/b;)V
.registers 3
iput-object p1, p0, Lcom/instagram/creation/b/c/b;->c:Lcom/instagram/creation/b/c/a;
iput-object p2, p0, Lcom/instagram/creation/b/c/b;->b:Lcom/instagram/creation/b/a/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(JJ)V
.registers 12
iget-object v0, p0, Lcom/instagram/creation/b/c/b;->b:Lcom/instagram/creation/b/a/b;
const-wide v1, 0x4056800000000000L
const-wide/high16 v3, 0x4024
long-to-double v5, p1
mul-double/2addr v3, v5
long-to-double v5, p3
div-double/2addr v3, v5
add-double/2addr v1, v3
double-to-int v1, v1
invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->c(I)V
return-void
.end method