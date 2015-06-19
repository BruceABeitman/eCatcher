.class public final Lcom/facebook/g/j;
.super Ljava/lang/Object;
.source "FileLruCache.java"
.field private a:I
.field private b:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x400
iput v0, p0, Lcom/facebook/g/j;->b:I
const/high16 v0, 0x10
iput v0, p0, Lcom/facebook/g/j;->a:I
return-void
.end method
.method final a()I
.registers 2
iget v0, p0, Lcom/facebook/g/j;->a:I
return v0
.end method
.method final b()I
.registers 2
iget v0, p0, Lcom/facebook/g/j;->b:I
return v0
.end method