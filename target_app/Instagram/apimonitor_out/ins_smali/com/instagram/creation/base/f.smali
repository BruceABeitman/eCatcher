.class public final Lcom/instagram/creation/base/f;
.super Ljava/lang/Object;
.source "MediaScannerUtil.java"
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
invoke-static {p0, v0, p2}, Lcom/instagram/creation/base/f;->a(Landroid/content/Context;Ljava/util/Queue;Ljava/lang/String;)V
return-void
.end method
.method private static a(Landroid/content/Context;Ljava/util/Queue;Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/instagram/creation/base/g;
invoke-direct {v0, p1, p2}, Lcom/instagram/creation/base/g;-><init>(Ljava/util/Queue;Ljava/lang/String;)V
invoke-virtual {v0, p0}, Lcom/instagram/creation/base/g;->a(Landroid/content/Context;)V
return-void
.end method