.class public final Lcom/bbm/ui/c/ew;
.super Lcom/bbm/ui/c/fh;
.source "OwnProfileUpdatesFragment.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/c/fh;-><init>()V
return-void
.end method
.method protected final a(Ljava/lang/String;)Lcom/bbm/ui/c/fk;
.registers 5
new-instance v0, Lcom/bbm/ui/c/ex;
invoke-virtual {p0}, Lcom/bbm/ui/c/ew;->getActivity()Landroid/app/Activity;
move-result-object v1
invoke-virtual {p0, p1}, Lcom/bbm/ui/c/ew;->b(Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v2
invoke-direct {v0, p0, v1, v2}, Lcom/bbm/ui/c/ex;-><init>(Lcom/bbm/ui/c/ew;Landroid/content/Context;Lcom/bbm/j/r;)V
return-object v0
.end method