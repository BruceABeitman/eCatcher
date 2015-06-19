.class public final Lcom/facebook/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:I
.field private b:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x400
iput v0, p0, Lcom/facebook/internal/g;->b:I
const/high16 v0, 0x10
iput v0, p0, Lcom/facebook/internal/g;->a:I
return-void
.end method
.method final a()I
.registers 2
iget v0, p0, Lcom/facebook/internal/g;->a:I
return v0
.end method
.method final b()I
.registers 2
iget v0, p0, Lcom/facebook/internal/g;->b:I
return v0
.end method