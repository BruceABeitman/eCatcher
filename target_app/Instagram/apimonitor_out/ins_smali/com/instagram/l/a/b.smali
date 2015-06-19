.class public final Lcom/instagram/l/a/b;
.super Lcom/instagram/api/k/a/e;
.source "QuickExperimentResponse.java"
.field final a:Ljava/util/List;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/api/k/a/e;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/l/a/b;->a:Ljava/util/List;
return-void
.end method
.method public final a()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/l/a/b;->a:Ljava/util/List;
return-object v0
.end method