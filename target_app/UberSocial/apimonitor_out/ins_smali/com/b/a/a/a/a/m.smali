.class public Lcom/b/a/a/a/a/m;
.super Ljava/lang/Object;
.source "SourceFile"
.field public a:I
.field public b:I
.field public c:I
.field public d:I
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0, v0, v0, v0}, Lcom/b/a/a/a/a/m;-><init>(IIII)V
return-void
.end method
.method public constructor <init>(IIII)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/b/a/a/a/a/m;->a:I
iput p2, p0, Lcom/b/a/a/a/a/m;->b:I
iput p3, p0, Lcom/b/a/a/a/a/m;->c:I
iput p4, p0, Lcom/b/a/a/a/a/m;->d:I
return-void
.end method