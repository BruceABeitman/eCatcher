.class final Lcom/instagram/android/directshare/d/aa;
.super Lcom/instagram/api/j/a;
.source "DirectSharePermalinkFragment.java"
.field final synthetic a:Lcom/instagram/android/directshare/d/c;
.method private constructor <init>(Lcom/instagram/android/directshare/d/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/d/aa;->a:Lcom/instagram/android/directshare/d/c;
invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/directshare/d/c;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/directshare/d/aa;-><init>(Lcom/instagram/android/directshare/d/c;)V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/directshare/d/aa;->a:Lcom/instagram/android/directshare/d/c;
invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/directshare/d/aa;->a:Lcom/instagram/android/directshare/d/c;
invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/ui/dialog/a;->a(Landroid/content/Context;)V
:cond_11
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
return-void
.end method