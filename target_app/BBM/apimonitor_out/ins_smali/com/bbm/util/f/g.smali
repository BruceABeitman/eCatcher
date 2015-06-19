.class final Lcom/bbm/util/f/g;
.super Ljava/lang/Object;
.source "TimeRangeFormatter.java"
.implements Lcom/bbm/util/f/i;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/content/Context;JJ)Ljava/lang/String;
.registers 9
const v0, 0x10018
const-wide v1, 0x757b12c00L
cmp-long v1, p4, v1
if-lez v1, :cond_f
const v0, 0x10014
:cond_f
invoke-static {p1, p2, p3, v0}, Lcom/bbm/util/be;->a(Landroid/content/Context;JI)Ljava/lang/String;
move-result-object v0
return-object v0
.end method