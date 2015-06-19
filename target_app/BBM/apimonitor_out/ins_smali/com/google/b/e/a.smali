.class public final Lcom/google/b/e/a;
.super Ljava/lang/Object;
.source "Ints.java"
.method public static a(J)I
.registers 4
const-wide/32 v0, 0x7fffffff
cmp-long v0, p0, v0
if-lez v0, :cond_b
const v0, 0x7fffffff
:goto_a
return v0
:cond_b
const-wide/32 v0, -0x80000000
cmp-long v0, p0, v0
if-gez v0, :cond_15
const/high16 v0, -0x8000
goto :goto_a
:cond_15
long-to-int v0, p0
goto :goto_a
.end method