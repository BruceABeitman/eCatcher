.class final Lcom/instagram/android/creation/a/am;
.super Ljava/lang/Object;
.source "MetadataFragment.java"
.implements Lcom/instagram/common/c/a;
.field final synthetic a:Lcom/instagram/android/creation/a/ah;
.method private constructor <init>(Lcom/instagram/android/creation/a/ah;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/creation/a/am;->a:Lcom/instagram/android/creation/a/ah;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/creation/a/ah;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/am;-><init>(Lcom/instagram/android/creation/a/ah;)V
return-void
.end method
.method public final a(Landroid/content/Intent;)V
.registers 4
const-string v0, "MetadataFragment.IS_DS_SHARE_ENABLED"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
iget-object v1, p0, Lcom/instagram/android/creation/a/am;->a:Lcom/instagram/android/creation/a/ah;
invoke-virtual {v1, v0}, Lcom/instagram/android/creation/a/ah;->c(Z)V
return-void
.end method