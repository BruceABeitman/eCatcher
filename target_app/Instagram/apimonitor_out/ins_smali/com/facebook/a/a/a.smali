.class public Lcom/facebook/a/a/a;
.super Ljava/lang/Object;
.source "BaseCrashReporter.java"
.implements Lcom/facebook/a/a/b;
.field protected a:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Application context cannot be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lcom/facebook/a/a/a;->a:Landroid/content/Context;
return-void
.end method
.method public final a()[Ljava/lang/String;
.registers 2
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/String;
return-object v0
.end method
.method public final b()[Ljava/lang/String;
.registers 4
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "-t"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "200"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "-v"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "time"
aput-object v2, v0, v1
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
const-string v0, "application/x-www-form-urlencoded"
return-object v0
.end method
.method public final d()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/facebook/a/a/a;->a:Landroid/content/Context;
return-object v0
.end method