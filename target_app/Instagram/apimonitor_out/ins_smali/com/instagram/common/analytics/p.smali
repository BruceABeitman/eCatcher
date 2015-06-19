.class final Lcom/instagram/common/analytics/p;
.super Ljava/lang/Object;
.source "ExtraBundle.java"
.implements Lcom/instagram/common/analytics/q;
.field private final a:D
.method private constructor <init>(D)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/instagram/common/analytics/p;->a:D
return-void
.end method
.method synthetic constructor <init>(DB)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/instagram/common/analytics/p;-><init>(D)V
return-void
.end method
.method public final a(Lcom/fasterxml/jackson/a/h;)V
.registers 4
iget-wide v0, p0, Lcom/instagram/common/analytics/p;->a:D
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumber(D)V
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 3
iget-wide v0, p0, Lcom/instagram/common/analytics/p;->a:D
invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
move-result-object v0
return-object v0
.end method