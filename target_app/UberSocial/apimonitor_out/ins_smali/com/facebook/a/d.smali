.class public Lcom/facebook/a/d;
.super Ljava/lang/Throwable;
.source "SourceFile"
.field private static final a:J = 0x1L
.field private b:I
.field private c:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V
iput p2, p0, Lcom/facebook/a/d;->b:I
iput-object p3, p0, Lcom/facebook/a/d;->c:Ljava/lang/String;
return-void
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/facebook/a/d;->b:I
return v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/a/d;->c:Ljava/lang/String;
return-object v0
.end method