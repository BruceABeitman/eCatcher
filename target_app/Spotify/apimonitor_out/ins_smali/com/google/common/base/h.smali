.class final Lcom/google/common/base/h;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/ThreadLocal;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/common/base/h$1;
invoke-direct {v0}, Lcom/google/common/base/h$1;-><init>()V
sput-object v0, Lcom/google/common/base/h;->a:Ljava/lang/ThreadLocal;
return-void
.end method
.method static a()J
.registers 2
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
return-wide v0
.end method