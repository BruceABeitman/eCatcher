.class final Lcom/instagram/common/analytics/h;
.super Ljava/lang/Object;
.source "AnalyticsStorage.java"
.field private final a:Ljava/io/File;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/instagram/common/analytics/k;->a(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/analytics/h;->a:Ljava/io/File;
return-void
.end method
.method private a()V
.registers 3
iget-object v0, p0, Lcom/instagram/common/analytics/h;->a:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_17
iget-object v0, p0, Lcom/instagram/common/analytics/h;->a:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
move-result v0
if-nez v0, :cond_17
const-string v0, "AnalyticsStorage"
const-string v1, "Unable to open analytics storage."
invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_17
return-void
.end method
.method public final a(Lcom/instagram/common/analytics/f;)Ljava/io/File;
.registers 5
invoke-direct {p0}, Lcom/instagram/common/analytics/h;->a()V
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/instagram/common/analytics/h;->a:Ljava/io/File;
invoke-static {p1}, Lcom/instagram/common/analytics/k;->a(Lcom/instagram/common/analytics/f;)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_20
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v1
if-nez v1, :cond_20
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object v0, v1, v2
:cond_20
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-virtual {p1, v1, v2}, Lcom/instagram/common/analytics/f;->a(J)V
sget-object v1, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;
sget-object v2, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;
invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/File;Lcom/fasterxml/jackson/a/d;)Lcom/fasterxml/jackson/a/h;
move-result-object v1
invoke-static {p1, v1}, Lcom/instagram/common/analytics/g;->a(Lcom/instagram/common/analytics/f;Lcom/fasterxml/jackson/a/h;)V
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/h;->close()V
return-object v0
.end method