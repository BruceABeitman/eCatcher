.class final Lcom/instagram/common/analytics/r;
.super Ljava/lang/Object;
.source "ExtraBundle.java"
.implements Lcom/instagram/common/analytics/q;
.field private final a:I
.method private constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/instagram/common/analytics/r;->a:I
return-void
.end method
.method synthetic constructor <init>(IB)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/common/analytics/r;-><init>(I)V
return-void
.end method
.method public final a(Lcom/fasterxml/jackson/a/h;)V
.registers 3
iget v0, p0, Lcom/instagram/common/analytics/r;->a:I
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(I)V
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget v0, p0, Lcom/instagram/common/analytics/r;->a:I
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method