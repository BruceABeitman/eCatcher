.class final Lcom/instagram/android/l/a/e;
.super Landroid/os/Handler;
.source "UserListAdapter.java"
.field final synthetic a:Lcom/instagram/android/l/a/a;
.method private constructor <init>(Lcom/instagram/android/l/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/l/a/e;->a:Lcom/instagram/android/l/a/a;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/l/a/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/l/a/e;-><init>(Lcom/instagram/android/l/a/a;)V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/l/a/e;->a:Lcom/instagram/android/l/a/a;
invoke-virtual {v0}, Lcom/instagram/android/l/a/a;->notifyDataSetChanged()V
return-void
.end method