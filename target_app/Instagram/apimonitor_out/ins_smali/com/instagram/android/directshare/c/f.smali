.class final Lcom/instagram/android/directshare/c/f;
.super Ljava/lang/Object;
.source "InboxFragment.java"
.implements Lcom/instagram/common/h/d;
.field final synthetic a:Lcom/instagram/android/directshare/c/c;
.method constructor <init>(Lcom/instagram/android/directshare/c/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/c/f;->a:Lcom/instagram/android/directshare/c/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/directshare/c/f;->a:Lcom/instagram/android/directshare/c/c;
invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->n(Lcom/instagram/android/directshare/c/c;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/directshare/c/g;
invoke-direct {v1, p0}, Lcom/instagram/android/directshare/c/g;-><init>(Lcom/instagram/android/directshare/c/f;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method private static a(Lcom/instagram/android/c2dm/a;)Z
.registers 3
const-string v0, "directshare"
iget-object v1, p0, Lcom/instagram/android/c2dm/a;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final bridge synthetic a(Lcom/instagram/common/h/a;)Z
.registers 3
check-cast p1, Lcom/instagram/android/c2dm/a;
invoke-static {p1}, Lcom/instagram/android/directshare/c/f;->a(Lcom/instagram/android/c2dm/a;)Z
move-result v0
return v0
.end method
.method public final synthetic b(Lcom/instagram/common/h/a;)V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/directshare/c/f;->a()V
return-void
.end method