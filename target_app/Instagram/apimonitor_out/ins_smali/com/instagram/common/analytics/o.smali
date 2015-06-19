.class final Lcom/instagram/common/analytics/o;
.super Ljava/lang/Object;
.source "ExtraBundle.java"
.implements Lcom/instagram/common/analytics/q;
.field private final a:Z
.method private constructor <init>(Z)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p1, p0, Lcom/instagram/common/analytics/o;->a:Z
return-void
.end method
.method synthetic constructor <init>(ZB)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/common/analytics/o;-><init>(Z)V
return-void
.end method
.method public final a(Lcom/fasterxml/jackson/a/h;)V
.registers 3
iget-boolean v0, p0, Lcom/instagram/common/analytics/o;->a:Z
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeBoolean(Z)V
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-boolean v0, p0, Lcom/instagram/common/analytics/o;->a:Z
invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method