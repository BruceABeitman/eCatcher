.class public abstract Lcom/ford/syncV4/transport/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field protected a:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/ford/syncV4/transport/e;->a:Z
return-void
.end method
.method public abstract a()Lcom/ford/syncV4/transport/TransportType;
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/ford/syncV4/transport/e;->a:Z
return v0
.end method