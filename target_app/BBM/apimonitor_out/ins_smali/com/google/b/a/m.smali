.class final Lcom/google/b/a/m;
.super Ljava/lang/Object;
.source "Platform.java"
.field private static final a:Ljava/lang/ThreadLocal;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/b/a/n;
invoke-direct {v0}, Lcom/google/b/a/n;-><init>()V
sput-object v0, Lcom/google/b/a/m;->a:Ljava/lang/ThreadLocal;
return-void
.end method
.method static a()J
.registers 2
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
return-wide v0
.end method