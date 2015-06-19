.class final Lcom/google/common/collect/MapMaker$RemovalNotification;
.super Lcom/google/common/collect/ImmutableEntry;
.source "SourceFile"
.field private final cause:Lcom/google/common/collect/MapMaker$RemovalCause;
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/common/collect/MapMaker$RemovalNotification;->cause:Lcom/google/common/collect/MapMaker$RemovalCause;
return-void
.end method