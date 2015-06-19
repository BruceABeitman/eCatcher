.class public final Lcom/google/b/a/e;
.super Lcom/google/b/a/c;
.source "Equivalence.java"
.implements Ljava/io/Serializable;
.field public static final a:Lcom/google/b/a/e;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/b/a/e;
invoke-direct {v0}, Lcom/google/b/a/e;-><init>()V
sput-object v0, Lcom/google/b/a/e;->a:Lcom/google/b/a/e;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/b/a/c;-><init>()V
return-void
.end method
.method protected final b(Ljava/lang/Object;)I
.registers 3
invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method protected final b(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method