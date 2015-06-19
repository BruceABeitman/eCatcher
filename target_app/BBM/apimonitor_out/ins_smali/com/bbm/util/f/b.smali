.class final Lcom/bbm/util/f/b;
.super Ljava/lang/Object;
.source "TimeRangeFormatter.java"
.implements Lcom/bbm/util/f/i;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/content/Context;JJ)Ljava/lang/String;
.registers 10
const/4 v2, 0x1
const-wide/32 v0, 0xea60
div-long v0, p4, v0
long-to-int v0, v0
if-gtz v0, :cond_11
const v0, 0x7f0e06fe
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_10
return-object v0
:cond_11
if-ne v0, v2, :cond_1b
const v0, 0x7f0e0700
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_10
:cond_1b
const v1, 0x7f0e06ff
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v2, v3
invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_10
.end method