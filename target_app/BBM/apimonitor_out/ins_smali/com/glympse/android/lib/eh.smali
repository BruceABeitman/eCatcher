.class public Lcom/glympse/android/lib/eh;
.super Ljava/lang/Object;
.source "InternalStructs.java"
.implements Lcom/glympse/android/core/GCommon;
.field public nR:J
.field public nS:Ljava/util/Hashtable;
.field public ne:Lcom/glympse/android/hal/GVector;
.field public nh:J
.method public constructor <init>()V
.registers 4
const-wide/16 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v1, p0, Lcom/glympse/android/lib/eh;->nR:J
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/eh;->ne:Lcom/glympse/android/hal/GVector;
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/eh;->nS:Ljava/util/Hashtable;
iput-wide v1, p0, Lcom/glympse/android/lib/eh;->nh:J
return-void
.end method